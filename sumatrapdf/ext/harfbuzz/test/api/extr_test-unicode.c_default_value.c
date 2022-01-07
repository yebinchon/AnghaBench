
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ hb_codepoint_t ;


 scalar_t__ RETURNS_UNICODE_ITSELF ;

__attribute__((used)) static hb_codepoint_t
default_value (hb_codepoint_t _default_value, hb_codepoint_t unicode)
{
  return _default_value == RETURNS_UNICODE_ITSELF ? unicode : _default_value;
}
