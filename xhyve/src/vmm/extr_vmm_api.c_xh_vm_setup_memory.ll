; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_api.c_xh_vm_setup_memory.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_api.c_xh_vm_setup_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XHYVE_PROT_READ = common dso_local global i32 0, align 4
@XHYVE_PROT_WRITE = common dso_local global i32 0, align 4
@XHYVE_PROT_EXECUTE = common dso_local global i32 0, align 4
@VM_MMAP_NONE = common dso_local global i32 0, align 4
@VM_MMAP_ALL = common dso_local global i32 0, align 4
@mmap_style = common dso_local global i32 0, align 4
@lowmem_limit = common dso_local global i64 0, align 8
@lowmem = common dso_local global i64 0, align 8
@highmem = common dso_local global i64 0, align 8
@lowmem_addr = common dso_local global i8* null, align 8
@highmem_addr = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xh_vm_setup_memory(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @XHYVE_PROT_READ, align 4
  %10 = load i32, i32* @XHYVE_PROT_WRITE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @XHYVE_PROT_EXECUTE, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @VM_MMAP_NONE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @VM_MMAP_ALL, align 4
  %20 = icmp eq i32 %18, %19
  br label %21

21:                                               ; preds = %17, %2
  %22 = phi i1 [ true, %2 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* @mmap_style, align 4
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @lowmem_limit, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i64, i64* @lowmem_limit, align 8
  br label %33

31:                                               ; preds = %21
  %32 = load i64, i64* %4, align 8
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i64 [ %30, %29 ], [ %32, %31 ]
  store i64 %34, i64* @lowmem, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @lowmem_limit, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @lowmem, align 8
  %41 = sub i64 %39, %40
  br label %43

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i64 [ %41, %38 ], [ 0, %42 ]
  store i64 %44, i64* @highmem, align 8
  %45 = load i64, i64* @lowmem, align 8
  %46 = icmp ugt i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @VM_MMAP_ALL, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8** @lowmem_addr, i8** null
  store i8** %52, i8*** %6, align 8
  %53 = load i64, i64* @lowmem, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i8**, i8*** %6, align 8
  %56 = call i32 @setup_memory_segment(i64 0, i64 %53, i32 %54, i8** %55)
  store i32 %56, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %79

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %43
  %62 = load i64, i64* @highmem, align 8
  %63 = icmp ugt i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @VM_MMAP_ALL, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8** @highmem_addr, i8** null
  store i8** %69, i8*** %6, align 8
  %70 = load i64, i64* @highmem, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i8**, i8*** %6, align 8
  %73 = call i32 @setup_memory_segment(i64 4294967296, i64 %70, i32 %71, i8** %72)
  store i32 %73, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %64
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %79

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77, %61
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %75, %58
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @setup_memory_segment(i64, i64, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
