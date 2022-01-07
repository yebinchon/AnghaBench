; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-session-dbus.c_bus_session_method_terminate.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-session-dbus.c_bus_session_method_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@CAP_KILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"org.freedesktop.login1.manage\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_session_method_terminate(%struct.TYPE_12__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %8, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = call i32 @assert(%struct.TYPE_12__* %12)
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %15 = call i32 @assert(%struct.TYPE_12__* %14)
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = load i32, i32* @CAP_KILL, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @bus_verify_polkit_async(%struct.TYPE_12__* %16, i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32* null, i32 0, i32 %22, i32* %26, i32* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %47

33:                                               ; preds = %3
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %47

37:                                               ; preds = %33
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %39 = call i32 @session_stop(%struct.TYPE_12__* %38, i32 1)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %47

44:                                               ; preds = %37
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = call i32 @sd_bus_reply_method_return(%struct.TYPE_12__* %45, i32* null)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %44, %42, %36, %31
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @assert(%struct.TYPE_12__*) #1

declare dso_local i32 @bus_verify_polkit_async(%struct.TYPE_12__*, i32, i8*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @session_stop(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @sd_bus_reply_method_return(%struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
