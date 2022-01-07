; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-unit.c_bus_unit_method_kill.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-unit.c_bus_unit_method_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"si\00", align 1
@KILL_ALL = common dso_local global i64 0, align 8
@SD_BUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid who argument %s\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Signal number out of range.\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@CAP_KILL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [80 x i8] c"Authentication is required to send a UNIX signal to the processes of '$(unit)'.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_unit_method_kill(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @assert(i32* %15)
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @assert(i32* %17)
  %19 = load i32*, i32** %8, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @mac_selinux_unit_access_check(i32* %19, i32* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %4, align 4
  br label %87

27:                                               ; preds = %3
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @sd_bus_message_read(i32* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %9, i32* %10)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %4, align 4
  br label %87

34:                                               ; preds = %27
  %35 = load i8*, i8** %9, align 8
  %36 = call i64 @isempty(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* @KILL_ALL, align 8
  store i64 %39, i64* %11, align 8
  br label %51

40:                                               ; preds = %34
  %41 = load i8*, i8** %9, align 8
  %42 = call i64 @kill_who_from_string(i8* %41)
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 (i32*, i32, i8*, ...) @sd_bus_error_setf(i32* %46, i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  store i32 %49, i32* %4, align 4
  br label %87

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %38
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @SIGNAL_VALID(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %58 = call i32 (i32*, i32, i8*, ...) @sd_bus_error_setf(i32* %56, i32 %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 %58, i32* %4, align 4
  br label %87

59:                                               ; preds = %51
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* @CAP_KILL, align 4
  %62 = call i32 @N_(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.5, i64 0, i64 0))
  %63 = load i32*, i32** %5, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @bus_verify_manage_units_async_full(i32* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %61, i32 %62, i32 1, i32* %63, i32* %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %4, align 4
  br label %87

70:                                               ; preds = %59
  %71 = load i32, i32* %12, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 1, i32* %4, align 4
  br label %87

74:                                               ; preds = %70
  %75 = load i32*, i32** %8, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @unit_kill(i32* %75, i64 %76, i32 %77, i32* %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %4, align 4
  br label %87

84:                                               ; preds = %74
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @sd_bus_reply_method_return(i32* %85, i32* null)
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %84, %82, %73, %68, %55, %45, %32, %25
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @mac_selinux_unit_access_check(i32*, i32*, i8*, i32*) #1

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i8**, i32*) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i64 @kill_who_from_string(i8*) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*, ...) #1

declare dso_local i32 @SIGNAL_VALID(i32) #1

declare dso_local i32 @bus_verify_manage_units_async_full(i32*, i8*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @unit_kill(i32*, i64, i32, i32*) #1

declare dso_local i32 @sd_bus_reply_method_return(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
