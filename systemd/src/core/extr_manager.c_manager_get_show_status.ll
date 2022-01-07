; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_get_show_status.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_get_show_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }

@MANAGER_INITIALIZING = common dso_local global i32 0, align 4
@MANAGER_STARTING = common dso_local global i32 0, align 4
@MANAGER_STOPPING = common dso_local global i32 0, align 4
@STATUS_TYPE_EMERGENCY = common dso_local global i64 0, align 8
@SHOW_STATUS_TEMPORARY = common dso_local global i32 0, align 4
@SHOW_STATUS_YES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64)* @manager_get_show_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manager_get_show_status(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %7 = call i32 @assert(%struct.TYPE_7__* %6)
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = call i32 @MANAGER_IS_SYSTEM(%struct.TYPE_7__* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %43

18:                                               ; preds = %12
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = call i32 @manager_state(%struct.TYPE_7__* %19)
  %21 = load i32, i32* @MANAGER_INITIALIZING, align 4
  %22 = load i32, i32* @MANAGER_STARTING, align 4
  %23 = load i32, i32* @MANAGER_STOPPING, align 4
  %24 = call i32 (i32, i32, i32, ...) @IN_SET(i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %43

27:                                               ; preds = %18
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @STATUS_TYPE_EMERGENCY, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = call i64 @manager_check_ask_password(%struct.TYPE_7__* %32)
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %43

36:                                               ; preds = %31, %27
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SHOW_STATUS_TEMPORARY, align 4
  %41 = load i32, i32* @SHOW_STATUS_YES, align 4
  %42 = call i32 (i32, i32, i32, ...) @IN_SET(i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %36, %35, %26, %17, %11
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i32 @MANAGER_IS_SYSTEM(%struct.TYPE_7__*) #1

declare dso_local i32 @IN_SET(i32, i32, i32, ...) #1

declare dso_local i32 @manager_state(%struct.TYPE_7__*) #1

declare dso_local i64 @manager_check_ask_password(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
