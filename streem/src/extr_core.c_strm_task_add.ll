; ModuleID = '/home/carl/AnghaBench/streem/src/extr_core.c_strm_task_add.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_core.c_strm_task_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strm_task = type { i64, i32 }

@strm_producer = common dso_local global i64 0, align 8
@prod_queue = common dso_local global i32 0, align 4
@queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strm_task_add(%struct.strm_task* %0, %struct.strm_task* %1) #0 {
  %3 = alloca %struct.strm_task*, align 8
  %4 = alloca %struct.strm_task*, align 8
  store %struct.strm_task* %0, %struct.strm_task** %3, align 8
  store %struct.strm_task* %1, %struct.strm_task** %4, align 8
  %5 = load %struct.strm_task*, %struct.strm_task** %3, align 8
  %6 = getelementptr inbounds %struct.strm_task, %struct.strm_task* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.strm_task*, %struct.strm_task** %4, align 8
  %9 = call i32 @strm_queue_add(i32 %7, %struct.strm_task* %8)
  %10 = load %struct.strm_task*, %struct.strm_task** %3, align 8
  %11 = getelementptr inbounds %struct.strm_task, %struct.strm_task* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @strm_producer, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @prod_queue, align 4
  %17 = load %struct.strm_task*, %struct.strm_task** %3, align 8
  %18 = call i32 @strm_queue_add(i32 %16, %struct.strm_task* %17)
  br label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @queue, align 4
  %21 = load %struct.strm_task*, %struct.strm_task** %3, align 8
  %22 = call i32 @strm_queue_add(i32 %20, %struct.strm_task* %21)
  br label %23

23:                                               ; preds = %19, %15
  ret void
}

declare dso_local i32 @strm_queue_add(i32, %struct.strm_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
