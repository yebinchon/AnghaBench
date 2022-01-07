; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_t1.c_opj_t1_getwmsedec.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_t1.c_opj_t1_getwmsedec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i64, i32, i64, i32, i64, i32*, i64)* @opj_t1_getwmsedec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opj_t1_getwmsedec(i32 %0, i64 %1, i64 %2, i64 %3, i32 %4, i64 %5, i32 %6, i64 %7, i32* %8, i64 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i32 %4, i32* %15, align 4
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store i64 %7, i64* %18, align 8
  store i32* %8, i32** %19, align 8
  store i64 %9, i64* %20, align 8
  store i32 1, i32* %21, align 4
  %24 = load i64, i64* %18, align 8
  %25 = call i32 @OPJ_ARG_NOT_USED(i64 %24)
  %26 = load i32*, i32** %19, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %10
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* %20, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32*, i32** %19, align 8
  %34 = load i64, i64* %12, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %21, align 4
  br label %37

37:                                               ; preds = %32, %28, %10
  %38 = load i64, i64* %16, align 8
  %39 = icmp eq i64 %38, 1
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %14, align 8
  %43 = call i32 @opj_dwt_getnorm(i64 %41, i64 %42)
  store i32 %43, i32* %22, align 4
  br label %48

44:                                               ; preds = %37
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* %14, align 8
  %47 = call i32 @opj_dwt_getnorm_real(i64 %45, i64 %46)
  store i32 %47, i32* %22, align 4
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* %21, align 4
  %50 = load i32, i32* %22, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* %17, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %15, align 4
  %55 = shl i32 1, %54
  %56 = mul nsw i32 %53, %55
  store i32 %56, i32* %23, align 4
  %57 = load i32, i32* %23, align 4
  %58 = load i32, i32* %11, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sitofp i32 %59 to double
  %61 = fdiv double %60, 8.192000e+03
  %62 = load i32, i32* %23, align 4
  %63 = sitofp i32 %62 to double
  %64 = fmul double %63, %61
  %65 = fptosi double %64 to i32
  store i32 %65, i32* %23, align 4
  %66 = load i32, i32* %23, align 4
  ret i32 %66
}

declare dso_local i32 @OPJ_ARG_NOT_USED(i64) #1

declare dso_local i32 @opj_dwt_getnorm(i64, i64) #1

declare dso_local i32 @opj_dwt_getnorm_real(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
