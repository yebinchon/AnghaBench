; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_utf.c_jsU_chartorune.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_utf.c_jsU_chartorune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Tx = common dso_local global i32 0, align 4
@Testx = common dso_local global i32 0, align 4
@T3 = common dso_local global i32 0, align 4
@T2 = common dso_local global i32 0, align 4
@Bitx = common dso_local global i32 0, align 4
@Rune2 = common dso_local global i32 0, align 4
@Rune1 = common dso_local global i32 0, align 4
@T4 = common dso_local global i32 0, align 4
@Rune3 = common dso_local global i32 0, align 4
@Bad = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chartorune(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @Tx, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32*, i32** %4, align 8
  store i32 %17, i32* %18, align 4
  store i32 1, i32* %3, align 4
  br label %94

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @Tx, align 4
  %25 = xor i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @Testx, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %91

31:                                               ; preds = %19
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @T3, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @T2, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %91

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @Bitx, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @Rune2, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @Rune1, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %91

52:                                               ; preds = %40
  %53 = load i32, i32* %9, align 4
  %54 = load i32*, i32** %4, align 8
  store i32 %53, i32* %54, align 4
  store i32 2, i32* %3, align 4
  br label %94

55:                                               ; preds = %31
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  %58 = bitcast i8* %57 to i32*
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @Tx, align 4
  %61 = xor i32 %59, %60
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @Testx, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %91

67:                                               ; preds = %55
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @T4, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @Bitx, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @Bitx, align 4
  %78 = shl i32 %76, %77
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @Rune3, align 4
  %82 = and i32 %80, %81
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @Rune2, align 4
  %85 = icmp sle i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %71
  br label %91

87:                                               ; preds = %71
  %88 = load i32, i32* %9, align 4
  %89 = load i32*, i32** %4, align 8
  store i32 %88, i32* %89, align 4
  store i32 3, i32* %3, align 4
  br label %94

90:                                               ; preds = %67
  br label %91

91:                                               ; preds = %90, %86, %66, %51, %39, %30
  %92 = load i32, i32* @Bad, align 4
  %93 = load i32*, i32** %4, align 8
  store i32 %92, i32* %93, align 4
  store i32 1, i32* %3, align 4
  br label %94

94:                                               ; preds = %91, %87, %52, %16
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
