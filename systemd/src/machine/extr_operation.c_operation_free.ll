; ModuleID = '/home/carl/AnghaBench/systemd/src/machine/extr_operation.c_operation_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/machine/extr_operation.c_operation_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__*, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@operations = common dso_local global i32 0, align 4
@operations_by_machine = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @operation_free(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %5 = icmp ne %struct.TYPE_11__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %70

7:                                                ; preds = %1
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @sd_event_source_unref(i32 %10)
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @safe_close(i32 %14)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @safe_close(i32 %18)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %29

24:                                               ; preds = %7
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @sigkill_wait(i32 %27)
  br label %29

29:                                               ; preds = %24, %7
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @sd_bus_message_unref(i32 %32)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = icmp ne %struct.TYPE_9__* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %29
  %39 = load i32, i32* @operations, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = call i32 @LIST_REMOVE(i32 %39, i32 %44, %struct.TYPE_11__* %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %38, %29
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = icmp ne %struct.TYPE_10__* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load i32, i32* @operations_by_machine, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %66 = call i32 @LIST_REMOVE(i32 %59, i32 %64, %struct.TYPE_11__* %65)
  br label %67

67:                                               ; preds = %58, %53
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %69 = call %struct.TYPE_11__* @mfree(%struct.TYPE_11__* %68)
  store %struct.TYPE_11__* %69, %struct.TYPE_11__** %2, align 8
  br label %70

70:                                               ; preds = %67, %6
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  ret %struct.TYPE_11__* %71
}

declare dso_local i32 @sd_event_source_unref(i32) #1

declare dso_local i32 @safe_close(i32) #1

declare dso_local i32 @sigkill_wait(i32) #1

declare dso_local i32 @sd_bus_message_unref(i32) #1

declare dso_local i32 @LIST_REMOVE(i32, i32, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @mfree(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
