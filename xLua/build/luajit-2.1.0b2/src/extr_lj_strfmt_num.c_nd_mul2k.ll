; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_strfmt_num.c_nd_mul2k.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_strfmt_num.c_nd_mul2k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ND_MUL2K_MAX_SHIFT = common dso_local global i32 0, align 4
@STRFMT_T_FP_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32)* @nd_mul2k to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd_mul2k(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @ND_MUL2K_MAX_SHIFT, align 4
  %18 = mul nsw i32 %17, 2
  %19 = icmp sgt i32 %16, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %5
  %21 = load i32, i32* %10, align 4
  %22 = call i64 @STRFMT_FP(i32 %21)
  %23 = load i32, i32* @STRFMT_T_FP_F, align 4
  %24 = call i64 @STRFMT_FP(i32 %23)
  %25 = icmp ne i64 %22, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @STRFMT_PREC(i32 %28)
  %30 = add nsw i32 %29, 17
  %31 = sdiv i32 %30, 8
  %32 = sub nsw i32 %27, %31
  store i32 %32, i32* %13, align 4
  br label %33

33:                                               ; preds = %26, %20, %5
  br label %34

34:                                               ; preds = %85, %33
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @ND_MUL2K_MAX_SHIFT, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %89

38:                                               ; preds = %34
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %64, %38
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %40
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ND_MUL2K_MAX_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @ND_MUL2K_DIV1E9(i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %9, align 4
  %58 = mul nsw i32 %57, 1000000000
  %59 = sub nsw i32 %56, %58
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %59, i32* %63, align 4
  br label %64

64:                                               ; preds = %44
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %40

67:                                               ; preds = %40
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %67
  %71 = load i32, i32* %9, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  store i32 %71, i32* %76, align 4
  store i32 0, i32* %9, align 4
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %70
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %81, %70
  br label %85

85:                                               ; preds = %84, %67
  %86 = load i32, i32* @ND_MUL2K_MAX_SHIFT, align 4
  %87 = load i32, i32* %8, align 4
  %88 = sub nsw i32 %87, %86
  store i32 %88, i32* %8, align 4
  br label %34

89:                                               ; preds = %34
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %132

92:                                               ; preds = %89
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %118, %92
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %121

98:                                               ; preds = %94
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %8, align 4
  %105 = shl i32 %103, %104
  %106 = load i32, i32* %9, align 4
  %107 = or i32 %105, %106
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @ND_MUL2K_DIV1E9(i32 %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %9, align 4
  %112 = mul nsw i32 %111, 1000000000
  %113 = sub nsw i32 %110, %112
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %113, i32* %117, align 4
  br label %118

118:                                              ; preds = %98
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %11, align 4
  br label %94

121:                                              ; preds = %94
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load i32, i32* %9, align 4
  %126 = load i32*, i32** %6, align 8
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  store i32 %125, i32* %130, align 4
  br label %131

131:                                              ; preds = %124, %121
  br label %132

132:                                              ; preds = %131, %89
  %133 = load i32, i32* %7, align 4
  ret i32 %133
}

declare dso_local i64 @STRFMT_FP(i32) #1

declare dso_local i32 @STRFMT_PREC(i32) #1

declare dso_local i32 @ND_MUL2K_DIV1E9(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
