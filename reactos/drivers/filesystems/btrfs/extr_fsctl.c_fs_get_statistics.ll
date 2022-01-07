; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_fsctl.c_fs_get_statistics.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_fsctl.c_fs_get_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"STUB: FSCTL_FILESYSTEM_GET_STATISTICS\0A\00", align 1
@STATUS_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@FILESYSTEM_STATISTICS_TYPE_NTFS = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @fs_get_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_get_statistics(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = call i32 @WARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 12
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @STATUS_BUFFER_TOO_SMALL, align 4
  store i32 %14, i32* %4, align 4
  br label %29

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %8, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %19 = call i32 @RtlZeroMemory(%struct.TYPE_3__* %18, i32 12)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load i32, i32* @FILESYSTEM_STATISTICS_TYPE_NTFS, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i32 12, i32* %26, align 4
  %27 = load i32*, i32** %7, align 8
  store i32 12, i32* %27, align 4
  %28 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %15, %13
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
