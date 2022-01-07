; ModuleID = '/home/carl/AnghaBench/streem/src/extr_latch.c_latch_push.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_latch.c_latch_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.latch_data* }
%struct.latch_data = type { i32, i32 }
%struct.recv_data = type { i32, i32 (i32, i32)* }

@strm_consumer = common dso_local global i64 0, align 8
@STRM_NG = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @latch_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @latch_push(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.latch_data*, align 8
  %7 = alloca %struct.recv_data*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load %struct.latch_data*, %struct.latch_data** %10, align 8
  store %struct.latch_data* %11, %struct.latch_data** %6, align 8
  %12 = load %struct.latch_data*, %struct.latch_data** %6, align 8
  %13 = getelementptr inbounds %struct.latch_data, %struct.latch_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.recv_data* @strm_queue_get(i32 %14)
  store %struct.recv_data* %15, %struct.recv_data** %7, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @strm_consumer, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @STRM_NG, align 4
  store i32 %22, i32* %3, align 4
  br label %48

23:                                               ; preds = %2
  %24 = load %struct.recv_data*, %struct.recv_data** %7, align 8
  %25 = icmp ne %struct.recv_data* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load %struct.recv_data*, %struct.recv_data** %7, align 8
  %28 = getelementptr inbounds %struct.recv_data, %struct.recv_data* %27, i32 0, i32 1
  %29 = load i32 (i32, i32)*, i32 (i32, i32)** %28, align 8
  %30 = load %struct.recv_data*, %struct.recv_data** %7, align 8
  %31 = getelementptr inbounds %struct.recv_data, %struct.recv_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 %29(i32 %32, i32 %33)
  %35 = load %struct.recv_data*, %struct.recv_data** %7, align 8
  %36 = call i32 @free(%struct.recv_data* %35)
  br label %46

37:                                               ; preds = %23
  %38 = call i32* @malloc(i32 4)
  store i32* %38, i32** %8, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32*, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  %41 = load %struct.latch_data*, %struct.latch_data** %6, align 8
  %42 = getelementptr inbounds %struct.latch_data, %struct.latch_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @strm_queue_add(i32 %43, i32* %44)
  br label %46

46:                                               ; preds = %37, %26
  %47 = load i32, i32* @STRM_OK, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %21
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.recv_data* @strm_queue_get(i32) #1

declare dso_local i32 @free(%struct.recv_data*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @strm_queue_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
