
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ vlc_reader; TYPE_2__* bootstraps; TYPE_1__* medias; int * element_stack; } ;
typedef TYPE_3__ manifest_t ;
struct TYPE_6__ {int profile; int url; int id; int data; } ;
struct TYPE_5__ {int metadata; int bootstrap_id; int media_url; int stream_id; } ;


 unsigned int MAX_BOOTSTRAP_INFO ;
 unsigned int MAX_MEDIA_ELEMENTS ;
 unsigned int MAX_XML_DEPTH ;
 int free (int ) ;
 int xml_ReaderDelete (scalar_t__) ;

__attribute__((used)) static void cleanup_Manifest( manifest_t *m )
{
    for (unsigned i = 0; i < MAX_XML_DEPTH; i++)
        free( m->element_stack[i] );

    for( unsigned i = 0; i < MAX_MEDIA_ELEMENTS; i++ )
    {
        free( m->medias[i].stream_id );
        free( m->medias[i].media_url );
        free( m->medias[i].bootstrap_id );
        free( m->medias[i].metadata );
    }

    for( unsigned i = 0; i < MAX_BOOTSTRAP_INFO; i++ )
    {
        free( m->bootstraps[i].data );
        free( m->bootstraps[i].id );
        free( m->bootstraps[i].url );
        free( m->bootstraps[i].profile );
    }

    if( m->vlc_reader )
        xml_ReaderDelete( m->vlc_reader );
}
