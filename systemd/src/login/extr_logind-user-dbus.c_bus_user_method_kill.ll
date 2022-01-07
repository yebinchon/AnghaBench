; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-user-dbus.c_bus_user_method_kill.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-user-dbus.c_bus_user_method_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }

@CAP_KILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"org.freedesktop.login1.manage\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@SD_BUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Invalid signal %i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_user_method_kill(%struct.TYPE_11__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %8, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = call i32 @assert(%struct.TYPE_11__* %13)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %16 = call i32 @assert(%struct.TYPE_11__* %15)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = load i32, i32* @CAP_KILL, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @bus_verify_polkit_async(%struct.TYPE_11__* %17, i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32* null, i32 0, i32 %21, i32* %25, i32* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %63

32:                                               ; preds = %3
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %63

36:                                               ; preds = %32
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = call i32 @sd_bus_message_read(%struct.TYPE_11__* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %9)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %63

43:                                               ; preds = %36
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @SIGNAL_VALID(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @sd_bus_error_setf(i32* %48, i32 %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  store i32 %51, i32* %4, align 4
  br label %63

52:                                               ; preds = %43
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @user_kill(%struct.TYPE_11__* %53, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %4, align 4
  br label %63

60:                                               ; preds = %52
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %62 = call i32 @sd_bus_reply_method_return(%struct.TYPE_11__* %61, i32* null)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %58, %47, %41, %35, %30
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local i32 @bus_verify_polkit_async(%struct.TYPE_11__*, i32, i8*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @sd_bus_message_read(%struct.TYPE_11__*, i8*, i32*) #1

declare dso_local i32 @SIGNAL_VALID(i32) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*, i32) #1

declare dso_local i32 @user_kill(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @sd_bus_reply_method_return(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
