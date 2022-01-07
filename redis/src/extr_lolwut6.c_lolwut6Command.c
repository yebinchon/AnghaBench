
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sds ;
typedef int lwCanvas ;
struct TYPE_5__ {int argc; int * argv; } ;
typedef TYPE_1__ client ;


 scalar_t__ C_OK ;
 char* REDIS_VERSION ;
 int addReplyVerbatim (TYPE_1__*,int ,int ,char*) ;
 int generateSkyline (int *) ;
 scalar_t__ getLongFromObjectOrReply (TYPE_1__*,int ,long*,int *) ;
 int * lwCreateCanvas (long,long,int) ;
 int lwFreeCanvas (int *) ;
 int renderCanvas (int *) ;
 int sdscat (int ,char*) ;
 int sdscatlen (int ,char*,int) ;
 int sdsfree (int ) ;
 int sdslen (int ) ;

void lolwut6Command(client *c) {
    long cols = 80;
    long rows = 20;


    if (c->argc > 1 &&
        getLongFromObjectOrReply(c,c->argv[1],&cols,((void*)0)) != C_OK)
        return;

    if (c->argc > 2 &&
        getLongFromObjectOrReply(c,c->argv[2],&rows,((void*)0)) != C_OK)
        return;



    if (cols < 1) cols = 1;
    if (cols > 1000) cols = 1000;
    if (rows < 1) rows = 1;
    if (rows > 1000) rows = 1000;


    lwCanvas *canvas = lwCreateCanvas(cols,rows,3);
    generateSkyline(canvas);
    sds rendered = renderCanvas(canvas);
    rendered = sdscat(rendered,
        "\nDedicated to the 8 bit game developers of past and present.\n"
        "Original 8 bit image from Plaguemon by hikikomori. Redis ver. ");
    rendered = sdscat(rendered,REDIS_VERSION);
    rendered = sdscatlen(rendered,"\n",1);
    addReplyVerbatim(c,rendered,sdslen(rendered),"txt");
    sdsfree(rendered);
    lwFreeCanvas(canvas);
}
