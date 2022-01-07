; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journald-stream.c_stdout_stream_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journald-stream.c_stdout_stream_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i64, %struct.TYPE_7__*, i64, i64 }
%struct.TYPE_7__ = type { i64, i32, i32 }

@stdout_stream = common dso_local global i32 0, align 4
@stdout_stream_notify_queue = common dso_local global i32 0, align 4
@SD_EVENT_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stdout_stream_free(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %4 = icmp ne %struct.TYPE_6__* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %105

6:                                                ; preds = %1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 7
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = icmp ne %struct.TYPE_7__* %9, null
  br i1 %10, label %11, label %61

11:                                               ; preds = %6
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 9
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 7
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 9
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @client_context_release(%struct.TYPE_7__* %19, i64 %22)
  br label %24

24:                                               ; preds = %16, %11
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 7
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 7
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %36, align 8
  %39 = load i32, i32* @stdout_stream, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 7
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %46 = call i32 @LIST_REMOVE(i32 %39, i32 %44, %struct.TYPE_6__* %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 8
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %24
  %52 = load i32, i32* @stdout_stream_notify_queue, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 7
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %59 = call i32 @LIST_REMOVE(i32 %52, i32 %57, %struct.TYPE_6__* %58)
  br label %60

60:                                               ; preds = %51, %24
  br label %61

61:                                               ; preds = %60, %6
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @SD_EVENT_OFF, align 4
  %71 = call i32 @sd_event_source_set_enabled(i64 %69, i32 %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @sd_event_source_unref(i64 %74)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 6
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %66, %61
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @safe_close(i32 %81)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = call i32 @free(%struct.TYPE_6__* %85)
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = call i32 @free(%struct.TYPE_6__* %89)
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = call i32 @free(%struct.TYPE_6__* %93)
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = call i32 @free(%struct.TYPE_6__* %97)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = call i32 @free(%struct.TYPE_6__* %101)
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %104 = call i32 @free(%struct.TYPE_6__* %103)
  br label %105

105:                                              ; preds = %78, %5
  ret void
}

declare dso_local i32 @client_context_release(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @LIST_REMOVE(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @sd_event_source_set_enabled(i64, i32) #1

declare dso_local i64 @sd_event_source_unref(i64) #1

declare dso_local i32 @safe_close(i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
