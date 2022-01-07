; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_memory.c_Ext2AllocateInode.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_memory.c_Ext2AllocateInode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@INODE_SIZE = common dso_local global i32 0, align 4
@DL_INF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ExtAllocateInode: Inode created: %ph.\0A\00", align 1
@PS_EXT2_INODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @Ext2AllocateInode(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* null, i32** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = call i32* @ExAllocateFromNPagedLookasideList(i32* %6)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %24

11:                                               ; preds = %1
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @INODE_SIZE, align 4
  %14 = call i32 @RtlZeroMemory(i32* %12, i32 %13)
  %15 = load i32, i32* @DL_INF, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = call i32 @DEBUG(i32 %15, i8* %17)
  %19 = load i32, i32* @PS_EXT2_INODE, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @INODE_SIZE, align 4
  %22 = call i32 @INC_MEM_COUNT(i32 %19, i32* %20, i32 %21)
  %23 = load i32*, i32** %4, align 8
  store i32* %23, i32** %2, align 8
  br label %24

24:                                               ; preds = %11, %10
  %25 = load i32*, i32** %2, align 8
  ret i32* %25
}

declare dso_local i32* @ExAllocateFromNPagedLookasideList(i32*) #1

declare dso_local i32 @RtlZeroMemory(i32*, i32) #1

declare dso_local i32 @DEBUG(i32, i8*) #1

declare dso_local i32 @INC_MEM_COUNT(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
