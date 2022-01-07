; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-session-dbus.c_bus_session_method_lock.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-session-dbus.c_bus_session_method_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"org.freedesktop.login1.lock-sessions\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Lock\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_session_method_lock(%struct.TYPE_13__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %8, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = call i32 @assert(%struct.TYPE_13__* %12)
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %15 = call i32 @assert(%struct.TYPE_13__* %14)
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @bus_verify_polkit_async(%struct.TYPE_13__* %16, i32 %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32* null, i32 0, i32 %22, i32* %26, i32* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %50

33:                                               ; preds = %3
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %50

37:                                               ; preds = %33
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %40 = call i32 @sd_bus_message_get_member(%struct.TYPE_13__* %39)
  %41 = call i32 @strstr(i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @session_send_lock(%struct.TYPE_13__* %38, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %50

47:                                               ; preds = %37
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = call i32 @sd_bus_reply_method_return(%struct.TYPE_13__* %48, i32* null)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %45, %36, %31
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @assert(%struct.TYPE_13__*) #1

declare dso_local i32 @bus_verify_polkit_async(%struct.TYPE_13__*, i32, i8*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @session_send_lock(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @strstr(i32, i8*) #1

declare dso_local i32 @sd_bus_message_get_member(%struct.TYPE_13__*) #1

declare dso_local i32 @sd_bus_reply_method_return(%struct.TYPE_13__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
