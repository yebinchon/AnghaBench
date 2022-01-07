; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journald-server.c_server_done.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journald-server.c_server_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_done(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %4 = call i32 @assert(%struct.TYPE_9__* %3)
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 36
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @set_free_with_destructor(i32 %7, i32 (i32)* @journal_file_close)
  br label %9

9:                                                ; preds = %14, %1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 35
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 35
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @stdout_stream_free(i64 %17)
  br label %9

19:                                               ; preds = %9
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = call i32 @client_context_flush_all(%struct.TYPE_9__* %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 34
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @journal_file_close(i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 33
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @journal_file_close(i32 %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 32
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ordered_hashmap_free_with_destructor(i32 %32, i32 (i32)* @journal_file_close)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 31
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @varlink_server_unref(i32 %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 30
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @sd_event_source_unref(i32 %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 29
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @sd_event_source_unref(i32 %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 28
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @sd_event_source_unref(i32 %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 27
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @sd_event_source_unref(i32 %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 26
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @sd_event_source_unref(i32 %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 25
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @sd_event_source_unref(i32 %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 24
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @sd_event_source_unref(i32 %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 23
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @sd_event_source_unref(i32 %68)
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 22
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @sd_event_source_unref(i32 %72)
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 21
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @sd_event_source_unref(i32 %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 20
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @sd_event_source_unref(i32 %80)
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 19
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @sd_event_source_unref(i32 %84)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 18
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @sd_event_source_unref(i32 %88)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 17
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @sd_event_source_unref(i32 %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 16
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @sd_event_unref(i32 %96)
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 15
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @safe_close(i32 %100)
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 14
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @safe_close(i32 %104)
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 13
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @safe_close(i32 %108)
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 12
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @safe_close(i32 %112)
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 11
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @safe_close(i32 %116)
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 10
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @safe_close(i32 %120)
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 9
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @safe_close(i32 %124)
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 8
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %19
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 8
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @journal_ratelimit_free(i64 %133)
  br label %135

135:                                              ; preds = %130, %19
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 7
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 7
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @munmap(i64 %143, i32 4)
  br label %145

145:                                              ; preds = %140, %135
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @free(i32 %148)
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @free(i32 %152)
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @free(i32 %156)
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @free(i32 %160)
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @free(i32 %165)
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @free(i32 %170)
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @mmap_cache_unref(i32 %174)
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_9__*) #1

declare dso_local i32 @set_free_with_destructor(i32, i32 (i32)*) #1

declare dso_local i32 @journal_file_close(i32) #1

declare dso_local i32 @stdout_stream_free(i64) #1

declare dso_local i32 @client_context_flush_all(%struct.TYPE_9__*) #1

declare dso_local i32 @ordered_hashmap_free_with_destructor(i32, i32 (i32)*) #1

declare dso_local i32 @varlink_server_unref(i32) #1

declare dso_local i32 @sd_event_source_unref(i32) #1

declare dso_local i32 @sd_event_unref(i32) #1

declare dso_local i32 @safe_close(i32) #1

declare dso_local i32 @journal_ratelimit_free(i64) #1

declare dso_local i32 @munmap(i64, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @mmap_cache_unref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
