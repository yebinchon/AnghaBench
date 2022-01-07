
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint16_t ;
typedef int int64_t ;
typedef int index_record ;
typedef int FILE ;


 int GetDWLE (int**) ;
 int GetQWLE (int**) ;
 int SEEK_SET ;
 int UINT64_C (int) ;
 int fread (int**,int,int,int *) ;
 scalar_t__ fseek (int *,int,int ) ;

__attribute__((used)) static bool ReadIndexRecord( FILE *p_file, bool b_ts, int64_t i_frame,
                            uint64_t *pi_offset, uint16_t *pi_file_num )
{
    uint8_t index_record[8];
    if( fseek( p_file, sizeof(index_record) * i_frame, SEEK_SET ) != 0 )
        return 0;
    if( fread( &index_record, sizeof(index_record), 1, p_file ) < 1 )
        return 0;



    if( b_ts )
    {
        uint64_t i_index_entry = GetQWLE( &index_record );
        *pi_offset = i_index_entry & UINT64_C(0xFFFFFFFFFF);
        *pi_file_num = i_index_entry >> 48;
    }
    else
    {
        *pi_offset = GetDWLE( &index_record );
        *pi_file_num = index_record[5];
    }

    return 1;
}
