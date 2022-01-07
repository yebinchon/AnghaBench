
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ItemType ;


 int COPY_FILES ;
 int CREATE_BLOCK_DEVICE ;
 int CREATE_CHAR_DEVICE ;
 int CREATE_DIRECTORY ;
 int CREATE_FIFO ;
 int CREATE_FILE ;
 int CREATE_SUBVOLUME ;
 int CREATE_SUBVOLUME_INHERIT_QUOTA ;
 int CREATE_SUBVOLUME_NEW_QUOTA ;
 int CREATE_SYMLINK ;
 int EMPTY_DIRECTORY ;
 int IGNORE_DIRECTORY_PATH ;
 int IGNORE_PATH ;
 int IN_SET (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int RECURSIVE_REMOVE_PATH ;
 int REMOVE_PATH ;
 int TRUNCATE_DIRECTORY ;
 int TRUNCATE_FILE ;
 int WRITE_FILE ;

__attribute__((used)) static bool takes_ownership(ItemType t) {
        return IN_SET(t,
                      CREATE_FILE,
                      TRUNCATE_FILE,
                      CREATE_DIRECTORY,
                      EMPTY_DIRECTORY,
                      TRUNCATE_DIRECTORY,
                      CREATE_SUBVOLUME,
                      CREATE_SUBVOLUME_INHERIT_QUOTA,
                      CREATE_SUBVOLUME_NEW_QUOTA,
                      CREATE_FIFO,
                      CREATE_SYMLINK,
                      CREATE_CHAR_DEVICE,
                      CREATE_BLOCK_DEVICE,
                      COPY_FILES,
                      WRITE_FILE,
                      IGNORE_PATH,
                      IGNORE_DIRECTORY_PATH,
                      REMOVE_PATH,
                      RECURSIVE_REMOVE_PATH);
}
