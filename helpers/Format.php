<?php
class Format
{
    public function formatDate($date)
    {
        return date('F j, Y, g:i a', strtotime($date));
    }
    public function textShorten($text, $limit = 400)
    {
        $text = $text . " ";
        $text = substr($text, 0, $limit);
        $text = substr($text, 0, strrpos($text, ' '));
        $text = $text . ".....";
        return $text;
    }
    public function validation($date)
    {
        $date = trim($date);
        $date = stripcslashes($date);
        $date = htmlspecialchars($date);
        return $date;
    }
}
