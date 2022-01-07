
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int video_transform_t ;
typedef int filter_t ;
typedef int filter_chain_t ;
struct TYPE_6__ {int orientation; } ;
struct TYPE_7__ {TYPE_1__ video; } ;
typedef TYPE_2__ es_format_t ;
typedef int config_chain_t ;
 char* config_ChainCreate (char**,int **,char*) ;
 int config_ChainDestroy (int *) ;
 int * filter_chain_AppendFilter (int *,char*,int *,TYPE_2__ const*) ;
 int free (char*) ;
 int snprintf (char*,int,char*,char const*) ;
 int video_format_GetTransform (int ,int ) ;

__attribute__((used)) static filter_t * AppendTransform( filter_chain_t *p_chain, const es_format_t *p_fmt1,
                                   const es_format_t *p_fmt2 )
{
    video_transform_t transform = video_format_GetTransform(p_fmt1->video.orientation, p_fmt2->video.orientation);

    const char *type;

    switch ( transform ) {

        case 130:
            type = "90";
            break;
        case 132:
            type = "180";
            break;
        case 131:
            type = "270";
            break;
        case 133:
            type = "hflip";
            break;
        case 128:
            type = "vflip";
            break;
        case 129:
            type = "transpose";
            break;
        case 134:
            type = "antitranspose";
            break;
        default:
            type = ((void*)0);
            break;
    }

    if( !type )
        return ((void*)0);

    config_chain_t *cfg;
    char *name;
    char config[100];
    snprintf( config, 100, "transform{type=%s}", type );
    char *next = config_ChainCreate( &name, &cfg, config );

    filter_t *p_filter = filter_chain_AppendFilter( p_chain, name, cfg, p_fmt2 );

    config_ChainDestroy(cfg);
    free(name);
    free(next);

    return p_filter;
}
