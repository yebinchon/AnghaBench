; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_drive.c_InitializeDisk.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_drive.c_InitializeDisk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@PARTITION_STYLE_RAW = common dso_local global i32 0, align 4
@MSG_239 = common dso_local global i32 0, align 4
@IOCTL_DISK_CREATE_DISK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Could not delete drive layout: %s\00", align 1
@FALSE = common dso_local global i64 0, align 8
@IOCTL_DISK_UPDATE_PROPERTIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Could not refresh drive layout: %s\00", align 1
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @InitializeDisk(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__, align 4
  store i32 %0, i32* %3, align 4
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* @PARTITION_STYLE_RAW, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @MSG_239, align 4
  %13 = call i32 @PrintInfoDebug(i32 0, i32 %12)
  store i32 8, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @IOCTL_DISK_CREATE_DISK, align 4
  %16 = bitcast %struct.TYPE_6__* %6 to i32*
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @DeviceIoControl(i32 %14, i32 %15, i32* %16, i32 %17, i32* null, i32 0, i32* %5, i32* null)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = call i32 (...) @WindowsErrorString()
  %23 = call i32 @uprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @safe_closehandle(i32 %24)
  %26 = load i64, i64* @FALSE, align 8
  store i64 %26, i64* %2, align 8
  br label %41

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @IOCTL_DISK_UPDATE_PROPERTIES, align 4
  %30 = call i64 @DeviceIoControl(i32 %28, i32 %29, i32* null, i32 0, i32* null, i32 0, i32* %5, i32* null)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = call i32 (...) @WindowsErrorString()
  %35 = call i32 @uprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @safe_closehandle(i32 %36)
  %38 = load i64, i64* @FALSE, align 8
  store i64 %38, i64* %2, align 8
  br label %41

39:                                               ; preds = %27
  %40 = load i64, i64* @TRUE, align 8
  store i64 %40, i64* %2, align 8
  br label %41

41:                                               ; preds = %39, %33, %21
  %42 = load i64, i64* %2, align 8
  ret i64 %42
}

declare dso_local i32 @PrintInfoDebug(i32, i32) #1

declare dso_local i64 @DeviceIoControl(i32, i32, i32*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @uprintf(i8*, i32) #1

declare dso_local i32 @WindowsErrorString(...) #1

declare dso_local i32 @safe_closehandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
