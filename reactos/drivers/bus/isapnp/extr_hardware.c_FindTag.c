
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ USHORT ;
typedef scalar_t__ ULONG ;
typedef int * PVOID ;
typedef int PUCHAR ;
typedef int BOOLEAN ;


 int FALSE ;
 scalar_t__ ISAPNP_IS_SMALL_TAG (scalar_t__) ;
 scalar_t__ ISAPNP_LARGE_TAG_NAME (scalar_t__) ;
 scalar_t__ ISAPNP_SMALL_TAG_LEN (scalar_t__) ;
 scalar_t__ ISAPNP_SMALL_TAG_NAME (scalar_t__) ;
 scalar_t__ ISAPNP_TAG_END ;
 int Peek (int ,int *,scalar_t__) ;
 int PeekByte (int ) ;
 int TRUE ;

__attribute__((used)) static
BOOLEAN
FindTag(PUCHAR ReadDataPort, USHORT WantedTag, PVOID Buffer, ULONG Length)
{
  USHORT Tag, TagLen;

  do
  {
    Tag = PeekByte(ReadDataPort);
    if (ISAPNP_IS_SMALL_TAG(Tag))
    {
      TagLen = ISAPNP_SMALL_TAG_LEN(Tag);
      Tag = ISAPNP_SMALL_TAG_NAME(Tag);
    }
    else
    {
      TagLen = PeekByte(ReadDataPort) + (PeekByte(ReadDataPort) << 8);
      Tag = ISAPNP_LARGE_TAG_NAME(Tag);
    }

    if (Tag == WantedTag)
    {
      if (Length > TagLen)
          Length = TagLen;

      Peek(ReadDataPort, Buffer, Length);

      return TRUE;
    }
    else
    {
      Peek(ReadDataPort, ((void*)0), Length);
    }
  } while (Tag != ISAPNP_TAG_END);

  return FALSE;
}
