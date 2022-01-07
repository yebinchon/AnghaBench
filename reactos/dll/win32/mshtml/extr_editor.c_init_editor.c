
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HTMLDocument ;


 int UPDATE_UI ;
 int set_ns_fontname (int *,char*) ;
 int update_doc (int *,int ) ;

void init_editor(HTMLDocument *This)
{
    update_doc(This, UPDATE_UI);

    set_ns_fontname(This, "Times New Roman");
}
