; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-manager.c_method_start_transient_unit.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-manager.c_method_start_transient_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@SD_BUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Job mode %s is invalid.\00", align 1
@JOB_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @method_start_transient_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_start_transient_unit(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @assert(i32* %16)
  %18 = load i32*, i32** %10, align 8
  %19 = call i32 @assert(i32* %18)
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @mac_selinux_access_check(i32* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %4, align 4
  br label %83

27:                                               ; preds = %3
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @sd_bus_message_read(i32* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %8, i8** %9)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %4, align 4
  br label %83

34:                                               ; preds = %27
  %35 = load i8*, i8** %9, align 8
  %36 = call i64 @job_mode_from_string(i8* %35)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @sd_bus_error_setf(i32* %40, i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  store i32 %43, i32* %4, align 4
  br label %83

44:                                               ; preds = %34
  %45 = load i32*, i32** %10, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @bus_verify_manage_units_async(i32* %45, i32* %46, i32* %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %4, align 4
  br label %83

53:                                               ; preds = %44
  %54 = load i32, i32* %13, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 1, i32* %4, align 4
  br label %83

57:                                               ; preds = %53
  %58 = load i32*, i32** %10, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @transient_unit_from_message(i32* %58, i32* %59, i8* %60, i32** %12, i32* %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %4, align 4
  br label %83

67:                                               ; preds = %57
  %68 = load i32*, i32** %10, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @transient_aux_units_from_message(i32* %68, i32* %69, i32* %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %4, align 4
  br label %83

76:                                               ; preds = %67
  %77 = load i32*, i32** %5, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = load i32, i32* @JOB_START, align 4
  %80 = load i64, i64* %11, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @bus_unit_queue_job(i32* %77, i32* %78, i32 %79, i64 %80, i32 0, i32* %81)
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %76, %74, %65, %56, %51, %39, %32, %25
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @mac_selinux_access_check(i32*, i8*, i32*) #1

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i8**, i8**) #1

declare dso_local i64 @job_mode_from_string(i8*) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*, i8*) #1

declare dso_local i32 @bus_verify_manage_units_async(i32*, i32*, i32*) #1

declare dso_local i32 @transient_unit_from_message(i32*, i32*, i8*, i32**, i32*) #1

declare dso_local i32 @transient_aux_units_from_message(i32*, i32*, i32*) #1

declare dso_local i32 @bus_unit_queue_job(i32*, i32*, i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
