; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_queue.c_queue_file_op.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_queue.c_queue_file_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_op_queue = type { i32, %struct.file_op*, %struct.file_op* }
%struct.file_op = type { %struct.file_op* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_op_queue*, %struct.file_op*)* @queue_file_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_file_op(%struct.file_op_queue* %0, %struct.file_op* %1) #0 {
  %3 = alloca %struct.file_op_queue*, align 8
  %4 = alloca %struct.file_op*, align 8
  store %struct.file_op_queue* %0, %struct.file_op_queue** %3, align 8
  store %struct.file_op* %1, %struct.file_op** %4, align 8
  %5 = load %struct.file_op*, %struct.file_op** %4, align 8
  %6 = getelementptr inbounds %struct.file_op, %struct.file_op* %5, i32 0, i32 0
  store %struct.file_op* null, %struct.file_op** %6, align 8
  %7 = load %struct.file_op_queue*, %struct.file_op_queue** %3, align 8
  %8 = getelementptr inbounds %struct.file_op_queue, %struct.file_op_queue* %7, i32 0, i32 1
  %9 = load %struct.file_op*, %struct.file_op** %8, align 8
  %10 = icmp ne %struct.file_op* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.file_op*, %struct.file_op** %4, align 8
  %13 = load %struct.file_op_queue*, %struct.file_op_queue** %3, align 8
  %14 = getelementptr inbounds %struct.file_op_queue, %struct.file_op_queue* %13, i32 0, i32 1
  %15 = load %struct.file_op*, %struct.file_op** %14, align 8
  %16 = getelementptr inbounds %struct.file_op, %struct.file_op* %15, i32 0, i32 0
  store %struct.file_op* %12, %struct.file_op** %16, align 8
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.file_op*, %struct.file_op** %4, align 8
  %19 = load %struct.file_op_queue*, %struct.file_op_queue** %3, align 8
  %20 = getelementptr inbounds %struct.file_op_queue, %struct.file_op_queue* %19, i32 0, i32 2
  store %struct.file_op* %18, %struct.file_op** %20, align 8
  br label %21

21:                                               ; preds = %17, %11
  %22 = load %struct.file_op*, %struct.file_op** %4, align 8
  %23 = load %struct.file_op_queue*, %struct.file_op_queue** %3, align 8
  %24 = getelementptr inbounds %struct.file_op_queue, %struct.file_op_queue* %23, i32 0, i32 1
  store %struct.file_op* %22, %struct.file_op** %24, align 8
  %25 = load %struct.file_op_queue*, %struct.file_op_queue** %3, align 8
  %26 = getelementptr inbounds %struct.file_op_queue, %struct.file_op_queue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
