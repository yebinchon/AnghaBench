
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* member_0; char* member_1; char const* name; } ;
typedef TYPE_1__ demux_mapping ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* demux_lookup (char const*,TYPE_1__*,size_t) ;

__attribute__((used)) static const char* DemuxNameFromExtension( char const* ext,
                                           bool b_preparsing )
{




    static demux_mapping strong[] =
    {
        { "aiff", "aiff" },
        { "asf", "asf" },
        { "au", "au" },
        { "avi", "avi" },
        { "drc", "dirac" },
        { "dv", "dv" },
        { "flac", "flac" },
        { "h264", "h264" },
        { "kar", "smf" },
        { "m3u", "m3u" },
        { "m4a", "mp4" },
        { "m4v", "m4v" },
        { "mid", "smf" },
        { "mka", "mkv" },
        { "mks", "mkv" },
        { "mkv", "mkv" },
        { "moov", "mp4" },
        { "mov", "mp4" },
        { "mp4", "mp4" },
        { "nsv", "nsv" },
        { "oga", "ogg" },
        { "ogg", "ogg" },
        { "ogm", "ogg" },
        { "ogv", "ogg" },
        { "ogx", "ogg" },
        { "opus", "ogg" },
        { "pva", "pva" },
        { "rm", "avformat" },
        { "rmi", "smf" },
        { "spx", "ogg" },
        { "voc", "voc" },
        { "wma", "asf" },
        { "wmv", "asf" },
    };


    static demux_mapping quick[] =
    {
        { "mp3", "mpga" },
        { "ogg", "ogg" },
        { "wma", "asf" },
    };

    struct {
        demux_mapping* data;
        size_t size;

    } lookup = {
        .data = b_preparsing ? quick : strong,
        .size = b_preparsing ? ARRAY_SIZE( quick ) : ARRAY_SIZE( strong )
    };

    demux_mapping* result = demux_lookup( ext, lookup.data, lookup.size );
    return result ? result->name : ((void*)0);
}
