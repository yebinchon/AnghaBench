; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-query.c_dns_query_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-query.c_dns_query_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__*, i32, %struct.TYPE_17__*, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32 }

@auxiliary_queries = common dso_local global i32 0, align 4
@queries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @dns_query_free(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %4 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %5 = icmp ne %struct.TYPE_16__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %2, align 8
  br label %120

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %13, %7
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 10
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %12 = icmp ne %struct.TYPE_16__* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 10
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %17 = call %struct.TYPE_16__* @dns_query_free(%struct.TYPE_16__* %16)
  br label %8

18:                                               ; preds = %8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 9
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = icmp ne %struct.TYPE_14__* %21, null
  br i1 %22, label %23, label %46

23:                                               ; preds = %18
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 9
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 9
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %35, align 8
  %38 = load i32, i32* @auxiliary_queries, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 9
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = call i32 @LIST_REMOVE(i32 %38, i32 %43, %struct.TYPE_16__* %44)
  br label %46

46:                                               ; preds = %23, %18
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %48 = call i32 @dns_query_free_candidates(%struct.TYPE_16__* %47)
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dns_question_unref(i32 %51)
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dns_question_unref(i32 %55)
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %58 = call i32 @dns_query_reset_answer(%struct.TYPE_16__* %57)
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @sd_bus_message_unref(i32 %61)
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @sd_bus_track_unref(i32 %65)
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dns_packet_unref(i32 %69)
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dns_packet_unref(i32 %73)
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = icmp ne %struct.TYPE_17__* %77, null
  br i1 %78, label %79, label %93

79:                                               ; preds = %46
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %86 = call i32 @set_remove(i32 %84, %struct.TYPE_16__* %85)
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %88, align 8
  %90 = call %struct.TYPE_17__* @dns_stream_unref(%struct.TYPE_17__* %89)
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 2
  store %struct.TYPE_17__* %90, %struct.TYPE_17__** %92, align 8
  br label %93

93:                                               ; preds = %79, %46
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @free(i32 %96)
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %99, align 8
  %101 = icmp ne %struct.TYPE_15__* %100, null
  br i1 %101, label %102, label %117

102:                                              ; preds = %93
  %103 = load i32, i32* @queries, align 4
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %110 = call i32 @LIST_REMOVE(i32 %103, i32 %108, %struct.TYPE_16__* %109)
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %102, %93
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %119 = call %struct.TYPE_16__* @mfree(%struct.TYPE_16__* %118)
  store %struct.TYPE_16__* %119, %struct.TYPE_16__** %2, align 8
  br label %120

120:                                              ; preds = %117, %6
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  ret %struct.TYPE_16__* %121
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @LIST_REMOVE(i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @dns_query_free_candidates(%struct.TYPE_16__*) #1

declare dso_local i32 @dns_question_unref(i32) #1

declare dso_local i32 @dns_query_reset_answer(%struct.TYPE_16__*) #1

declare dso_local i32 @sd_bus_message_unref(i32) #1

declare dso_local i32 @sd_bus_track_unref(i32) #1

declare dso_local i32 @dns_packet_unref(i32) #1

declare dso_local i32 @set_remove(i32, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_17__* @dns_stream_unref(%struct.TYPE_17__*) #1

declare dso_local i32 @free(i32) #1

declare dso_local %struct.TYPE_16__* @mfree(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
