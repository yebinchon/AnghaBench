
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDPCLIENT ;


 int helper_cliprdr_send_response (int *,int *,int ) ;

__attribute__((used)) static void
helper_cliprdr_send_empty_response(RDPCLIENT * This)
{
 helper_cliprdr_send_response(This, ((void*)0), 0);
}
