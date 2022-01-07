; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_drive.c_GetDriveSize.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_drive.c_GetDriveSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@IOCTL_DISK_GET_DRIVE_GEOMETRY_EX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetDriveSize(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [256 x i32], align 16
  %8 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %3, align 8
  %9 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %10 = bitcast i32* %9 to i8*
  %11 = bitcast i8* %10 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %8, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i32, i32* @FALSE, align 4
  %14 = load i32, i32* @FALSE, align 4
  %15 = load i32, i32* @TRUE, align 4
  %16 = call i64 @GetPhysicalHandle(i64 %12, i32 %13, i32 %14, i32 %15)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %2, align 4
  br label %40

22:                                               ; preds = %1
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* @IOCTL_DISK_GET_DRIVE_GEOMETRY_EX, align 4
  %25 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %26 = call i32 @DeviceIoControl(i64 %23, i32 %24, i32* null, i32 0, i32* %25, i32 1024, i64* %6, i32* null)
  store i32 %26, i32* %4, align 4
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @safe_closehandle(i64 %27)
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i64, i64* %6, align 8
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %22
  store i32 0, i32* %2, align 4
  br label %40

35:                                               ; preds = %31
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %35, %34, %20
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @GetPhysicalHandle(i64, i32, i32, i32) #1

declare dso_local i32 @DeviceIoControl(i64, i32, i32*, i32, i32*, i32, i64*, i32*) #1

declare dso_local i32 @safe_closehandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
