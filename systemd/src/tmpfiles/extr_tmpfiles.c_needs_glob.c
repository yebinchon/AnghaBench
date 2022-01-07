
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ItemType ;


 int ADJUST_MODE ;
 int EMPTY_DIRECTORY ;
 int IGNORE_DIRECTORY_PATH ;
 int IGNORE_PATH ;
 int IN_SET (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int RECURSIVE_RELABEL_PATH ;
 int RECURSIVE_REMOVE_PATH ;
 int RECURSIVE_SET_ACL ;
 int RECURSIVE_SET_ATTRIBUTE ;
 int RECURSIVE_SET_XATTR ;
 int RELABEL_PATH ;
 int REMOVE_PATH ;
 int SET_ACL ;
 int SET_ATTRIBUTE ;
 int SET_XATTR ;
 int WRITE_FILE ;

__attribute__((used)) static bool needs_glob(ItemType t) {
        return IN_SET(t,
                      WRITE_FILE,
                      IGNORE_PATH,
                      IGNORE_DIRECTORY_PATH,
                      REMOVE_PATH,
                      RECURSIVE_REMOVE_PATH,
                      EMPTY_DIRECTORY,
                      ADJUST_MODE,
                      RELABEL_PATH,
                      RECURSIVE_RELABEL_PATH,
                      SET_XATTR,
                      RECURSIVE_SET_XATTR,
                      SET_ACL,
                      RECURSIVE_SET_ACL,
                      SET_ATTRIBUTE,
                      RECURSIVE_SET_ATTRIBUTE);
}
