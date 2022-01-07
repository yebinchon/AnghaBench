; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_queue.c_free_file_op_queue.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_queue.c_free_file_op_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_op_queue = type { %struct.file_op* }
%struct.file_op = type { i64, i64, %struct.file_op*, i64, %struct.file_op*, %struct.file_op*, %struct.file_op*, %struct.file_op*, %struct.file_op* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_op_queue*)* @free_file_op_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_file_op_queue(%struct.file_op_queue* %0) #0 {
  %2 = alloca %struct.file_op_queue*, align 8
  %3 = alloca %struct.file_op*, align 8
  %4 = alloca %struct.file_op*, align 8
  store %struct.file_op_queue* %0, %struct.file_op_queue** %2, align 8
  %5 = load %struct.file_op_queue*, %struct.file_op_queue** %2, align 8
  %6 = getelementptr inbounds %struct.file_op_queue, %struct.file_op_queue* %5, i32 0, i32 0
  %7 = load %struct.file_op*, %struct.file_op** %6, align 8
  store %struct.file_op* %7, %struct.file_op** %4, align 8
  br label %8

8:                                                ; preds = %67, %1
  %9 = load %struct.file_op*, %struct.file_op** %4, align 8
  %10 = icmp ne %struct.file_op* %9, null
  br i1 %10, label %11, label %75

11:                                               ; preds = %8
  %12 = call i32 (...) @GetProcessHeap()
  %13 = load %struct.file_op*, %struct.file_op** %4, align 8
  %14 = getelementptr inbounds %struct.file_op, %struct.file_op* %13, i32 0, i32 8
  %15 = load %struct.file_op*, %struct.file_op** %14, align 8
  %16 = call i32 @HeapFree(i32 %12, i32 0, %struct.file_op* %15)
  %17 = call i32 (...) @GetProcessHeap()
  %18 = load %struct.file_op*, %struct.file_op** %4, align 8
  %19 = getelementptr inbounds %struct.file_op, %struct.file_op* %18, i32 0, i32 7
  %20 = load %struct.file_op*, %struct.file_op** %19, align 8
  %21 = call i32 @HeapFree(i32 %17, i32 0, %struct.file_op* %20)
  %22 = call i32 (...) @GetProcessHeap()
  %23 = load %struct.file_op*, %struct.file_op** %4, align 8
  %24 = getelementptr inbounds %struct.file_op, %struct.file_op* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.file_op*
  %27 = call i32 @HeapFree(i32 %22, i32 0, %struct.file_op* %26)
  %28 = call i32 (...) @GetProcessHeap()
  %29 = load %struct.file_op*, %struct.file_op** %4, align 8
  %30 = getelementptr inbounds %struct.file_op, %struct.file_op* %29, i32 0, i32 6
  %31 = load %struct.file_op*, %struct.file_op** %30, align 8
  %32 = call i32 @HeapFree(i32 %28, i32 0, %struct.file_op* %31)
  %33 = call i32 (...) @GetProcessHeap()
  %34 = load %struct.file_op*, %struct.file_op** %4, align 8
  %35 = getelementptr inbounds %struct.file_op, %struct.file_op* %34, i32 0, i32 5
  %36 = load %struct.file_op*, %struct.file_op** %35, align 8
  %37 = call i32 @HeapFree(i32 %33, i32 0, %struct.file_op* %36)
  %38 = call i32 (...) @GetProcessHeap()
  %39 = load %struct.file_op*, %struct.file_op** %4, align 8
  %40 = getelementptr inbounds %struct.file_op, %struct.file_op* %39, i32 0, i32 4
  %41 = load %struct.file_op*, %struct.file_op** %40, align 8
  %42 = call i32 @HeapFree(i32 %38, i32 0, %struct.file_op* %41)
  %43 = load %struct.file_op*, %struct.file_op** %4, align 8
  %44 = getelementptr inbounds %struct.file_op, %struct.file_op* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %11
  %48 = load %struct.file_op*, %struct.file_op** %4, align 8
  %49 = getelementptr inbounds %struct.file_op, %struct.file_op* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @LocalFree(i64 %50)
  br label %52

52:                                               ; preds = %47, %11
  %53 = load %struct.file_op*, %struct.file_op** %4, align 8
  %54 = getelementptr inbounds %struct.file_op, %struct.file_op* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.file_op*, %struct.file_op** %4, align 8
  %57 = getelementptr inbounds %struct.file_op, %struct.file_op* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = call i32 (...) @GetProcessHeap()
  %62 = load %struct.file_op*, %struct.file_op** %4, align 8
  %63 = getelementptr inbounds %struct.file_op, %struct.file_op* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.file_op*
  %66 = call i32 @HeapFree(i32 %61, i32 0, %struct.file_op* %65)
  br label %67

67:                                               ; preds = %60, %52
  %68 = load %struct.file_op*, %struct.file_op** %4, align 8
  store %struct.file_op* %68, %struct.file_op** %3, align 8
  %69 = load %struct.file_op*, %struct.file_op** %4, align 8
  %70 = getelementptr inbounds %struct.file_op, %struct.file_op* %69, i32 0, i32 2
  %71 = load %struct.file_op*, %struct.file_op** %70, align 8
  store %struct.file_op* %71, %struct.file_op** %4, align 8
  %72 = call i32 (...) @GetProcessHeap()
  %73 = load %struct.file_op*, %struct.file_op** %3, align 8
  %74 = call i32 @HeapFree(i32 %72, i32 0, %struct.file_op* %73)
  br label %8

75:                                               ; preds = %8
  ret void
}

declare dso_local i32 @HeapFree(i32, i32, %struct.file_op*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @LocalFree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
