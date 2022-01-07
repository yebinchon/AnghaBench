; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_string.c_fz_chartorune.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_string.c_fz_chartorune.c"
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
@T5 = common dso_local global i32 0, align 4
@Rune4 = common dso_local global i32 0, align 4
@Bad = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fz_chartorune(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @Tx, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32*, i32** %4, align 8
  store i32 %18, i32* %19, align 4
  store i32 1, i32* %3, align 4
  br label %134

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = load i32, i32* @Tx, align 4
  %26 = xor i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @Testx, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %131

32:                                               ; preds = %20
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @T3, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @T2, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %131

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @Bitx, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @Rune2, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @Rune1, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %131

53:                                               ; preds = %41
  %54 = load i32, i32* %10, align 4
  %55 = load i32*, i32** %4, align 8
  store i32 %54, i32* %55, align 4
  store i32 2, i32* %3, align 4
  br label %134

56:                                               ; preds = %32
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = load i32, i32* @Tx, align 4
  %62 = xor i32 %60, %61
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @Testx, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %131

68:                                               ; preds = %56
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @T4, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %68
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @Bitx, align 4
  %75 = shl i32 %73, %74
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @Bitx, align 4
  %79 = shl i32 %77, %78
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @Rune3, align 4
  %83 = and i32 %81, %82
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @Rune2, align 4
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %72
  br label %131

88:                                               ; preds = %72
  %89 = load i32, i32* %10, align 4
  %90 = load i32*, i32** %4, align 8
  store i32 %89, i32* %90, align 4
  store i32 3, i32* %3, align 4
  br label %134

91:                                               ; preds = %68
  %92 = load i8*, i8** %5, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 3
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = load i32, i32* @Tx, align 4
  %97 = xor i32 %95, %96
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @Testx, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  br label %131

103:                                              ; preds = %91
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @T5, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %130

107:                                              ; preds = %103
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @Bitx, align 4
  %110 = shl i32 %108, %109
  %111 = load i32, i32* %7, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @Bitx, align 4
  %114 = shl i32 %112, %113
  %115 = load i32, i32* %8, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @Bitx, align 4
  %118 = shl i32 %116, %117
  %119 = load i32, i32* %9, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @Rune4, align 4
  %122 = and i32 %120, %121
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* @Rune3, align 4
  %125 = icmp sle i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %107
  br label %131

127:                                              ; preds = %107
  %128 = load i32, i32* %10, align 4
  %129 = load i32*, i32** %4, align 8
  store i32 %128, i32* %129, align 4
  store i32 4, i32* %3, align 4
  br label %134

130:                                              ; preds = %103
  br label %131

131:                                              ; preds = %130, %126, %102, %87, %67, %52, %40, %31
  %132 = load i32, i32* @Bad, align 4
  %133 = load i32*, i32** %4, align 8
  store i32 %132, i32* %133, align 4
  store i32 1, i32* %3, align 4
  br label %134

134:                                              ; preds = %131, %127, %88, %53, %17
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
