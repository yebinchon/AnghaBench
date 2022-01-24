#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int USHORT ;
struct TYPE_4__ {scalar_t__ Checksum; } ;
typedef  int* PUCHAR ;
typedef  int /*<<< orphan*/  Identifier ;
typedef  TYPE_1__ ISAPNP_IDENTIFIER ;
typedef  int INT ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static
INT
FUNC12(PUCHAR ReadDataPort)
{
  ISAPNP_IDENTIFIER Identifier;
  USHORT i, j;
  BOOLEAN Seen55aa, SeenLife;
  INT Csn = 0;
  USHORT Byte, Data;

  FUNC0("Setting read data port: 0x%p\n", ReadDataPort);

  FUNC9();
  FUNC7();

  FUNC5();
  FUNC2();
  FUNC2();

  FUNC9();
  FUNC7();
  FUNC10(0x00);

  FUNC8(ReadDataPort);
  FUNC2();

  while (TRUE)
  {
    FUNC1();
    FUNC2();

    FUNC6(&Identifier, sizeof(Identifier));

    Seen55aa = SeenLife = FALSE;
    for (i = 0; i < 9; i++)
    {
      Byte = 0;
      for (j = 0; j < 8; j++)
      {
        Data = FUNC4(ReadDataPort);
        FUNC2();
        Data = ((Data << 8) | FUNC4(ReadDataPort));
        FUNC2();
        Byte >>= 1;

        if (Data != 0xFFFF)
        {
           SeenLife = TRUE;
           if (Data == 0x55AA)
           {
             Byte |= 0x80;
             Seen55aa = TRUE;
           }
        }
      }
      *(((PUCHAR)&Identifier) + i) = Byte;
    }

    if (!Seen55aa)
    {
       if (Csn)
       {
         FUNC0("Found no more cards\n");
       }
       else
       {
         if (SeenLife)
         {
           FUNC0("Saw life but no cards, trying new read port\n");
           Csn = -1;
         }
         else
         {
           FUNC0("Saw no sign of life, abandoning isolation\n");
         }
       }
       break;
    }

    if (Identifier.Checksum != FUNC3(&Identifier))
    {
        FUNC0("Bad checksum, trying next read data port\n");
        Csn = -1;
        break;
    }

    Csn++;

    FUNC11(Csn);
    FUNC2();

    FUNC10(0x00);
    FUNC2();
  }

  FUNC9();

  if (Csn > 0)
  {
    FUNC0("Found %d cards at read port 0x%p\n", Csn, ReadDataPort);
  }

  return Csn;
}