
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* member_0; char* member_1; char const* name; } ;
typedef TYPE_1__ demux_mapping ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* demux_lookup (char const*,TYPE_1__*,int ) ;

__attribute__((used)) static const char *demux_NameFromMimeType(const char *mime)
{
    static demux_mapping types[] =
    {
        { "audio/aac", "m4a" },
        { "audio/aacp", "m4a" },
        { "audio/mpeg", "mp3" },

        { "video/dv", "rawdv" },
        { "video/MP2P", "ps" },
        { "video/MP2T", "ts" },
        { "video/nsa", "nsv" },
        { "video/nsv", "nsv" },
    };
    demux_mapping *type = demux_lookup( mime, types, ARRAY_SIZE( types ) );
    return (type != ((void*)0)) ? type->name : "any";
}
