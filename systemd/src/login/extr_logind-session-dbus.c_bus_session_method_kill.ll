; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-session-dbus.c_bus_session_method_kill.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-session-dbus.c_bus_session_method_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"si\00", align 1
@KILL_ALL = common dso_local global i64 0, align 8
@SD_BUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Invalid kill parameter '%s'\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Invalid signal %i\00", align 1
@CAP_KILL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"org.freedesktop.login1.manage\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_session_method_kill(%struct.TYPE_13__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %8, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = call i32 @assert(%struct.TYPE_13__* %15)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %18 = call i32 @assert(%struct.TYPE_13__* %17)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = call i32 @sd_bus_message_read(%struct.TYPE_13__* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %9, i8** %10)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %4, align 4
  br label %85

25:                                               ; preds = %3
  %26 = load i8*, i8** %9, align 8
  %27 = call i64 @isempty(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i64, i64* @KILL_ALL, align 8
  store i64 %30, i64* %11, align 8
  br label %42

31:                                               ; preds = %25
  %32 = load i8*, i8** %9, align 8
  %33 = call i64 @kill_who_from_string(i8* %32)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @sd_bus_error_setf(i32* %37, i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  store i32 %40, i32* %4, align 4
  br label %85

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %29
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @SIGNAL_VALID(i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @sd_bus_error_setf(i32* %47, i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  store i32 %50, i32* %4, align 4
  br label %85

51:                                               ; preds = %42
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = load i32, i32* @CAP_KILL, align 4
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @bus_verify_polkit_async(%struct.TYPE_13__* %52, i32 %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 0, i32 %58, i32* %62, i32* %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %51
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %4, align 4
  br label %85

69:                                               ; preds = %51
  %70 = load i32, i32* %12, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 1, i32* %4, align 4
  br label %85

73:                                               ; preds = %69
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @session_kill(%struct.TYPE_13__* %74, i64 %75, i8* %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %4, align 4
  br label %85

82:                                               ; preds = %73
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %84 = call i32 @sd_bus_reply_method_return(%struct.TYPE_13__* %83, i32* null)
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %82, %80, %72, %67, %46, %36, %23
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @assert(%struct.TYPE_13__*) #1

declare dso_local i32 @sd_bus_message_read(%struct.TYPE_13__*, i8*, i8**, i8**) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i64 @kill_who_from_string(i8*) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*, i8*) #1

declare dso_local i32 @SIGNAL_VALID(i8*) #1

declare dso_local i32 @bus_verify_polkit_async(%struct.TYPE_13__*, i32, i8*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @session_kill(%struct.TYPE_13__*, i64, i8*) #1

declare dso_local i32 @sd_bus_reply_method_return(%struct.TYPE_13__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
