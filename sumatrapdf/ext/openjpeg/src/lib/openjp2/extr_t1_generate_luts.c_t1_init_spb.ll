; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_t1_generate_luts.c_t1_init_spb.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_t1_generate_luts.c_t1_init_spb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T1_LUT_SIG_E = common dso_local global i32 0, align 4
@T1_LUT_SGN_E = common dso_local global i32 0, align 4
@T1_LUT_SIG_W = common dso_local global i32 0, align 4
@T1_LUT_SGN_W = common dso_local global i32 0, align 4
@T1_LUT_SIG_N = common dso_local global i32 0, align 4
@T1_LUT_SGN_N = common dso_local global i32 0, align 4
@T1_LUT_SIG_S = common dso_local global i32 0, align 4
@T1_LUT_SGN_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @t1_init_spb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t1_init_spb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @T1_LUT_SIG_E, align 4
  %8 = load i32, i32* @T1_LUT_SGN_E, align 4
  %9 = or i32 %7, %8
  %10 = and i32 %6, %9
  %11 = load i32, i32* @T1_LUT_SIG_E, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @T1_LUT_SIG_W, align 4
  %16 = load i32, i32* @T1_LUT_SGN_W, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = load i32, i32* @T1_LUT_SIG_W, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = add nsw i32 %13, %21
  %23 = call i32 @opj_int_min(i32 %22, i32 1)
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @T1_LUT_SIG_E, align 4
  %26 = load i32, i32* @T1_LUT_SGN_E, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = load i32, i32* @T1_LUT_SIG_E, align 4
  %30 = load i32, i32* @T1_LUT_SGN_E, align 4
  %31 = or i32 %29, %30
  %32 = icmp eq i32 %28, %31
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @T1_LUT_SIG_W, align 4
  %36 = load i32, i32* @T1_LUT_SGN_W, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = load i32, i32* @T1_LUT_SIG_W, align 4
  %40 = load i32, i32* @T1_LUT_SGN_W, align 4
  %41 = or i32 %39, %40
  %42 = icmp eq i32 %38, %41
  %43 = zext i1 %42 to i32
  %44 = add nsw i32 %33, %43
  %45 = call i32 @opj_int_min(i32 %44, i32 1)
  %46 = sub nsw i32 %23, %45
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @T1_LUT_SIG_N, align 4
  %49 = load i32, i32* @T1_LUT_SGN_N, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = load i32, i32* @T1_LUT_SIG_N, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @T1_LUT_SIG_S, align 4
  %57 = load i32, i32* @T1_LUT_SGN_S, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = load i32, i32* @T1_LUT_SIG_S, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = add nsw i32 %54, %62
  %64 = call i32 @opj_int_min(i32 %63, i32 1)
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* @T1_LUT_SIG_N, align 4
  %67 = load i32, i32* @T1_LUT_SGN_N, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %65, %68
  %70 = load i32, i32* @T1_LUT_SIG_N, align 4
  %71 = load i32, i32* @T1_LUT_SGN_N, align 4
  %72 = or i32 %70, %71
  %73 = icmp eq i32 %69, %72
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* @T1_LUT_SIG_S, align 4
  %77 = load i32, i32* @T1_LUT_SGN_S, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %75, %78
  %80 = load i32, i32* @T1_LUT_SIG_S, align 4
  %81 = load i32, i32* @T1_LUT_SGN_S, align 4
  %82 = or i32 %80, %81
  %83 = icmp eq i32 %79, %82
  %84 = zext i1 %83 to i32
  %85 = add nsw i32 %74, %84
  %86 = call i32 @opj_int_min(i32 %85, i32 1)
  %87 = sub nsw i32 %64, %86
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %3, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %1
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  store i32 0, i32* %5, align 4
  br label %109

94:                                               ; preds = %90, %1
  %95 = load i32, i32* %3, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %3, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %4, align 4
  %102 = icmp sgt i32 %101, 0
  br label %103

103:                                              ; preds = %100, %97
  %104 = phi i1 [ false, %97 ], [ %102, %100 ]
  br label %105

105:                                              ; preds = %103, %94
  %106 = phi i1 [ true, %94 ], [ %104, %103 ]
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %105, %93
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @opj_int_min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
