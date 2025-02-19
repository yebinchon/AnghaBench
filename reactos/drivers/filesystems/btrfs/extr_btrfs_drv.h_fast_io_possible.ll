; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_btrfs_drv.h_fast_io_possible.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_btrfs_drv.h_fast_io_possible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@FastIoIsNotPossible = common dso_local global i32 0, align 4
@FastIoIsPossible = common dso_local global i32 0, align 4
@FastIoIsQuestionable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @fast_io_possible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fast_io_possible(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %5 = call i32 @fcb_oplock(%struct.TYPE_6__* %4)
  %6 = call i32 @FsRtlOplockIsFastIoPossible(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @FastIoIsNotPossible, align 4
  store i32 %9, i32* %2, align 4
  br label %26

10:                                               ; preds = %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = call i32 @FsRtlAreThereCurrentFileLocks(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %10
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @FastIoIsPossible, align 4
  store i32 %23, i32* %2, align 4
  br label %26

24:                                               ; preds = %15, %10
  %25 = load i32, i32* @FastIoIsQuestionable, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %22, %8
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @FsRtlOplockIsFastIoPossible(i32) #1

declare dso_local i32 @fcb_oplock(%struct.TYPE_6__*) #1

declare dso_local i32 @FsRtlAreThereCurrentFileLocks(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
