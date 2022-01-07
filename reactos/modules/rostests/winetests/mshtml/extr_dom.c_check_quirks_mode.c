
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IHTMLDocument2 ;


 int test_compatmode (int *,char*) ;

__attribute__((used)) static void check_quirks_mode(IHTMLDocument2 *doc)
{
    test_compatmode(doc, "BackCompat");
}
