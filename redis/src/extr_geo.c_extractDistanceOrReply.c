
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int robj ;
typedef int client ;


 scalar_t__ C_OK ;
 int addReplyError (int *,char*) ;
 double extractUnitOrReply (int *,int *) ;
 scalar_t__ getDoubleFromObjectOrReply (int *,int *,double*,char*) ;

double extractDistanceOrReply(client *c, robj **argv,
                                     double *conversion) {
    double distance;
    if (getDoubleFromObjectOrReply(c, argv[0], &distance,
                                   "need numeric radius") != C_OK) {
        return -1;
    }

    if (distance < 0) {
        addReplyError(c,"radius cannot be negative");
        return -1;
    }

    double to_meters = extractUnitOrReply(c,argv[1]);
    if (to_meters < 0) {
        return -1;
    }

    if (conversion) *conversion = to_meters;
    return distance * to_meters;
}
