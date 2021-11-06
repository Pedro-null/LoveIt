<#--  footer.ftl 已完成  -->
<#if (settings.footer_enable) != false>
    <footer class="footer">
        <div class="footer-container">
            
            <#--  Custom Content  -->
                <div class="footer-line">
                    ${settings.footer_custom!}
                </div>

            <#--  Hugo and LoveIt  -->
            <#if (settings.footer_halo) != false>
                <div class="footer-line">
                    <a href="https://gohugo.io/" target="_blank" rel="noopener noreffer" title="Halo ${version!}">Hugo</a>
                    <a href="https://github.com/dillonzq/LoveIt" target="_blank" rel="noopener noreffer" title="LoveIt ${theme.version!}"><i class="far fa-kiss-wink-heart fa-fw"></i> LoveIt</a>
                </div>
            </#if>

            <div class="footer-line">
                <#--  Copyright year  -->
                <#if (settings.footer_copyright) != false>
                    <i class="far fa-copyright fa-fw"></i>
                        <span itemprop="copyrightYear">
                            <#if (settings.footer_since?default(.now?string('yyyy')))?eval lt (.now?string('yyyy')?eval)> ${settings.footer_since!} - </#if> ${.now?string('yyyy')}
                        </span>
                <#else>
                        <span itemprop="copyrightYear">${.now?string('yyyy')}</span>
                </#if>

                <#--  Author  -->
                <#if (settings.footer_author) != false>
                    <span class="author" itemprop="copyrightHolder">&nbsp;<a href="${blog_url!}" target="_blank">${user.nickname!}</a></span>
                </#if>

                <#--  License  -->
                <#if (settings.footer_license)??>
                    &nbsp;|&nbsp;<span class="license">${settings.footer_license!}</span>
                </#if>

                <#--  ICP  -->
                <#if (settings.footer_icp)??>
                    <span class="icp-splitter">&nbsp;|&nbsp;</span><br class="icp-br"/>
                    <span class="icp">${settings.footer_icp!}</span>
                </#if>
            </div>
        </div>
    </footer>

    <!-- test music module -->
    <#--  Music  -->
    <#if (settings.footer_music) != false>
        <#--  APlayer  -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/aplayer@1.10.1/dist/APlayer.min.css">
        <script src="https://cdn.jsdelivr.net/npm/aplayer@1.10.1/dist/APlayer.min.js"></script>
        <script src="https://unpkg.com/meting@2.0.1/dist/Meting.min.js"></script>

        <#--  Custom music list  -->
        ${settings.footer_musiclist!}
    </#if>
    
</#if>
