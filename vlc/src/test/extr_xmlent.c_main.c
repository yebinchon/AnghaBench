
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _IONBF ;
 int decode (char*,char*) ;
 int encode (char*,char*) ;
 int setvbuf (int ,int *,int ,int ) ;
 int stdout ;

int main (void)
{
    (void)setvbuf (stdout, ((void*)0), _IONBF, 0);
    decode ("This should not be modified 1234",
            "This should not be modified 1234");

    decode ("R&eacute;mi&nbsp;Fran&ccedil;ois&nbsp;&amp;&nbsp;&Eacute;mile",
            "Rémi François & Émile");
    decode ("R&#233;mi&nbsp;Fran&#231;ois&nbsp;&amp;&nbsp;&#201;mile",
            "Rémi François & Émile");
    decode ("R&#xe9;mi&nbsp;Fran&#xe7;ois&nbsp;&amp;&nbsp;&#xc9;mile",
            "Rémi François & Émile");
    decode ("R&#xE9;mi&nbsp;Fran&#xE7;ois&nbsp;&amp;&nbsp;&#xC9;mile",
            "Rémi François & Émile");

    decode ("", "");


    decode ("&<\"'", "&<\"'");
    decode ("&oelig", "&oelig");

    encode ("", "");
    encode ("a'àc\"çe&én<ño>ö1:", "a&#39;àc&quot;çe&amp;én&lt;ño&gt;ö1:");
    encode ("\xC2\x81\xC2\x85", "&#129;\xC2\x85");
    encode (" \t\r\n", " \t\r\n");

    return 0;
}
