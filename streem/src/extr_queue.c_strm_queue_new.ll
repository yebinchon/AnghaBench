; ModuleID = '/home/carl/AnghaBench/streem/src/extr_queue.c_strm_queue_new.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_queue.c_strm_queue_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strm_queue = type { %struct.strm_queue_node*, %struct.strm_queue_node* }
%struct.strm_queue_node = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.strm_queue* @strm_queue_new() #0 {
  %1 = alloca %struct.strm_queue*, align 8
  %2 = alloca %struct.strm_queue*, align 8
  %3 = call i64 @malloc(i32 16)
  %4 = inttoptr i64 %3 to %struct.strm_queue*
  store %struct.strm_queue* %4, %struct.strm_queue** %2, align 8
  %5 = load %struct.strm_queue*, %struct.strm_queue** %2, align 8
  %6 = icmp eq %struct.strm_queue* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store %struct.strm_queue* null, %struct.strm_queue** %1, align 8
  br label %23

8:                                                ; preds = %0
  %9 = call i64 @malloc(i32 8)
  %10 = inttoptr i64 %9 to %struct.strm_queue_node*
  %11 = load %struct.strm_queue*, %struct.strm_queue** %2, align 8
  %12 = getelementptr inbounds %struct.strm_queue, %struct.strm_queue* %11, i32 0, i32 0
  store %struct.strm_queue_node* %10, %struct.strm_queue_node** %12, align 8
  %13 = load %struct.strm_queue*, %struct.strm_queue** %2, align 8
  %14 = getelementptr inbounds %struct.strm_queue, %struct.strm_queue* %13, i32 0, i32 0
  %15 = load %struct.strm_queue_node*, %struct.strm_queue_node** %14, align 8
  %16 = load %struct.strm_queue*, %struct.strm_queue** %2, align 8
  %17 = getelementptr inbounds %struct.strm_queue, %struct.strm_queue* %16, i32 0, i32 1
  store %struct.strm_queue_node* %15, %struct.strm_queue_node** %17, align 8
  %18 = load %struct.strm_queue*, %struct.strm_queue** %2, align 8
  %19 = getelementptr inbounds %struct.strm_queue, %struct.strm_queue* %18, i32 0, i32 0
  %20 = load %struct.strm_queue_node*, %struct.strm_queue_node** %19, align 8
  %21 = getelementptr inbounds %struct.strm_queue_node, %struct.strm_queue_node* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = load %struct.strm_queue*, %struct.strm_queue** %2, align 8
  store %struct.strm_queue* %22, %struct.strm_queue** %1, align 8
  br label %23

23:                                               ; preds = %8, %7
  %24 = load %struct.strm_queue*, %struct.strm_queue** %1, align 8
  ret %struct.strm_queue* %24
}

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
