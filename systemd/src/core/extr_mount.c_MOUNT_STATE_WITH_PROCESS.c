
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MountState ;


 int IN_SET (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int MOUNT_CLEANING ;
 int MOUNT_MOUNTING ;
 int MOUNT_MOUNTING_DONE ;
 int MOUNT_REMOUNTING ;
 int MOUNT_REMOUNTING_SIGKILL ;
 int MOUNT_REMOUNTING_SIGTERM ;
 int MOUNT_UNMOUNTING ;
 int MOUNT_UNMOUNTING_SIGKILL ;
 int MOUNT_UNMOUNTING_SIGTERM ;

__attribute__((used)) static bool MOUNT_STATE_WITH_PROCESS(MountState state) {
        return IN_SET(state,
                      MOUNT_MOUNTING,
                      MOUNT_MOUNTING_DONE,
                      MOUNT_REMOUNTING,
                      MOUNT_REMOUNTING_SIGTERM,
                      MOUNT_REMOUNTING_SIGKILL,
                      MOUNT_UNMOUNTING,
                      MOUNT_UNMOUNTING_SIGTERM,
                      MOUNT_UNMOUNTING_SIGKILL,
                      MOUNT_CLEANING);
}
