; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_path.c_path_start.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_path.c_path_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@PATH_DEAD = common dso_local global i32 0, align 4
@PATH_FAILED = common dso_local global i32 0, align 4
@PATH_FAILURE_START_LIMIT_HIT = common dso_local global i32 0, align 4
@PATH_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @path_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @path_start(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.TYPE_8__* @PATH(i32* %6)
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %4, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = call i32 @assert(%struct.TYPE_8__* %8)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PATH_DEAD, align 4
  %14 = load i32, i32* @PATH_FAILED, align 4
  %15 = call %struct.TYPE_8__* @IN_SET(i32 %12, i32 %13, i32 %14)
  %16 = call i32 @assert(%struct.TYPE_8__* %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @unit_test_trigger_loaded(i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %48

23:                                               ; preds = %1
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @unit_test_start_limit(i32* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = load i32, i32* @PATH_FAILURE_START_LIMIT_HIT, align 4
  %31 = call i32 @path_enter_dead(%struct.TYPE_8__* %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %48

33:                                               ; preds = %23
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @unit_acquire_invocation_id(i32* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %48

40:                                               ; preds = %33
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = call i32 @path_mkdir(%struct.TYPE_8__* %41)
  %43 = load i32, i32* @PATH_SUCCESS, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = call i32 @path_enter_waiting(%struct.TYPE_8__* %46, i32 1, i32 1)
  store i32 1, i32* %2, align 4
  br label %48

48:                                               ; preds = %40, %38, %28, %21
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.TYPE_8__* @PATH(i32*) #1

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @IN_SET(i32, i32, i32) #1

declare dso_local i32 @unit_test_trigger_loaded(i32*) #1

declare dso_local i32 @unit_test_start_limit(i32*) #1

declare dso_local i32 @path_enter_dead(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @unit_acquire_invocation_id(i32*) #1

declare dso_local i32 @path_mkdir(%struct.TYPE_8__*) #1

declare dso_local i32 @path_enter_waiting(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
