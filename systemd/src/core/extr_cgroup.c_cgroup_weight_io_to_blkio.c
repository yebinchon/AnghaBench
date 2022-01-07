
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CGROUP_BLKIO_WEIGHT_DEFAULT ;
 int CGROUP_BLKIO_WEIGHT_MAX ;
 int CGROUP_BLKIO_WEIGHT_MIN ;
 int CGROUP_WEIGHT_DEFAULT ;
 int CLAMP (int,int ,int ) ;

__attribute__((used)) static uint64_t cgroup_weight_io_to_blkio(uint64_t io_weight) {
        return CLAMP(io_weight * CGROUP_BLKIO_WEIGHT_DEFAULT / CGROUP_WEIGHT_DEFAULT,
                     CGROUP_BLKIO_WEIGHT_MIN, CGROUP_BLKIO_WEIGHT_MAX);
}
