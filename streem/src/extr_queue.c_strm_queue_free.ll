; ModuleID = '/home/carl/AnghaBench/streem/src/extr_queue.c_strm_queue_free.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_queue.c_strm_queue_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strm_queue = type { %struct.strm_queue*, %struct.strm_queue* }
%struct.strm_queue_node = type { %struct.strm_queue_node*, %struct.strm_queue_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strm_queue_free(%struct.strm_queue* %0) #0 {
  %2 = alloca %struct.strm_queue*, align 8
  %3 = alloca %struct.strm_queue_node*, align 8
  %4 = alloca %struct.strm_queue_node*, align 8
  store %struct.strm_queue* %0, %struct.strm_queue** %2, align 8
  %5 = load %struct.strm_queue*, %struct.strm_queue** %2, align 8
  %6 = getelementptr inbounds %struct.strm_queue, %struct.strm_queue* %5, i32 0, i32 1
  %7 = load %struct.strm_queue*, %struct.strm_queue** %6, align 8
  %8 = bitcast %struct.strm_queue* %7 to %struct.strm_queue_node*
  store %struct.strm_queue_node* %8, %struct.strm_queue_node** %3, align 8
  %9 = load %struct.strm_queue*, %struct.strm_queue** %2, align 8
  %10 = bitcast %struct.strm_queue* %9 to %struct.strm_queue_node*
  %11 = call i32 @free(%struct.strm_queue_node* %10)
  br label %12

12:                                               ; preds = %15, %1
  %13 = load %struct.strm_queue_node*, %struct.strm_queue_node** %3, align 8
  %14 = icmp ne %struct.strm_queue_node* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load %struct.strm_queue_node*, %struct.strm_queue_node** %3, align 8
  %17 = getelementptr inbounds %struct.strm_queue_node, %struct.strm_queue_node* %16, i32 0, i32 0
  %18 = load %struct.strm_queue_node*, %struct.strm_queue_node** %17, align 8
  store %struct.strm_queue_node* %18, %struct.strm_queue_node** %4, align 8
  %19 = load %struct.strm_queue_node*, %struct.strm_queue_node** %3, align 8
  %20 = call i32 @free(%struct.strm_queue_node* %19)
  %21 = load %struct.strm_queue_node*, %struct.strm_queue_node** %4, align 8
  store %struct.strm_queue_node* %21, %struct.strm_queue_node** %3, align 8
  br label %12

22:                                               ; preds = %12
  ret void
}

declare dso_local i32 @free(%struct.strm_queue_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
