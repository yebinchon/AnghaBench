; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_automount.c_automount_set_state.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_automount.c_automount_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@AUTOMOUNT_RUNNING = common dso_local global i64 0, align 8
@AUTOMOUNT_WAITING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Changed %s -> %s\00", align 1
@state_translation_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i64)* @automount_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @automount_set_state(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_7__* %6)
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = call i32 @UNIT(%struct.TYPE_7__* %14)
  %16 = call i32 @bus_unit_send_pending_change_signal(i32 %15, i32 0)
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @AUTOMOUNT_RUNNING, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = call i32 @automount_stop_expire(%struct.TYPE_7__* %28)
  br label %30

30:                                               ; preds = %27, %17
  %31 = load i64, i64* %4, align 8
  %32 = load i32, i32* @AUTOMOUNT_WAITING, align 4
  %33 = load i64, i64* @AUTOMOUNT_RUNNING, align 8
  %34 = call i32 @IN_SET(i64 %31, i32 %32, i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = call i32 @unmount_autofs(%struct.TYPE_7__* %37)
  br label %39

39:                                               ; preds = %36, %30
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = call i32 @UNIT(%struct.TYPE_7__* %44)
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @automount_state_to_string(i64 %46)
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @automount_state_to_string(i64 %48)
  %50 = call i32 @log_unit_debug(i32 %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %49)
  br label %51

51:                                               ; preds = %43, %39
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = call i32 @UNIT(%struct.TYPE_7__* %52)
  %54 = load i32*, i32** @state_translation_table, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** @state_translation_table, align 8
  %59 = load i64, i64* %4, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @unit_notify(i32 %53, i32 %57, i32 %61, i32 0)
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i32 @bus_unit_send_pending_change_signal(i32, i32) #1

declare dso_local i32 @UNIT(%struct.TYPE_7__*) #1

declare dso_local i32 @automount_stop_expire(%struct.TYPE_7__*) #1

declare dso_local i32 @IN_SET(i64, i32, i64) #1

declare dso_local i32 @unmount_autofs(%struct.TYPE_7__*) #1

declare dso_local i32 @log_unit_debug(i32, i8*, i32, i32) #1

declare dso_local i32 @automount_state_to_string(i64) #1

declare dso_local i32 @unit_notify(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
