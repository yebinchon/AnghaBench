
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int s; } ;
typedef TYPE_1__ stream_t ;
typedef int input_item_t ;
typedef int input_item_node_t ;


 int IsUTF8 (char*) ;
 int VLC_SUCCESS ;
 int free (char*) ;
 int * input_item_New (char*,char*) ;
 int input_item_Release (int *) ;
 int input_item_node_AppendItem (int *,int *) ;
 int memcpy (char*,char*,int) ;
 int msg_Warn (TYPE_1__*,char*,char const*) ;
 int sscanf (char const*,char*,unsigned int*) ;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;
 int strncasecmp (char*,char*,int) ;
 char* vlc_stream_ReadLine (int ) ;

__attribute__((used)) static int ReadDir(stream_t *demux, input_item_node_t *subitems)
{
    char *line;

    while ((line = vlc_stream_ReadLine(demux->s)) != ((void*)0))
    {
        if (!IsUTF8(line))
            goto skip;
        if (!strcmp(line, "[Reference]"))
            goto skip;

        const char *key = line;
        char *value = strchr(line, '=');
        if (value == ((void*)0)) {
            msg_Warn(demux, "unexpected entry \"%s\"", line);
            goto skip;
        }
        *(value++) = '\0';

        unsigned id;
        if (sscanf(key, "Ref%u", &id) != 1) {
            msg_Warn(demux, "unexpected entry key \"%s\"", key);
            goto skip;
        }

        if (!strncasecmp(value, "http://", 7))
            memcpy(value, "mmsh", 4);

        input_item_t *item = input_item_New(value, value);
        input_item_node_AppendItem(subitems, item);
        input_item_Release(item);
skip:
        free(line);
    }
    return VLC_SUCCESS;
}
