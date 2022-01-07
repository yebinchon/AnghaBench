; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_Lzma2Dec.c_Lzma2Dec_GetOldProps.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_Lzma2Dec.c_Lzma2Dec_GetOldProps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SZ_ERROR_UNSUPPORTED = common dso_local global i32 0, align 4
@LZMA2_LCLP_MAX = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @Lzma2Dec_GetOldProps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Lzma2Dec_GetOldProps(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 40
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %10, i32* %3, align 4
  br label %40

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 40
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %18

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @LZMA2_DIC_SIZE_FROM_PROP(i32 %16)
  br label %18

18:                                               ; preds = %15, %14
  %19 = phi i32 [ -1, %14 ], [ %17, %15 ]
  store i32 %19, i32* %6, align 4
  %20 = load i64, i64* @LZMA2_LCLP_MAX, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 %27, 8
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  %32 = ashr i32 %31, 16
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %35, 24
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @SZ_OK, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %18, %9
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @LZMA2_DIC_SIZE_FROM_PROP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
