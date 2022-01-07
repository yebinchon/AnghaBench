; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-unit.c_bus_unit_method_start_generic.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-unit.c_bus_unit_method_start_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_JOB_TYPE_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@SD_BUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Job mode %s invalid\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"reload-or-\00", align 1
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@polkit_message_for_job = common dso_local global i32* null, align 8
@BUS_UNIT_QUEUE_RELOAD_IF_POSSIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_unit_method_start_generic(i32* %0, i32* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = ptrtoint i32* %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32*, i32** %8, align 8
  %20 = ptrtoint i32* %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i64, i64* %9, align 8
  %23 = icmp uge i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @_JOB_TYPE_MAX, align 8
  %27 = icmp ult i64 %25, %26
  br label %28

28:                                               ; preds = %24, %5
  %29 = phi i1 [ false, %5 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @job_type_to_access_method(i64 %34)
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @mac_selinux_unit_access_check(i32* %32, i32* %33, i32 %35, i32* %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* %6, align 4
  br label %102

42:                                               ; preds = %28
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @sd_bus_message_read(i32* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %12)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %15, align 4
  store i32 %48, i32* %6, align 4
  br label %102

49:                                               ; preds = %42
  %50 = load i8*, i8** %12, align 8
  %51 = call i64 @job_mode_from_string(i8* %50)
  store i64 %51, i64* %14, align 8
  %52 = load i64, i64* %14, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %57 = load i8*, i8** %12, align 8
  %58 = call i32 @sd_bus_error_setf(i32* %55, i32 %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  store i32 %58, i32* %6, align 4
  br label %102

59:                                               ; preds = %49
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i64, i64* %9, align 8
  %64 = call i8* @job_type_to_string(i64 %63)
  %65 = call i8* @strjoina(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %64)
  store i8* %65, i8** %13, align 8
  br label %69

66:                                               ; preds = %59
  %67 = load i64, i64* %9, align 8
  %68 = call i8* @job_type_to_string(i64 %67)
  store i8* %68, i8** %13, align 8
  br label %69

69:                                               ; preds = %66, %62
  %70 = load i32*, i32** %8, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %73 = load i32*, i32** @polkit_message_for_job, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @bus_verify_manage_units_async_full(i32* %70, i8* %71, i32 %72, i32 %76, i32 1, i32* %77, i32* %78)
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %69
  %83 = load i32, i32* %15, align 4
  store i32 %83, i32* %6, align 4
  br label %102

84:                                               ; preds = %69
  %85 = load i32, i32* %15, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 1, i32* %6, align 4
  br label %102

88:                                               ; preds = %84
  %89 = load i32*, i32** %7, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* %14, align 8
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i32, i32* @BUS_UNIT_QUEUE_RELOAD_IF_POSSIBLE, align 4
  br label %98

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97, %95
  %99 = phi i32 [ %96, %95 ], [ 0, %97 ]
  %100 = load i32*, i32** %11, align 8
  %101 = call i32 @bus_unit_queue_job(i32* %89, i32* %90, i64 %91, i64 %92, i32 %99, i32* %100)
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %98, %87, %82, %54, %47, %40
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mac_selinux_unit_access_check(i32*, i32*, i32, i32*) #1

declare dso_local i32 @job_type_to_access_method(i64) #1

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i8**) #1

declare dso_local i64 @job_mode_from_string(i8*) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*, i8*) #1

declare dso_local i8* @strjoina(i8*, i8*) #1

declare dso_local i8* @job_type_to_string(i64) #1

declare dso_local i32 @bus_verify_manage_units_async_full(i32*, i8*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @bus_unit_queue_job(i32*, i32*, i64, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
