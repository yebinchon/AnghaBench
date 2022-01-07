
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ExtensionState { ____Placeholder_ExtensionState } ExtensionState ;


 int Assert (int ) ;
 int EXTENSION_STATE_CREATED ;
 int EXTENSION_STATE_NOT_INSTALLED ;
 int EXTENSION_STATE_TRANSITIONING ;
 int EXTENSION_STATE_UNKNOWN ;
 int IsNormalProcessingMode () ;
 int IsTransactionState () ;
 int extension_exists () ;
 scalar_t__ extension_is_transitioning () ;
 scalar_t__ proxy_table_exists () ;

__attribute__((used)) static enum ExtensionState
extension_current_state()
{





 if (!IsNormalProcessingMode() || !IsTransactionState())
  return EXTENSION_STATE_UNKNOWN;





 if (extension_is_transitioning())
  return EXTENSION_STATE_TRANSITIONING;






 if (proxy_table_exists())
 {
  Assert(extension_exists());
  return EXTENSION_STATE_CREATED;
 }

 return EXTENSION_STATE_NOT_INSTALLED;
}
