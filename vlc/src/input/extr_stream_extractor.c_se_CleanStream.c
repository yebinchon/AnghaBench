
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ identifier; } ;
struct stream_extractor_private {TYPE_1__ extractor; } ;


 int free (char*) ;

__attribute__((used)) static void
se_CleanStream( struct stream_extractor_private* priv )
{
    free( (char*)priv->extractor.identifier );
}
