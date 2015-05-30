<?php
$supportedLangs = array('en', 'es');
 
$languages = explode(',',$_SERVER['HTTP_ACCEPT_LANGUAGE']);
$sellang = 'fr'; 
foreach($languages as $lang)
{
    if(in_array($lang, $supportedLangs))
    {
        // Set the page locale to the first supported language found
        $page->setLocale($lang);
        $sellang = $lang; 
        break;
    }
}
echo $sellang;
?>