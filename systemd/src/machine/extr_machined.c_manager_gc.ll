; ModuleID = '/home/carl/AnghaBench/systemd/src/machine/extr_machined.c_manager_gc.c'
source_filename = "/home/carl/AnghaBench/systemd/src/machine/extr_machined.c_manager_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@gc_queue = common dso_local global i32 0, align 4
@MACHINE_CLOSING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32)* @manager_gc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @manager_gc(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_12__* %6)
  br label %8

8:                                                ; preds = %44, %2
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %5, align 8
  %12 = icmp ne %struct.TYPE_13__* %11, null
  br i1 %12, label %13, label %45

13:                                               ; preds = %8
  %14 = load i32, i32* @gc_queue, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = call i32 @LIST_REMOVE(i32 %14, %struct.TYPE_13__* %17, %struct.TYPE_13__* %18)
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @machine_may_gc(%struct.TYPE_13__* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %13
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = call i64 @machine_get_state(%struct.TYPE_13__* %27)
  %29 = load i64, i64* @MACHINE_CLOSING, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = call i32 @machine_stop(%struct.TYPE_13__* %32)
  br label %34

34:                                               ; preds = %31, %26, %13
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @machine_may_gc(%struct.TYPE_13__* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = call i32 @machine_finalize(%struct.TYPE_13__* %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = call i32 @machine_free(%struct.TYPE_13__* %42)
  br label %44

44:                                               ; preds = %39, %34
  br label %8

45:                                               ; preds = %8
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_12__*) #1

declare dso_local i32 @LIST_REMOVE(i32, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i64 @machine_may_gc(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @machine_get_state(%struct.TYPE_13__*) #1

declare dso_local i32 @machine_stop(%struct.TYPE_13__*) #1

declare dso_local i32 @machine_finalize(%struct.TYPE_13__*) #1

declare dso_local i32 @machine_free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
