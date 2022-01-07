; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_gpabase2memseg.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_gpabase2memseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.vm_memory_segment = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_gpabase2memseg(%struct.vm* %0, i64 %1, %struct.vm_memory_segment* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vm_memory_segment*, align 8
  %8 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.vm_memory_segment* %2, %struct.vm_memory_segment** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %48, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.vm*, %struct.vm** %5, align 8
  %12 = getelementptr inbounds %struct.vm, %struct.vm* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %51

15:                                               ; preds = %9
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.vm*, %struct.vm** %5, align 8
  %18 = getelementptr inbounds %struct.vm, %struct.vm* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %16, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %15
  %27 = load %struct.vm*, %struct.vm** %5, align 8
  %28 = getelementptr inbounds %struct.vm, %struct.vm* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.vm_memory_segment*, %struct.vm_memory_segment** %7, align 8
  %36 = getelementptr inbounds %struct.vm_memory_segment, %struct.vm_memory_segment* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.vm*, %struct.vm** %5, align 8
  %38 = getelementptr inbounds %struct.vm, %struct.vm* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.vm_memory_segment*, %struct.vm_memory_segment** %7, align 8
  %46 = getelementptr inbounds %struct.vm_memory_segment, %struct.vm_memory_segment* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  store i32 0, i32* %4, align 4
  br label %52

47:                                               ; preds = %15
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %9

51:                                               ; preds = %9
  store i32 -1, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %26
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
