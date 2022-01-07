; ModuleID = '/home/carl/AnghaBench/streem/src/extr_latch.c_strm_latch_receive.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_latch.c_strm_latch_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.latch_data* }
%struct.latch_data = type { i32, i32 }
%struct.recv_data = type { i32 (%struct.TYPE_7__*, i32)*, %struct.TYPE_7__* }

@latch_push = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strm_latch_receive(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, i32 (%struct.TYPE_7__*, i32)* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32 (%struct.TYPE_7__*, i32)*, align 8
  %7 = alloca %struct.latch_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.recv_data*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 (%struct.TYPE_7__*, i32)* %2, i32 (%struct.TYPE_7__*, i32)** %6, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @latch_push, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load %struct.latch_data*, %struct.latch_data** %18, align 8
  store %struct.latch_data* %19, %struct.latch_data** %7, align 8
  %20 = load %struct.latch_data*, %struct.latch_data** %7, align 8
  %21 = getelementptr inbounds %struct.latch_data, %struct.latch_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @strm_queue_get(i32 %22)
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %3
  %27 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %6, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 %27(%struct.TYPE_7__* %28, i32 %30)
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @free(i32* %32)
  br label %47

34:                                               ; preds = %3
  %35 = call %struct.recv_data* @malloc(i32 16)
  store %struct.recv_data* %35, %struct.recv_data** %9, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = load %struct.recv_data*, %struct.recv_data** %9, align 8
  %38 = getelementptr inbounds %struct.recv_data, %struct.recv_data* %37, i32 0, i32 1
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %38, align 8
  %39 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %6, align 8
  %40 = load %struct.recv_data*, %struct.recv_data** %9, align 8
  %41 = getelementptr inbounds %struct.recv_data, %struct.recv_data* %40, i32 0, i32 0
  store i32 (%struct.TYPE_7__*, i32)* %39, i32 (%struct.TYPE_7__*, i32)** %41, align 8
  %42 = load %struct.latch_data*, %struct.latch_data** %7, align 8
  %43 = getelementptr inbounds %struct.latch_data, %struct.latch_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.recv_data*, %struct.recv_data** %9, align 8
  %46 = call i32 @strm_queue_add(i32 %44, %struct.recv_data* %45)
  br label %47

47:                                               ; preds = %34, %26
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @strm_queue_get(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local %struct.recv_data* @malloc(i32) #1

declare dso_local i32 @strm_queue_add(i32, %struct.recv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
