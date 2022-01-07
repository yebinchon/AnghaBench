
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ xml_reader_t ;
struct TYPE_5__ {struct TYPE_5__* node; int xml; } ;
typedef TYPE_2__ xml_reader_sys_t ;
typedef int vlc_object_t ;


 int free (TYPE_2__*) ;
 int lock ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int xmlCleanupParser () ;
 int xmlFreeTextReader (int ) ;

__attribute__((used)) static void ReaderClose( vlc_object_t *p_this )
{
    xml_reader_t *p_reader = (xml_reader_t *)p_this;
    xml_reader_sys_t *p_sys = p_reader->p_sys;

    xmlFreeTextReader( p_sys->xml );





    free( p_sys->node );
    free( p_sys );
}
