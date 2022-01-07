; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_turbojpeg.c_getPixelFormat.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_turbojpeg.c_getPixelFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TJPF_GRAY = common dso_local global i32 0, align 4
@TJ_BGR = common dso_local global i32 0, align 4
@TJPF_BGR = common dso_local global i32 0, align 4
@TJPF_RGB = common dso_local global i32 0, align 4
@TJ_ALPHAFIRST = common dso_local global i32 0, align 4
@TJPF_XBGR = common dso_local global i32 0, align 4
@TJPF_XRGB = common dso_local global i32 0, align 4
@TJPF_BGRX = common dso_local global i32 0, align 4
@TJPF_RGBX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @getPixelFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getPixelFormat(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @TJPF_GRAY, align 4
  store i32 %9, i32* %3, align 4
  br label %49

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @TJ_BGR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @TJPF_BGR, align 4
  store i32 %19, i32* %3, align 4
  br label %49

20:                                               ; preds = %13
  %21 = load i32, i32* @TJPF_RGB, align 4
  store i32 %21, i32* %3, align 4
  br label %49

22:                                               ; preds = %10
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %25, label %48

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @TJ_ALPHAFIRST, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @TJ_BGR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @TJPF_XBGR, align 4
  store i32 %36, i32* %3, align 4
  br label %49

37:                                               ; preds = %30
  %38 = load i32, i32* @TJPF_XRGB, align 4
  store i32 %38, i32* %3, align 4
  br label %49

39:                                               ; preds = %25
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @TJ_BGR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @TJPF_BGRX, align 4
  store i32 %45, i32* %3, align 4
  br label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @TJPF_RGBX, align 4
  store i32 %47, i32* %3, align 4
  br label %49

48:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %46, %44, %37, %35, %20, %18, %8
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
