
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline const char * getTypePsz( int i_type )
{
    switch( i_type )
    {
    case 131:
        return "playlist";
    case 129:
        return "skin";
    case 130:
        return "discovery";
    case 134:
        return "extension";
    case 133:
        return "interface";
    case 132:
        return "meta";
    case 128:
    default:
        return "unknown";
    }
}
