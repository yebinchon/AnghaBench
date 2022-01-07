; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmcs.c_vmcs_setdesc.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/intel/extr_vmcs.c_vmcs_setdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seg_desc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"vmcs_setdesc: invalid segment register %d\0A\00", align 1
@VMCS_INVALID_ENCODING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmcs_setdesc(i32 %0, i32 %1, %struct.seg_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.seg_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.seg_desc* %2, %struct.seg_desc** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @vmcs_seg_desc_encoding(i32 %11, i64* %8, i64* %9, i64* %10)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @xhyve_abort(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i32, i32* %4, align 4
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.seg_desc*, %struct.seg_desc** %6, align 8
  %22 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @vmcs_write(i32 %19, i64 %20, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.seg_desc*, %struct.seg_desc** %6, align 8
  %28 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @vmcs_write(i32 %25, i64 %26, i32 %29)
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @VMCS_INVALID_ENCODING, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %18
  %35 = load i32, i32* %4, align 4
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.seg_desc*, %struct.seg_desc** %6, align 8
  %38 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @vmcs_write(i32 %35, i64 %36, i32 %39)
  br label %41

41:                                               ; preds = %34, %18
  ret i32 0
}

declare dso_local i32 @vmcs_seg_desc_encoding(i32, i64*, i64*, i64*) #1

declare dso_local i32 @xhyve_abort(i8*, i32) #1

declare dso_local i32 @vmcs_write(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
