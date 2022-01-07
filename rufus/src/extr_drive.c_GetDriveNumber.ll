; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_drive.c_GetDriveNumber.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_drive.c_GetDriveNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i64 }

@IOCTL_VOLUME_GET_VOLUME_DISK_EXTENTS = common dso_local global i32 0, align 4
@IOCTL_STORAGE_GET_DEVICE_NUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Could not get device number for device %s: %s\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Ignoring drive '%s' as it spans multiple disks (RAID?)\00", align 1
@MAX_DRIVES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"Device Number for device %s is too big (%d) - ignoring device\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetDriveNumber(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 -1, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @IOCTL_VOLUME_GET_VOLUME_DISK_EXTENTS, align 4
  %12 = call i32 @DeviceIoControl(i32 %10, i32 %11, i32* null, i32 0, %struct.TYPE_6__* %7, i32 24, i64* %8, i32* null)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i64, i64* %8, align 8
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %37

21:                                               ; preds = %17, %14, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @IOCTL_STORAGE_GET_DEVICE_NUMBER, align 4
  %24 = call i32 @DeviceIoControl(i32 %22, i32 %23, i32* null, i32 0, %struct.TYPE_6__* %6, i32 24, i64* %8, i32* null)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i64, i64* %8, align 8
  %28 = icmp sle i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26, %21
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 (...) @WindowsErrorString()
  %32 = call i32 (i8*, i8*, ...) @uprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %31)
  store i32 -1, i32* %3, align 4
  br label %62

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %9, align 4
  br label %52

37:                                               ; preds = %17
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %39, 2
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 (i8*, i8*, ...) @uprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  store i32 -1, i32* %3, align 4
  br label %62

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %33
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @MAX_DRIVES, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 (i8*, i8*, ...) @uprintf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i8* %57, i32 %58)
  store i32 -1, i32* %3, align 4
  br label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %56, %41, %29
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @DeviceIoControl(i32, i32, i32*, i32, %struct.TYPE_6__*, i32, i64*, i32*) #1

declare dso_local i32 @uprintf(i8*, i8*, ...) #1

declare dso_local i32 @WindowsErrorString(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
