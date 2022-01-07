; ModuleID = '/home/carl/AnghaBench/streem/src/extr_latch.c_strm_latch_new.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_latch.c_strm_latch_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.latch_data = type { i8*, i8* }

@strm_consumer = common dso_local global i32 0, align 4
@latch_push = common dso_local global i32 0, align 4
@latch_close = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @strm_latch_new() #0 {
  %1 = alloca %struct.latch_data*, align 8
  %2 = call %struct.latch_data* @malloc(i32 16)
  store %struct.latch_data* %2, %struct.latch_data** %1, align 8
  %3 = load %struct.latch_data*, %struct.latch_data** %1, align 8
  %4 = icmp ne %struct.latch_data* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = call i8* (...) @strm_queue_new()
  %8 = load %struct.latch_data*, %struct.latch_data** %1, align 8
  %9 = getelementptr inbounds %struct.latch_data, %struct.latch_data* %8, i32 0, i32 1
  store i8* %7, i8** %9, align 8
  %10 = call i8* (...) @strm_queue_new()
  %11 = load %struct.latch_data*, %struct.latch_data** %1, align 8
  %12 = getelementptr inbounds %struct.latch_data, %struct.latch_data* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load i32, i32* @strm_consumer, align 4
  %14 = load i32, i32* @latch_push, align 4
  %15 = load i32, i32* @latch_close, align 4
  %16 = load %struct.latch_data*, %struct.latch_data** %1, align 8
  %17 = call i32* @strm_stream_new(i32 %13, i32 %14, i32 %15, %struct.latch_data* %16)
  ret i32* %17
}

declare dso_local %struct.latch_data* @malloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @strm_queue_new(...) #1

declare dso_local i32* @strm_stream_new(i32, i32, i32, %struct.latch_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
