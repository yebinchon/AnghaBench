; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_t1.c_opj_t1_enc_is_term_pass.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_t1.c_opj_t1_enc_is_term_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@OPJ_TRUE = common dso_local global i32 0, align 4
@J2K_CCP_CBLKSTY_TERMALL = common dso_local global i32 0, align 4
@J2K_CCP_CBLKSTY_LAZY = common dso_local global i32 0, align 4
@OPJ_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i64, i32)* @opj_t1_enc_is_term_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opj_t1_enc_is_term_pass(%struct.TYPE_3__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = load i64, i64* %8, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %16, i32* %5, align 4
  br label %56

17:                                               ; preds = %12, %4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @J2K_CCP_CBLKSTY_TERMALL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %23, i32* %5, align 4
  br label %56

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @J2K_CCP_CBLKSTY_LAZY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %24
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %33, 4
  %35 = icmp eq i64 %30, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %40, i32* %5, align 4
  br label %56

41:                                               ; preds = %36, %29
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %45, 4
  %47 = icmp slt i64 %42, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load i32, i32* %9, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %52, i32* %5, align 4
  br label %56

53:                                               ; preds = %48, %41
  br label %54

54:                                               ; preds = %53, %24
  %55 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %54, %51, %39, %22, %15
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
