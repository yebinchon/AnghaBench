; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_check_basic_target.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_check_basic_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }

@SPECIAL_BASIC_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @manager_check_basic_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @manager_check_basic_target(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = call i32 @assert(%struct.TYPE_7__* %4)
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %33

16:                                               ; preds = %10, %1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = load i32, i32* @SPECIAL_BASIC_TARGET, align 4
  %19 = call i32* @manager_get_unit(%struct.TYPE_7__* %17, i32 %18)
  store i32* %19, i32** %3, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @unit_active_state(i32* %23)
  %25 = call i32 @UNIT_IS_ACTIVE_OR_RELOADING(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %16
  br label %33

28:                                               ; preds = %22
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = call i32 @manager_send_ready(%struct.TYPE_7__* %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = call i32 @log_taint_string(%struct.TYPE_7__* %31)
  br label %33

33:                                               ; preds = %28, %27, %15
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i32* @manager_get_unit(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @UNIT_IS_ACTIVE_OR_RELOADING(i32) #1

declare dso_local i32 @unit_active_state(i32*) #1

declare dso_local i32 @manager_send_ready(%struct.TYPE_7__*) #1

declare dso_local i32 @log_taint_string(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
