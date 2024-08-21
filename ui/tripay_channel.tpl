{include file="user-ui/header.tpl"}
<div class="row">
    <div class="col-sm-12">
            <div class="panel panel-info panel-hovered">
            <div class="panel-heading">Tripay {Lang::T('Payment Channel')}</div>
            <div class="panel-body row">
                {foreach $channels as $channel}
                    {if in_array($channel['id'], $tripay_channels)}
                        <div class="col-sm-4 mb20">
                            <a href="{$_url}order/buy/{$path}/{$channel['id']}"
                            onclick="return confirm('{$channel['name']}')"
                            class="btn btn-block btn-default">{$channel['name']}</a>
                        </div>
                    {/if}
                {/foreach}
            </div>
    </div>
</div>
{include file="user-ui/footer.tpl"}
