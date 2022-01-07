; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-device/extr_device-enumerator.c_enumerator_scan_devices_all.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-device/extr_device-enumerator.c_enumerator_scan_devices_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"sd-device-enumerator: Scan all dirs\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"/sys/subsystem\00", align 1
@F_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"subsystem\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"sd-device-enumerator: Failed to scan /sys/subsystem: %m\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"sd-device-enumerator: Failed to scan /sys/bus: %m\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"sd-device-enumerator: Failed to scan /sys/class: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @enumerator_scan_devices_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enumerator_scan_devices_all(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = call i32 @log_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @F_OK, align 4
  %8 = call i64 @access(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = icmp sge i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @enumerator_scan_dir(i32* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @log_debug_errno(i32 %16, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  store i32 %17, i32* %2, align 4
  br label %40

18:                                               ; preds = %10
  br label %38

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @enumerator_scan_dir(i32* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @log_debug_errno(i32 %25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @enumerator_scan_dir(i32* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* null, i32* null)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @log_debug_errno(i32 %34, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0))
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %33, %28
  br label %38

38:                                               ; preds = %37, %18
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %15
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @log_debug(i8*) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @enumerator_scan_dir(i32*, i8*, i8*, i32*) #1

declare dso_local i32 @log_debug_errno(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
