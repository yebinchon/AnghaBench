; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-dbus.c_send_prepare_for.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-dbus.c_send_prepare_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@INHIBIT_SHUTDOWN = common dso_local global i64 0, align 8
@INHIBIT_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"/org/freedesktop/login1\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"org.freedesktop.login1.Manager\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"PrepareForShutdown\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"PrepareForSleep\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64, i32)* @send_prepare_for to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_prepare_for(%struct.TYPE_5__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = call i32 @assert(%struct.TYPE_5__* %9)
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @INHIBIT_SHUTDOWN, align 8
  %13 = load i32, i32* @INHIBIT_SLEEP, align 4
  %14 = call %struct.TYPE_5__* @IN_SET(i64 %11, i64 %12, i32 %13)
  %15 = call i32 @assert(%struct.TYPE_5__* %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @INHIBIT_SHUTDOWN, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @sd_bus_emit_signal(i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %24)
  ret i32 %25
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @IN_SET(i64, i64, i32) #1

declare dso_local i32 @sd_bus_emit_signal(i32, i8*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
