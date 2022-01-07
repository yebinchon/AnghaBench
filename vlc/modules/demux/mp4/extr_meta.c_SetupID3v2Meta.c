
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_meta_t ;
typedef int uint8_t ;
struct TYPE_2__ {int i_blob; scalar_t__ p_blob; } ;
typedef int MP4_Box_t ;


 TYPE_1__* BOXDATA (int const*) ;
 int ID3TAG_Parse (int *,int,int ,int *) ;
 int ID3TAG_Parse_Handler ;
 int * MP4_BoxGet (int *,char*) ;

__attribute__((used)) static void SetupID3v2Meta( vlc_meta_t *p_meta, MP4_Box_t *p_box )
{
    const MP4_Box_t *p_binary = MP4_BoxGet( p_box, "ID32" );
    if( p_binary == ((void*)0) || !BOXDATA(p_binary) || BOXDATA(p_binary)->i_blob < 6 + 20 + 1 )
        return;


    ID3TAG_Parse( &((uint8_t *)BOXDATA(p_binary)->p_blob)[6], BOXDATA(p_binary)->i_blob - 6,
                  ID3TAG_Parse_Handler, p_meta );
}
