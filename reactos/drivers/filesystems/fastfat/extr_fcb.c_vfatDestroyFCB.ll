; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_fcb.c_vfatDestroyFCB.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_fcb.c_vfatDestroyFCB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FCB_IS_FAT = common dso_local global i32 0, align 4
@FCB_IS_VOLUME = common dso_local global i32 0, align 4
@VfatGlobalData = common dso_local global %struct.TYPE_10__* null, align 8
@DebugFile = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfatDestroyFCB(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 6
  %6 = call i32 @FsRtlUninitializeFileLock(i32* %5)
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = call i32 @vfatFCBIsRoot(%struct.TYPE_9__* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FCB_IS_FAT, align 4
  %15 = call i32 @BooleanFlagOn(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %10
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @FCB_IS_VOLUME, align 4
  %22 = call i32 @BooleanFlagOn(i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 4
  %27 = call i32 @RemoveEntryList(i32* %26)
  br label %28

28:                                               ; preds = %24, %17, %10, %1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ExFreePool(i32 %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = call i32 @ExDeleteResourceLite(i32* %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = call i32 @ExDeleteResourceLite(i32* %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = call i32 @IsListEmpty(i32* %40)
  %42 = call i32 @ASSERT(i32 %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** @VfatGlobalData, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = call i32 @ExFreeToNPagedLookasideList(i32* %44, %struct.TYPE_9__* %45)
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @FsRtlUninitializeFileLock(i32*) #1

declare dso_local i32 @vfatFCBIsRoot(%struct.TYPE_9__*) #1

declare dso_local i32 @BooleanFlagOn(i32, i32) #1

declare dso_local i32 @RemoveEntryList(i32*) #1

declare dso_local i32 @ExFreePool(i32) #1

declare dso_local i32 @ExDeleteResourceLite(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @IsListEmpty(i32*) #1

declare dso_local i32 @ExFreeToNPagedLookasideList(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
