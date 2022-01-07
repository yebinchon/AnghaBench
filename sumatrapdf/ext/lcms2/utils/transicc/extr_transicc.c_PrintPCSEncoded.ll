; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_PrintPCSEncoded.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_PrintPCSEncoded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Verbose = common dso_local global i32 0, align 4
@hTransXYZ = common dso_local global i64 0, align 8
@hTransLab = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"[PCS] Lab=(0x%04X,0x%04X,0x%04X) XYZ=(0x%04X,0x%04X,0x%04X)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @PrintPCSEncoded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PrintPCSEncoded(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca [3 x i32], align 4
  %6 = alloca [3 x i32], align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @Verbose, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %47

9:                                                ; preds = %2
  %10 = load i64, i64* @hTransXYZ, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %47

12:                                               ; preds = %9
  %13 = load i64, i64* @hTransLab, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %12
  %16 = load i64, i64* @hTransXYZ, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = load i64, i64* @hTransXYZ, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %23 = call i32 @cmsDoTransform(i32 %19, i64 %20, i32* %21, i32* %22, i32 1)
  br label %24

24:                                               ; preds = %18, %15
  %25 = load i64, i64* @hTransLab, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = load i64, i64* @hTransLab, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %32 = call i32 @cmsDoTransform(i32 %28, i64 %29, i32* %30, i32* %31, i32 1)
  br label %33

33:                                               ; preds = %27, %24
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %37, i32 %39, i32 %41, i32 %43, i32 %45)
  br label %47

47:                                               ; preds = %33, %12, %9, %2
  ret void
}

declare dso_local i32 @cmsDoTransform(i32, i64, i32*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
