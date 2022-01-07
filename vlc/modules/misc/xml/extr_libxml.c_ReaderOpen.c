
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pf_use_dtd; int pf_is_empty; int pf_next_attr; int pf_next_node; TYPE_2__* p_sys; int p_stream; } ;
typedef TYPE_1__ xml_reader_t ;
struct TYPE_7__ {int * node; scalar_t__ xml; } ;
typedef TYPE_2__ xml_reader_sys_t ;
typedef scalar_t__ xmlTextReaderPtr ;
typedef int vlc_object_t ;


 int ReaderErrorHandler ;
 int ReaderIsEmptyElement ;
 int ReaderNextAttr ;
 int ReaderNextNode ;
 int ReaderUseDTD ;
 int StreamRead ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int XML_WITH_THREAD ;
 int free (TYPE_2__*) ;
 int lock ;
 TYPE_2__* malloc (int) ;
 scalar_t__ unlikely (int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int xmlHasFeature (int ) ;
 int xmlInitParser () ;
 scalar_t__ xmlReaderForIO (int ,int *,int ,int *,int *,int ) ;
 int xmlTextReaderSetErrorHandler (scalar_t__,int ,TYPE_1__*) ;

__attribute__((used)) static int ReaderOpen( vlc_object_t *p_this )
{
    if( !xmlHasFeature( XML_WITH_THREAD ) )
        return VLC_EGENERIC;

    xml_reader_t *p_reader = (xml_reader_t *)p_this;
    xml_reader_sys_t *p_sys = malloc( sizeof( *p_sys ) );
    xmlTextReaderPtr p_libxml_reader;

    if( unlikely(!p_sys) )
        return VLC_ENOMEM;

    vlc_mutex_lock( &lock );
    xmlInitParser();
    vlc_mutex_unlock( &lock );

    p_libxml_reader = xmlReaderForIO( StreamRead, ((void*)0), p_reader->p_stream,
                                      ((void*)0), ((void*)0), 0 );
    if( !p_libxml_reader )
    {
        free( p_sys );
        return VLC_ENOMEM;
    }


    xmlTextReaderSetErrorHandler( p_libxml_reader,
                                  ReaderErrorHandler, p_reader );

    p_sys->xml = p_libxml_reader;
    p_sys->node = ((void*)0);
    p_reader->p_sys = p_sys;
    p_reader->pf_next_node = ReaderNextNode;
    p_reader->pf_next_attr = ReaderNextAttr;
    p_reader->pf_is_empty = ReaderIsEmptyElement;
    p_reader->pf_use_dtd = ReaderUseDTD;

    return VLC_SUCCESS;
}
