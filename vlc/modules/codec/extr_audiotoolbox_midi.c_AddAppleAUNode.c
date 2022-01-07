
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int componentManufacturer; void* componentSubType; void* componentType; } ;
typedef void* OSType ;
typedef int OSStatus ;
typedef TYPE_1__ AudioComponentDescription ;
typedef int AUNode ;
typedef int AUGraph ;


 int AUGraphAddNode (int ,TYPE_1__*,int *) ;
 int kAudioUnitManufacturer_Apple ;

__attribute__((used)) static OSStatus AddAppleAUNode(AUGraph graph, OSType type, OSType subtype, AUNode *node)
{
    AudioComponentDescription cDesc = {};
    cDesc.componentType = type;
    cDesc.componentSubType = subtype;
    cDesc.componentManufacturer = kAudioUnitManufacturer_Apple;

    return AUGraphAddNode(graph, &cDesc, node);
}
