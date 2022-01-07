
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s; } ;
typedef TYPE_1__ stream_t ;
typedef int input_item_t ;
typedef int input_item_node_t ;


 int * ParseLine (char*) ;
 int VLC_SUCCESS ;
 int free (char*) ;
 int input_item_Release (int *) ;
 int input_item_node_AppendItem (int *,int *) ;
 char* vlc_stream_ReadLine (int ) ;

__attribute__((used)) static int ReadDir(stream_t *s, input_item_node_t *subitems)
{
    char *line;

    while ((line = vlc_stream_ReadLine(s->s)) != ((void*)0))
    {
        input_item_t *item = ParseLine(line);
        free(line);
        if (item == ((void*)0))
            continue;

        input_item_node_AppendItem(subitems, item);
        input_item_Release(item);
    }

    return VLC_SUCCESS;
}
