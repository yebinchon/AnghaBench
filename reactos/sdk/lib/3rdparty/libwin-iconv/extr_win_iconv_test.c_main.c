
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ check_enc (char*,int) ;
 int eilseq (char*,char*,char*,char*) ;
 int einval (char*,char*,char*,char*) ;
 int printf (char*) ;
 scalar_t__ setdll (char*) ;
 int success (char*,char*,char*,char*) ;

int
main(int argc, char **argv)
{
    if (check_enc("ascii", 20127))
    {
        success("ascii", "ABC", "ascii", "ABC");

        success("ascii", "\x80\xFF", "ascii", "\x00\x7F");
    }


    if (check_enc("utf-8", 65001)
            && check_enc("utf-16be", 1201) && check_enc("utf-16le", 1200)
            && check_enc("utf-32be", 12001) && check_enc("utf-32le", 12000)
            )
    {



        success("utf-16", "\xFE\xFF\x01\x02", "utf-16be", "\x01\x02");
        success("utf-16", "\xFF\xFE\x02\x01", "utf-16be", "\x01\x02");
        success("utf-32", "\x00\x00\xFE\xFF\x00\x00\x01\x02", "utf-32be", "\x00\x00\x01\x02");
        success("utf-32", "\xFF\xFE\x00\x00\x02\x01\x00\x00", "utf-32be", "\x00\x00\x01\x02");
        success("utf-16", "\xFE\xFF\x00\x01", "utf-8", "\x01");

        success("utf-8", "\x01", "utf-16", "\xFE\xFF\x00\x01");
        success("utf-8", "\x01", "utf-32", "\x00\x00\xFE\xFF\x00\x00\x00\x01");





        success("utf-16be", "\xFE\xFF\x01\x02", "utf-16be", "\xFE\xFF\x01\x02");
        success("utf-16le", "\xFF\xFE\x02\x01", "utf-16be", "\xFE\xFF\x01\x02");
        success("utf-32be", "\x00\x00\xFE\xFF\x00\x00\x01\x02", "utf-32be", "\x00\x00\xFE\xFF\x00\x00\x01\x02");
        success("utf-32le", "\xFF\xFE\x00\x00\x02\x01\x00\x00", "utf-32be", "\x00\x00\xFE\xFF\x00\x00\x01\x02");
        success("utf-16be", "\xFE\xFF\x00\x01", "utf-8", "\xEF\xBB\xBF\x01");
        success("utf-8", "\xEF\xBB\xBF\x01", "utf-8", "\xEF\xBB\xBF\x01");

        success("utf-16be", "\x01\x02", "utf-16le", "\x02\x01");
        success("utf-16le", "\x02\x01", "utf-16be", "\x01\x02");
        success("utf-16be", "\xFE\xFF", "utf-16le", "\xFF\xFE");
        success("utf-16le", "\xFF\xFE", "utf-16be", "\xFE\xFF");
        success("utf-32be", "\x00\x00\x03\x04", "utf-32le", "\x04\x03\x00\x00");
        success("utf-32le", "\x04\x03\x00\x00", "utf-32be", "\x00\x00\x03\x04");
        success("utf-32be", "\x00\x00\xFF\xFF", "utf-16be", "\xFF\xFF");
        success("utf-16be", "\xFF\xFF", "utf-32be", "\x00\x00\xFF\xFF");
        success("utf-32be", "\x00\x01\x00\x00", "utf-16be", "\xD8\x00\xDC\x00");
        success("utf-16be", "\xD8\x00\xDC\x00", "utf-32be", "\x00\x01\x00\x00");
        success("utf-32be", "\x00\x10\xFF\xFF", "utf-16be", "\xDB\xFF\xDF\xFF");
        success("utf-16be", "\xDB\xFF\xDF\xFF", "utf-32be", "\x00\x10\xFF\xFF");
        eilseq("utf-32be", "\x00\x11\x00\x00", "utf-16be", "");
        eilseq("utf-16be", "\xDB\xFF\xE0\x00", "utf-32be", "");
        success("utf-8", "\xE3\x81\x82", "utf-16be", "\x30\x42");
        einval("utf-8", "\xE3", "utf-16be", "");
    }


    if (check_enc("cp932", 932)
            && check_enc("cp20932", 20932) && check_enc("euc-jp", 51932)
            && check_enc("cp50220", 50220) && check_enc("cp50221", 50221)
            && check_enc("cp50222", 50222) && check_enc("iso-2022-jp", 50221))
    {


        success("utf-16be", "\xFF\x5E", "cp932", "\x81\x60");
        success("utf-16be", "\x30\x1C", "cp932", "\x81\x60");
        success("utf-16be", "\xFF\x5E", "cp932//nocompat", "\x81\x60");
        eilseq("utf-16be", "\x30\x1C", "cp932//nocompat", "");
        success("euc-jp", "\xA4\xA2", "utf-16be", "\x30\x42");
        einval("euc-jp", "\xA4\xA2\xA4", "utf-16be", "\x30\x42");
        eilseq("euc-jp", "\xA4\xA2\xFF\xFF", "utf-16be", "\x30\x42");
        success("cp932", "\x81\x60", "iso-2022-jp", "\x1B\x24\x42\x21\x41\x1B\x28\x42");
        success("UTF-16BE", "\xFF\x5E", "iso-2022-jp", "\x1B\x24\x42\x21\x41\x1B\x28\x42");
        eilseq("UTF-16BE", "\x30\x1C", "iso-2022-jp//nocompat", "");
        success("UTF-16BE", "\x30\x42\x30\x44", "iso-2022-jp", "\x1B\x24\x42\x24\x22\x24\x24\x1B\x28\x42");
        success("iso-2022-jp", "\x1B\x24\x42\x21\x41\x1B\x28\x42", "UTF-16BE", "\xFF\x5E");
    }





    eilseq("UTF-16BE", "\xFF\x41", "iso-8859-1", "");
    success("UTF-16BE", "\xFF\x41", "iso-8859-1//translit", "a");





    eilseq("UTF-16BE", "\x30\x42", "ascii", "");
    success("UTF-16BE", "\x30\x42", "ascii//translit", "?");




    eilseq("UTF-8", "\xFF A \xFF B", "ascii//ignore", " A  B");
    eilseq("UTF-8", "\xEF\xBC\xA1 A \xEF\xBC\xA2 B", "ascii//ignore", " A  B");
    eilseq("UTF-8", "\xEF\x01 A \xEF\x02 B", "ascii//ignore", "\x01 A \x02 B");







    return 0;
}
