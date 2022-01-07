
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 int l2l_dbg (int ,char*,char const*) ;
 void* load_file (char const*,size_t*) ;
 int process_data (void*,size_t,char*) ;

__attribute__((used)) static int
process_file(const char *file_name, size_t offset, char *toString)
{
    void *FileData;
    size_t FileSize;
    int res = 1;

    FileData = load_file(file_name, &FileSize);
    if (!FileData)
    {
        l2l_dbg(0, "An error occured loading '%s'\n", file_name);
    }
    else
    {
        res = process_data(FileData, offset, toString);
        free(FileData);
    }
    return res;
}
