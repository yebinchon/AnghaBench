; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_state.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@SPECIAL_BASIC_TARGET = common dso_local global i32 0, align 4
@MANAGER_INITIALIZING = common dso_local global i32 0, align 4
@MANAGER_STARTING = common dso_local global i32 0, align 4
@SPECIAL_SHUTDOWN_TARGET = common dso_local global i32 0, align 4
@MANAGER_STOPPING = common dso_local global i32 0, align 4
@SPECIAL_RESCUE_TARGET = common dso_local global i32 0, align 4
@MANAGER_MAINTENANCE = common dso_local global i32 0, align 4
@SPECIAL_EMERGENCY_TARGET = common dso_local global i32 0, align 4
@MANAGER_DEGRADED = common dso_local global i32 0, align 4
@MANAGER_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @manager_state(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_7__* %5)
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = call i32 @MANAGER_IS_FINISHED(%struct.TYPE_7__* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = load i32, i32* @SPECIAL_BASIC_TARGET, align 4
  %13 = call i32* @manager_get_unit(%struct.TYPE_7__* %11, i32 %12)
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @unit_active_state(i32* %17)
  %19 = call i32 @UNIT_IS_ACTIVE_OR_RELOADING(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16, %10
  %22 = load i32, i32* @MANAGER_INITIALIZING, align 4
  store i32 %22, i32* %2, align 4
  br label %76

23:                                               ; preds = %16
  %24 = load i32, i32* @MANAGER_STARTING, align 4
  store i32 %24, i32* %2, align 4
  br label %76

25:                                               ; preds = %1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = load i32, i32* @SPECIAL_SHUTDOWN_TARGET, align 4
  %28 = call i32* @manager_get_unit(%struct.TYPE_7__* %26, i32 %27)
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @unit_active_or_pending(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @MANAGER_STOPPING, align 4
  store i32 %36, i32* %2, align 4
  br label %76

37:                                               ; preds = %31, %25
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = call i64 @MANAGER_IS_SYSTEM(%struct.TYPE_7__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %37
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = load i32, i32* @SPECIAL_RESCUE_TARGET, align 4
  %44 = call i32* @manager_get_unit(%struct.TYPE_7__* %42, i32 %43)
  store i32* %44, i32** %4, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load i32*, i32** %4, align 8
  %49 = call i64 @unit_active_or_pending(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @MANAGER_MAINTENANCE, align 4
  store i32 %52, i32* %2, align 4
  br label %76

53:                                               ; preds = %47, %41
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = load i32, i32* @SPECIAL_EMERGENCY_TARGET, align 4
  %56 = call i32* @manager_get_unit(%struct.TYPE_7__* %54, i32 %55)
  store i32* %56, i32** %4, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32*, i32** %4, align 8
  %61 = call i64 @unit_active_or_pending(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @MANAGER_MAINTENANCE, align 4
  store i32 %64, i32* %2, align 4
  br label %76

65:                                               ; preds = %59, %53
  br label %66

66:                                               ; preds = %65, %37
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @set_size(i32 %69)
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @MANAGER_DEGRADED, align 4
  store i32 %73, i32* %2, align 4
  br label %76

74:                                               ; preds = %66
  %75 = load i32, i32* @MANAGER_RUNNING, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %72, %63, %51, %35, %23, %21
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i32 @MANAGER_IS_FINISHED(%struct.TYPE_7__*) #1

declare dso_local i32* @manager_get_unit(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @UNIT_IS_ACTIVE_OR_RELOADING(i32) #1

declare dso_local i32 @unit_active_state(i32*) #1

declare dso_local i64 @unit_active_or_pending(i32*) #1

declare dso_local i64 @MANAGER_IS_SYSTEM(%struct.TYPE_7__*) #1

declare dso_local i64 @set_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
