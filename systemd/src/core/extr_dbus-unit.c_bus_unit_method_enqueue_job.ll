; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-unit.c_bus_unit_method_enqueue_job.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-unit.c_bus_unit_method_enqueue_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUS_UNIT_QUEUE_VERBOSE_REPLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"reload-or-restart\00", align 1
@JOB_RESTART = common dso_local global i64 0, align 8
@BUS_UNIT_QUEUE_RELOAD_IF_POSSIBLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"reload-or-try-restart\00", align 1
@JOB_TRY_RESTART = common dso_local global i64 0, align 8
@SD_BUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Job type %s invalid\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Job mode %s invalid\00", align 1
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@polkit_message_for_job = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_unit_method_enqueue_job(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i32, i32* @BUS_UNIT_QUEUE_VERBOSE_REPLY, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @assert(i32* %18)
  %20 = load i32*, i32** %11, align 8
  %21 = call i32 @assert(i32* %20)
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @sd_bus_message_read(i32* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %9, i8** %10)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %4, align 4
  br label %106

28:                                               ; preds = %3
  %29 = load i8*, i8** %9, align 8
  %30 = call i64 @streq(i8* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i64, i64* @JOB_RESTART, align 8
  store i64 %33, i64* %12, align 8
  %34 = load i32, i32* @BUS_UNIT_QUEUE_RELOAD_IF_POSSIBLE, align 4
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  br label %58

37:                                               ; preds = %28
  %38 = load i8*, i8** %9, align 8
  %39 = call i64 @streq(i8* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i64, i64* @JOB_TRY_RESTART, align 8
  store i64 %42, i64* %12, align 8
  %43 = load i32, i32* @BUS_UNIT_QUEUE_RELOAD_IF_POSSIBLE, align 4
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %57

46:                                               ; preds = %37
  %47 = load i8*, i8** %9, align 8
  %48 = call i64 @job_type_from_string(i8* %47)
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %12, align 8
  %50 = icmp ult i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @sd_bus_error_setf(i32* %52, i32 %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  store i32 %55, i32* %4, align 4
  br label %106

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %41
  br label %58

58:                                               ; preds = %57, %32
  %59 = load i8*, i8** %10, align 8
  %60 = call i64 @job_mode_from_string(i8* %59)
  store i64 %60, i64* %13, align 8
  %61 = load i64, i64* %13, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @sd_bus_error_setf(i32* %64, i32 %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  store i32 %67, i32* %4, align 4
  br label %106

68:                                               ; preds = %58
  %69 = load i32*, i32** %11, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = load i64, i64* %12, align 8
  %72 = call i32 @job_type_to_access_method(i64 %71)
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @mac_selinux_unit_access_check(i32* %69, i32* %70, i32 %72, i32* %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %4, align 4
  br label %106

79:                                               ; preds = %68
  %80 = load i32*, i32** %11, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %83 = load i32*, i32** @polkit_message_for_job, align 8
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @bus_verify_manage_units_async_full(i32* %80, i8* %81, i32 %82, i32 %86, i32 1, i32* %87, i32* %88)
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %79
  %93 = load i32, i32* %14, align 4
  store i32 %93, i32* %4, align 4
  br label %106

94:                                               ; preds = %79
  %95 = load i32, i32* %14, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 1, i32* %4, align 4
  br label %106

98:                                               ; preds = %94
  %99 = load i32*, i32** %5, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = load i64, i64* %12, align 8
  %102 = load i64, i64* %13, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = call i32 @bus_unit_queue_job(i32* %99, i32* %100, i64 %101, i64 %102, i32 %103, i32* %104)
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %98, %97, %92, %77, %63, %51, %26
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i8**, i8**) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i64 @job_type_from_string(i8*) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*, i8*) #1

declare dso_local i64 @job_mode_from_string(i8*) #1

declare dso_local i32 @mac_selinux_unit_access_check(i32*, i32*, i32, i32*) #1

declare dso_local i32 @job_type_to_access_method(i64) #1

declare dso_local i32 @bus_verify_manage_units_async_full(i32*, i8*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @bus_unit_queue_job(i32*, i32*, i64, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
