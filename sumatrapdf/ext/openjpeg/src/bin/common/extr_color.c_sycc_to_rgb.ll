; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/common/extr_color.c_sycc_to_rgb.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/common/extr_color.c_sycc_to_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32*, i32*, i32*)* @sycc_to_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sycc_to_rgb(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %12, align 4
  %22 = sub nsw i32 %21, %20
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %13, align 4
  %25 = sub nsw i32 %24, %23
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %13, align 4
  %28 = sitofp i32 %27 to float
  %29 = fpext float %28 to double
  %30 = fmul double 1.402000e+00, %29
  %31 = fptosi double %30 to i32
  %32 = add nsw i32 %26, %31
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %17, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %8
  store i32 0, i32* %17, align 4
  br label %43

36:                                               ; preds = %8
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %17, align 4
  br label %42

42:                                               ; preds = %40, %36
  br label %43

43:                                               ; preds = %42, %35
  %44 = load i32, i32* %17, align 4
  %45 = load i32*, i32** %14, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = sitofp i32 %47 to float
  %49 = fpext float %48 to double
  %50 = fmul double 3.440000e-01, %49
  %51 = load i32, i32* %13, align 4
  %52 = sitofp i32 %51 to float
  %53 = fpext float %52 to double
  %54 = fmul double 7.140000e-01, %53
  %55 = fadd double %50, %54
  %56 = fptosi double %55 to i32
  %57 = sub nsw i32 %46, %56
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %18, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %43
  store i32 0, i32* %18, align 4
  br label %68

61:                                               ; preds = %43
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %18, align 4
  br label %67

67:                                               ; preds = %65, %61
  br label %68

68:                                               ; preds = %67, %60
  %69 = load i32, i32* %18, align 4
  %70 = load i32*, i32** %15, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = sitofp i32 %72 to float
  %74 = fpext float %73 to double
  %75 = fmul double 1.772000e+00, %74
  %76 = fptosi double %75 to i32
  %77 = add nsw i32 %71, %76
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* %19, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  store i32 0, i32* %19, align 4
  br label %88

81:                                               ; preds = %68
  %82 = load i32, i32* %19, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %19, align 4
  br label %87

87:                                               ; preds = %85, %81
  br label %88

88:                                               ; preds = %87, %80
  %89 = load i32, i32* %19, align 4
  %90 = load i32*, i32** %16, align 8
  store i32 %89, i32* %90, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
