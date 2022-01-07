; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_dwt.c_opj_idwt53_v_final_memcpy.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_dwt.c_opj_idwt53_v_final_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARALLEL_COLS_53 = common dso_local global i64 0, align 8
@VREG_INT_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i64, i64)* @opj_idwt53_v_final_memcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opj_idwt53_v_final_memcpy(i64* %0, i64* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %45, %4
  %11 = load i64, i64* %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %48

14:                                               ; preds = %10
  %15 = load i64*, i64** %5, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %8, align 8
  %18 = mul i64 %16, %17
  %19 = add i64 %18, 0
  %20 = getelementptr inbounds i64, i64* %15, i64 %19
  %21 = load i64*, i64** %6, align 8
  %22 = load i64, i64* @PARALLEL_COLS_53, align 8
  %23 = load i64, i64* %9, align 8
  %24 = mul i64 %22, %23
  %25 = add i64 %24, 0
  %26 = getelementptr inbounds i64, i64* %21, i64 %25
  %27 = call i32 @LOAD(i64* %26)
  %28 = call i32 @STOREU(i64* %20, i32 %27)
  %29 = load i64*, i64** %5, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %8, align 8
  %32 = mul i64 %30, %31
  %33 = load i64, i64* @VREG_INT_COUNT, align 8
  %34 = add i64 %32, %33
  %35 = getelementptr inbounds i64, i64* %29, i64 %34
  %36 = load i64*, i64** %6, align 8
  %37 = load i64, i64* @PARALLEL_COLS_53, align 8
  %38 = load i64, i64* %9, align 8
  %39 = mul i64 %37, %38
  %40 = load i64, i64* @VREG_INT_COUNT, align 8
  %41 = add i64 %39, %40
  %42 = getelementptr inbounds i64, i64* %36, i64 %41
  %43 = call i32 @LOAD(i64* %42)
  %44 = call i32 @STOREU(i64* %35, i32 %43)
  br label %45

45:                                               ; preds = %14
  %46 = load i64, i64* %9, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %9, align 8
  br label %10

48:                                               ; preds = %10
  ret void
}

declare dso_local i32 @STOREU(i64*, i32) #1

declare dso_local i32 @LOAD(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
