; ModuleID = '/home/carl/AnghaBench/streem/src/extr_queue.c_strm_queue_get.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_queue.c_strm_queue_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strm_queue = type { %struct.strm_queue_node* }
%struct.strm_queue_node = type { i64, %struct.strm_queue_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strm_queue_get(%struct.strm_queue* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.strm_queue*, align 8
  %4 = alloca %struct.strm_queue_node*, align 8
  %5 = alloca %struct.strm_queue_node*, align 8
  %6 = alloca i8*, align 8
  store %struct.strm_queue* %0, %struct.strm_queue** %3, align 8
  br label %7

7:                                                ; preds = %1, %19, %40
  %8 = load %struct.strm_queue*, %struct.strm_queue** %3, align 8
  %9 = getelementptr inbounds %struct.strm_queue, %struct.strm_queue* %8, i32 0, i32 0
  %10 = load %struct.strm_queue_node*, %struct.strm_queue_node** %9, align 8
  store %struct.strm_queue_node* %10, %struct.strm_queue_node** %4, align 8
  %11 = load %struct.strm_queue_node*, %struct.strm_queue_node** %4, align 8
  %12 = getelementptr inbounds %struct.strm_queue_node, %struct.strm_queue_node* %11, i32 0, i32 1
  %13 = load %struct.strm_queue_node*, %struct.strm_queue_node** %12, align 8
  store %struct.strm_queue_node* %13, %struct.strm_queue_node** %5, align 8
  %14 = load %struct.strm_queue_node*, %struct.strm_queue_node** %4, align 8
  %15 = load %struct.strm_queue*, %struct.strm_queue** %3, align 8
  %16 = getelementptr inbounds %struct.strm_queue, %struct.strm_queue* %15, i32 0, i32 0
  %17 = load %struct.strm_queue_node*, %struct.strm_queue_node** %16, align 8
  %18 = icmp ne %struct.strm_queue_node* %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  br label %7

20:                                               ; preds = %7
  %21 = load %struct.strm_queue_node*, %struct.strm_queue_node** %5, align 8
  %22 = icmp eq %struct.strm_queue_node* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i8* null, i8** %2, align 8
  br label %41

24:                                               ; preds = %20
  %25 = load %struct.strm_queue*, %struct.strm_queue** %3, align 8
  %26 = getelementptr inbounds %struct.strm_queue, %struct.strm_queue* %25, i32 0, i32 0
  %27 = load %struct.strm_queue_node*, %struct.strm_queue_node** %26, align 8
  %28 = load %struct.strm_queue_node*, %struct.strm_queue_node** %4, align 8
  %29 = load %struct.strm_queue_node*, %struct.strm_queue_node** %5, align 8
  %30 = call i64 @strm_atomic_cas(%struct.strm_queue_node* %27, %struct.strm_queue_node* %28, %struct.strm_queue_node* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load %struct.strm_queue_node*, %struct.strm_queue_node** %5, align 8
  %34 = getelementptr inbounds %struct.strm_queue_node, %struct.strm_queue_node* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %6, align 8
  %37 = load %struct.strm_queue_node*, %struct.strm_queue_node** %4, align 8
  %38 = call i32 @free(%struct.strm_queue_node* %37)
  %39 = load i8*, i8** %6, align 8
  store i8* %39, i8** %2, align 8
  br label %41

40:                                               ; preds = %24
  br label %7

41:                                               ; preds = %32, %23
  %42 = load i8*, i8** %2, align 8
  ret i8* %42
}

declare dso_local i64 @strm_atomic_cas(%struct.strm_queue_node*, %struct.strm_queue_node*, %struct.strm_queue_node*) #1

declare dso_local i32 @free(%struct.strm_queue_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
