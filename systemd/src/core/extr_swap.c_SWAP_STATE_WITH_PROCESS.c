
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SwapState ;


 int IN_SET (int ,int ,int ,int ,int ,int ,int ) ;
 int SWAP_ACTIVATING ;
 int SWAP_ACTIVATING_DONE ;
 int SWAP_CLEANING ;
 int SWAP_DEACTIVATING ;
 int SWAP_DEACTIVATING_SIGKILL ;
 int SWAP_DEACTIVATING_SIGTERM ;

__attribute__((used)) static bool SWAP_STATE_WITH_PROCESS(SwapState state) {
        return IN_SET(state,
                      SWAP_ACTIVATING,
                      SWAP_ACTIVATING_DONE,
                      SWAP_DEACTIVATING,
                      SWAP_DEACTIVATING_SIGTERM,
                      SWAP_DEACTIVATING_SIGKILL,
                      SWAP_CLEANING);
}
