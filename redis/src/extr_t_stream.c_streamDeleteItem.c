
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int streamIterator ;
typedef int streamID ;
typedef int stream ;
typedef int int64_t ;


 scalar_t__ streamIteratorGetID (int *,int *,int *) ;
 int streamIteratorRemoveEntry (int *,int *) ;
 int streamIteratorStart (int *,int *,int *,int *,int ) ;
 int streamIteratorStop (int *) ;

int streamDeleteItem(stream *s, streamID *id) {
    int deleted = 0;
    streamIterator si;
    streamIteratorStart(&si,s,id,id,0);
    streamID myid;
    int64_t numfields;
    if (streamIteratorGetID(&si,&myid,&numfields)) {
        streamIteratorRemoveEntry(&si,&myid);
        deleted = 1;
    }
    streamIteratorStop(&si);
    return deleted;
}
