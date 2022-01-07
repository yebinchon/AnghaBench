
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ use_binary_send; } ;
typedef TYPE_1__ DatumSerializer ;
typedef int BinaryStringEncoding ;


 int BINARY_ENCODING ;
 int TEXT_ENCODING ;

BinaryStringEncoding
datum_serializer_binary_string_encoding(DatumSerializer *serializer)
{
 return (serializer->use_binary_send ? BINARY_ENCODING : TEXT_ENCODING);
}
