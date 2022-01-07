
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAI_AGAIN ;
 int EAI_FAIL ;
 int EAI_NODATA ;
 int EAI_NONAME ;
 int EAI_SYSTEM ;





 int h_errno ;

__attribute__((used)) static int
gai_error_from_herrno (void)
{
    switch (h_errno)
    {
        case 132:
            return EAI_NONAME;

        case 131:

        case 130:

            return EAI_NODATA;

        case 129:
            return EAI_FAIL;

        case 128:
            return EAI_AGAIN;
    }
    return EAI_SYSTEM;
}
