; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_malloc.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i64, %struct.mem_seg* }
%struct.mem_seg = type { i64, i64, i8* }

@XHYVE_PAGE_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@XHYVE_PAGE_SIZE = common dso_local global i64 0, align 8
@VM_MAX_MEMORY_SEGMENTS = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_malloc(%struct.vm* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mem_seg*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.vm* %0, %struct.vm** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @XHYVE_PAGE_MASK, align 8
  %17 = and i64 %15, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @XHYVE_PAGE_MASK, align 8
  %22 = and i64 %20, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* %8, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %19, %4
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %5, align 4
  br label %104

29:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %30 = load i64, i64* %7, align 8
  store i64 %30, i64* %14, align 8
  br label %31

31:                                               ; preds = %48, %29
  %32 = load i64, i64* %14, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = add i64 %33, %34
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %31
  %38 = load %struct.vm*, %struct.vm** %6, align 8
  %39 = load i64, i64* %14, align 8
  %40 = call i64 @vm_mem_allocated(%struct.vm* %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %48

45:                                               ; preds = %37
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i64, i64* @XHYVE_PAGE_SIZE, align 8
  %50 = load i64, i64* %14, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %14, align 8
  br label %31

52:                                               ; preds = %31
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @EINVAL, align 4
  store i32 %59, i32* %5, align 4
  br label %104

60:                                               ; preds = %55, %52
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %104

67:                                               ; preds = %63, %60
  %68 = load %struct.vm*, %struct.vm** %6, align 8
  %69 = getelementptr inbounds %struct.vm, %struct.vm* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @VM_MAX_MEMORY_SEGMENTS, align 8
  %72 = icmp uge i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @E2BIG, align 4
  store i32 %74, i32* %5, align 4
  br label %104

75:                                               ; preds = %67
  %76 = load %struct.vm*, %struct.vm** %6, align 8
  %77 = getelementptr inbounds %struct.vm, %struct.vm* %76, i32 0, i32 1
  %78 = load %struct.mem_seg*, %struct.mem_seg** %77, align 8
  %79 = load %struct.vm*, %struct.vm** %6, align 8
  %80 = getelementptr inbounds %struct.vm, %struct.vm* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.mem_seg, %struct.mem_seg* %78, i64 %81
  store %struct.mem_seg* %82, %struct.mem_seg** %12, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* %9, align 8
  %86 = call i8* @vmm_mem_alloc(i64 %83, i64 %84, i64 %85)
  store i8* %86, i8** %13, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %75
  %89 = load i32, i32* @ENOMEM, align 4
  store i32 %89, i32* %5, align 4
  br label %104

90:                                               ; preds = %75
  %91 = load i64, i64* %7, align 8
  %92 = load %struct.mem_seg*, %struct.mem_seg** %12, align 8
  %93 = getelementptr inbounds %struct.mem_seg, %struct.mem_seg* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load i64, i64* %8, align 8
  %95 = load %struct.mem_seg*, %struct.mem_seg** %12, align 8
  %96 = getelementptr inbounds %struct.mem_seg, %struct.mem_seg* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = load %struct.mem_seg*, %struct.mem_seg** %12, align 8
  %99 = getelementptr inbounds %struct.mem_seg, %struct.mem_seg* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  %100 = load %struct.vm*, %struct.vm** %6, align 8
  %101 = getelementptr inbounds %struct.vm, %struct.vm* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %101, align 8
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %90, %88, %73, %66, %58, %27
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i64 @vm_mem_allocated(%struct.vm*, i64) #1

declare dso_local i8* @vmm_mem_alloc(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
