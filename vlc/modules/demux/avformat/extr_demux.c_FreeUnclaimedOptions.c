
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int demux_t ;
struct TYPE_4__ {int key; } ;
typedef TYPE_1__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AV_DICT_IGNORE_SUFFIX ;
 int av_dict_free (int **) ;
 TYPE_1__* av_dict_get (int *,char*,TYPE_1__*,int ) ;
 int msg_Err (int *,char*,int ) ;

__attribute__((used)) static void FreeUnclaimedOptions( demux_t *p_demux, AVDictionary **pp_dict )
{
    AVDictionaryEntry *t = ((void*)0);
    while ((t = av_dict_get(*pp_dict, "", t, AV_DICT_IGNORE_SUFFIX))) {
        msg_Err( p_demux, "Unknown option \"%s\"", t->key );
    }
    av_dict_free(pp_dict);
}
