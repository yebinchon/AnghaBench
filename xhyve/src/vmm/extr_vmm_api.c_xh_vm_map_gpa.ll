; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_api.c_xh_vm_map_gpa.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_api.c_xh_vm_map_gpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mmap_style = common dso_local global i64 0, align 8
@VM_MMAP_ALL = common dso_local global i64 0, align 8
@lowmem = common dso_local global i64 0, align 8
@lowmem_addr = common dso_local global i64 0, align 8
@highmem = common dso_local global i64 0, align 8
@highmem_addr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xh_vm_map_gpa(i64 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* @mmap_style, align 8
  %7 = load i64, i64* @VM_MMAP_ALL, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @lowmem, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @lowmem, align 8
  %17 = icmp ule i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = add i64 %19, %20
  %22 = load i64, i64* @lowmem, align 8
  %23 = icmp ule i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i64, i64* @lowmem_addr, align 8
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %25, %26
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %3, align 8
  br label %55

29:                                               ; preds = %18, %14, %2
  %30 = load i64, i64* %4, align 8
  %31 = icmp uge i64 %30, 4294967296
  br i1 %31, label %32, label %54

32:                                               ; preds = %29
  %33 = load i64, i64* %4, align 8
  %34 = sub i64 %33, 4294967296
  store i64 %34, i64* %4, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @highmem, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @highmem, align 8
  %41 = icmp ule i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %43, %44
  %46 = load i64, i64* @highmem, align 8
  %47 = icmp ule i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i64, i64* @highmem_addr, align 8
  %50 = load i64, i64* %4, align 8
  %51 = add i64 %49, %50
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %3, align 8
  br label %55

53:                                               ; preds = %42, %38, %32
  br label %54

54:                                               ; preds = %53, %29
  store i8* null, i8** %3, align 8
  br label %55

55:                                               ; preds = %54, %48, %24
  %56 = load i8*, i8** %3, align 8
  ret i8* %56
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
