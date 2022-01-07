; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_socket.c_socket_stop.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_socket.c_socket_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@SOCKET_STOP_PRE = common dso_local global i32 0, align 4
@SOCKET_STOP_PRE_SIGTERM = common dso_local global i32 0, align 4
@SOCKET_STOP_PRE_SIGKILL = common dso_local global i32 0, align 4
@SOCKET_STOP_POST = common dso_local global i32 0, align 4
@SOCKET_FINAL_SIGTERM = common dso_local global i32 0, align 4
@SOCKET_FINAL_SIGKILL = common dso_local global i32 0, align 4
@SOCKET_START_PRE = common dso_local global i32 0, align 4
@SOCKET_START_CHOWN = common dso_local global i32 0, align 4
@SOCKET_START_POST = common dso_local global i32 0, align 4
@SOCKET_SUCCESS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SOCKET_CLEANING = common dso_local global i64 0, align 8
@SOCKET_LISTENING = common dso_local global i32 0, align 4
@SOCKET_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @socket_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_stop(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call %struct.TYPE_7__* @SOCKET(i32* %5)
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = call i32 @assert(%struct.TYPE_7__* %7)
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @SOCKET_STOP_PRE, align 4
  %13 = load i32, i32* @SOCKET_STOP_PRE_SIGTERM, align 4
  %14 = load i32, i32* @SOCKET_STOP_PRE_SIGKILL, align 4
  %15 = load i32, i32* @SOCKET_STOP_POST, align 4
  %16 = load i32, i32* @SOCKET_FINAL_SIGTERM, align 4
  %17 = load i32, i32* @SOCKET_FINAL_SIGKILL, align 4
  %18 = call %struct.TYPE_7__* (i64, i32, i32, ...) @IN_SET(i64 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

21:                                               ; preds = %1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @SOCKET_START_PRE, align 4
  %26 = load i32, i32* @SOCKET_START_CHOWN, align 4
  %27 = load i32, i32* @SOCKET_START_POST, align 4
  %28 = call %struct.TYPE_7__* (i64, i32, i32, ...) @IN_SET(i64 %24, i32 %25, i32 %26, i32 %27)
  %29 = icmp ne %struct.TYPE_7__* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = load i32, i32* @SOCKET_STOP_PRE_SIGTERM, align 4
  %33 = load i32, i32* @SOCKET_SUCCESS, align 4
  %34 = call i32 @socket_enter_signal(%struct.TYPE_7__* %31, i32 %32, i32 %33)
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %59

37:                                               ; preds = %21
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SOCKET_CLEANING, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = load i32, i32* @SOCKET_FINAL_SIGKILL, align 4
  %46 = load i32, i32* @SOCKET_SUCCESS, align 4
  %47 = call i32 @socket_enter_signal(%struct.TYPE_7__* %44, i32 %45, i32 %46)
  store i32 0, i32* %2, align 4
  br label %59

48:                                               ; preds = %37
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @SOCKET_LISTENING, align 4
  %53 = load i32, i32* @SOCKET_RUNNING, align 4
  %54 = call %struct.TYPE_7__* (i64, i32, i32, ...) @IN_SET(i64 %51, i32 %52, i32 %53)
  %55 = call i32 @assert(%struct.TYPE_7__* %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = load i32, i32* @SOCKET_SUCCESS, align 4
  %58 = call i32 @socket_enter_stop_pre(%struct.TYPE_7__* %56, i32 %57)
  store i32 1, i32* %2, align 4
  br label %59

59:                                               ; preds = %48, %43, %30, %20
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.TYPE_7__* @SOCKET(i32*) #1

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @IN_SET(i64, i32, i32, ...) #1

declare dso_local i32 @socket_enter_signal(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @socket_enter_stop_pre(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
