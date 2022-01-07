; ModuleID = '/home/carl/AnghaBench/streem/src/extr_queue.c_strm_queue_add.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_queue.c_strm_queue_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strm_queue = type { %struct.strm_queue_node* }
%struct.strm_queue_node = type { %struct.strm_queue_node*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strm_queue_add(%struct.strm_queue* %0, i8* %1) #0 {
  %3 = alloca %struct.strm_queue*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.strm_queue_node*, align 8
  %6 = alloca %struct.strm_queue_node*, align 8
  %7 = alloca %struct.strm_queue_node*, align 8
  store %struct.strm_queue* %0, %struct.strm_queue** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = call i64 @malloc(i32 16)
  %9 = inttoptr i64 %8 to %struct.strm_queue_node*
  store %struct.strm_queue_node* %9, %struct.strm_queue_node** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load %struct.strm_queue_node*, %struct.strm_queue_node** %5, align 8
  %12 = getelementptr inbounds %struct.strm_queue_node, %struct.strm_queue_node* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  %13 = load %struct.strm_queue_node*, %struct.strm_queue_node** %5, align 8
  %14 = getelementptr inbounds %struct.strm_queue_node, %struct.strm_queue_node* %13, i32 0, i32 0
  store %struct.strm_queue_node* null, %struct.strm_queue_node** %14, align 8
  br label %15

15:                                               ; preds = %2, %27, %54
  %16 = load %struct.strm_queue*, %struct.strm_queue** %3, align 8
  %17 = getelementptr inbounds %struct.strm_queue, %struct.strm_queue* %16, i32 0, i32 0
  %18 = load %struct.strm_queue_node*, %struct.strm_queue_node** %17, align 8
  store %struct.strm_queue_node* %18, %struct.strm_queue_node** %6, align 8
  %19 = load %struct.strm_queue_node*, %struct.strm_queue_node** %6, align 8
  %20 = getelementptr inbounds %struct.strm_queue_node, %struct.strm_queue_node* %19, i32 0, i32 0
  %21 = load %struct.strm_queue_node*, %struct.strm_queue_node** %20, align 8
  store %struct.strm_queue_node* %21, %struct.strm_queue_node** %7, align 8
  %22 = load %struct.strm_queue_node*, %struct.strm_queue_node** %6, align 8
  %23 = load %struct.strm_queue*, %struct.strm_queue** %3, align 8
  %24 = getelementptr inbounds %struct.strm_queue, %struct.strm_queue* %23, i32 0, i32 0
  %25 = load %struct.strm_queue_node*, %struct.strm_queue_node** %24, align 8
  %26 = icmp ne %struct.strm_queue_node* %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %15

28:                                               ; preds = %15
  %29 = load %struct.strm_queue_node*, %struct.strm_queue_node** %7, align 8
  %30 = icmp eq %struct.strm_queue_node* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = load %struct.strm_queue_node*, %struct.strm_queue_node** %6, align 8
  %33 = getelementptr inbounds %struct.strm_queue_node, %struct.strm_queue_node* %32, i32 0, i32 0
  %34 = load %struct.strm_queue_node*, %struct.strm_queue_node** %33, align 8
  %35 = load %struct.strm_queue_node*, %struct.strm_queue_node** %7, align 8
  %36 = load %struct.strm_queue_node*, %struct.strm_queue_node** %5, align 8
  %37 = call i64 @strm_atomic_cas(%struct.strm_queue_node* %34, %struct.strm_queue_node* %35, %struct.strm_queue_node* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load %struct.strm_queue*, %struct.strm_queue** %3, align 8
  %41 = getelementptr inbounds %struct.strm_queue, %struct.strm_queue* %40, i32 0, i32 0
  %42 = load %struct.strm_queue_node*, %struct.strm_queue_node** %41, align 8
  %43 = load %struct.strm_queue_node*, %struct.strm_queue_node** %6, align 8
  %44 = load %struct.strm_queue_node*, %struct.strm_queue_node** %5, align 8
  %45 = call i64 @strm_atomic_cas(%struct.strm_queue_node* %42, %struct.strm_queue_node* %43, %struct.strm_queue_node* %44)
  ret i32 1

46:                                               ; preds = %31
  br label %54

47:                                               ; preds = %28
  %48 = load %struct.strm_queue*, %struct.strm_queue** %3, align 8
  %49 = getelementptr inbounds %struct.strm_queue, %struct.strm_queue* %48, i32 0, i32 0
  %50 = load %struct.strm_queue_node*, %struct.strm_queue_node** %49, align 8
  %51 = load %struct.strm_queue_node*, %struct.strm_queue_node** %6, align 8
  %52 = load %struct.strm_queue_node*, %struct.strm_queue_node** %7, align 8
  %53 = call i64 @strm_atomic_cas(%struct.strm_queue_node* %50, %struct.strm_queue_node* %51, %struct.strm_queue_node* %52)
  br label %54

54:                                               ; preds = %47, %46
  br label %15
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @strm_atomic_cas(%struct.strm_queue_node*, %struct.strm_queue_node*, %struct.strm_queue_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
