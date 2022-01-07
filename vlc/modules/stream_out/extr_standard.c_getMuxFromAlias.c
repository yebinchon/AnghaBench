
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcasecmp (char const*,char const*) ;

__attribute__((used)) static const char *getMuxFromAlias( const char *psz_alias )
{
    static struct { const char alias[6]; const char mux[32]; } mux_alias[] =
    {
        { "avi", "avi" },
        { "ogg", "ogg" },
        { "ogm", "ogg" },
        { "ogv", "ogg" },
        { "flac","raw" },
        { "mp3", "raw" },
        { "mp4", "mp4" },
        { "mov", "mov" },
        { "moov","mov" },
        { "asf", "asf" },
        { "wma", "asf" },
        { "wmv", "asf" },
        { "trp", "ts" },
        { "ts", "ts" },
        { "mpg", "ps" },
        { "mpeg","ps" },
        { "ps", "ps" },
        { "mpeg1","mpeg1" },
        { "wav", "wav" },
        { "flv", "avformat{mux=flv}" },
        { "mkv", "avformat{mux=matroska}"},
        { "webm", "avformat{mux=webm}"},
    };

    if( !psz_alias )
        return ((void*)0);

    for( size_t i = 0; i < sizeof mux_alias / sizeof *mux_alias; i++ )
        if( !strcasecmp( psz_alias, mux_alias[i].alias ) )
            return mux_alias[i].mux;

    return ((void*)0);
}
