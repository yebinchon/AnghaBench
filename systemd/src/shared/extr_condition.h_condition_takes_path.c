
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ConditionType ;


 int CONDITION_DIRECTORY_NOT_EMPTY ;
 int CONDITION_FILE_IS_EXECUTABLE ;
 int CONDITION_FILE_NOT_EMPTY ;
 int CONDITION_NEEDS_UPDATE ;
 int CONDITION_PATH_EXISTS ;
 int CONDITION_PATH_EXISTS_GLOB ;
 int CONDITION_PATH_IS_DIRECTORY ;
 int CONDITION_PATH_IS_MOUNT_POINT ;
 int CONDITION_PATH_IS_READ_WRITE ;
 int CONDITION_PATH_IS_SYMBOLIC_LINK ;
 int IN_SET (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline bool condition_takes_path(ConditionType t) {
        return IN_SET(t,
                      CONDITION_PATH_EXISTS,
                      CONDITION_PATH_EXISTS_GLOB,
                      CONDITION_PATH_IS_DIRECTORY,
                      CONDITION_PATH_IS_SYMBOLIC_LINK,
                      CONDITION_PATH_IS_MOUNT_POINT,
                      CONDITION_PATH_IS_READ_WRITE,
                      CONDITION_DIRECTORY_NOT_EMPTY,
                      CONDITION_FILE_NOT_EMPTY,
                      CONDITION_FILE_IS_EXECUTABLE,
                      CONDITION_NEEDS_UPDATE);
}
