
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* s; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_10__ {int vlc_reader; } ;
typedef TYPE_2__ manifest_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int memset (TYPE_2__*,int ,int) ;
 int msg_Err (TYPE_1__*,char*) ;
 int xml_ReaderCreate (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int init_Manifest( stream_t *s, manifest_t *m )
{
    memset(m, 0, sizeof(*m));
    stream_t *st = s->s;

    m->vlc_reader = xml_ReaderCreate( st, st );
    if( !m->vlc_reader )
    {
        msg_Err( s, "Failed to open source for parsing" );
        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}
