; ModuleID = '/home/carl/AnghaBench/streem/src/extr_array.c_ary_minmax.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_array.c_ary_minmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"a|v\00", align 1
@STRM_OK = common dso_local global i32 0, align 4
@STRM_NG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*, i32)* @ary_minmax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ary_minmax(i32* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = call i32 (...) @strm_nil_value()
  store i32 %20, i32* %12, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @strm_get_args(i32* %21, i32 %22, i32* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32** %15, i32* %14, i32* %12)
  %25 = load i32, i32* %14, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %5
  %28 = call i32 (...) @strm_nil_value()
  %29 = load i32*, i32** %10, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @STRM_OK, align 4
  store i32 %30, i32* %6, align 4
  br label %118

31:                                               ; preds = %5
  %32 = load i32*, i32** %15, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32*, i32** %15, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = call i64 @strm_funcall(i32* %38, i32 %39, i32 1, i32* %41, i32* %16)
  %43 = load i64, i64* @STRM_NG, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i64, i64* @STRM_NG, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %6, align 4
  br label %118

48:                                               ; preds = %37
  br label %53

49:                                               ; preds = %31
  %50 = load i32*, i32** %15, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %16, align 4
  br label %53

53:                                               ; preds = %49, %48
  %54 = load i32, i32* %16, align 4
  %55 = call double @strm_value_float(i32 %54)
  store double %55, double* %18, align 8
  store i32 1, i32* %13, align 4
  br label %56

56:                                               ; preds = %111, %53
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %114

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %77

63:                                               ; preds = %60
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i32*, i32** %15, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = call i64 @strm_funcall(i32* %64, i32 %65, i32 1, i32* %69, i32* %16)
  %71 = load i64, i64* @STRM_NG, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %63
  %74 = load i64, i64* @STRM_NG, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %6, align 4
  br label %118

76:                                               ; preds = %63
  br label %81

77:                                               ; preds = %60
  %78 = load i32*, i32** %15, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %16, align 4
  br label %81

81:                                               ; preds = %77, %76
  %82 = load i32, i32* %16, align 4
  %83 = call double @strm_value_float(i32 %82)
  store double %83, double* %19, align 8
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load double, double* %18, align 8
  %88 = load double, double* %19, align 8
  %89 = fcmp ogt double %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load double, double* %19, align 8
  store double %91, double* %18, align 8
  %92 = load i32*, i32** %15, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %17, align 4
  br label %97

97:                                               ; preds = %90, %86
  br label %110

98:                                               ; preds = %81
  %99 = load double, double* %18, align 8
  %100 = load double, double* %19, align 8
  %101 = fcmp olt double %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load double, double* %19, align 8
  store double %103, double* %18, align 8
  %104 = load i32*, i32** %15, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %17, align 4
  br label %109

109:                                              ; preds = %102, %98
  br label %110

110:                                              ; preds = %109, %97
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %13, align 4
  br label %56

114:                                              ; preds = %56
  %115 = load i32, i32* %17, align 4
  %116 = load i32*, i32** %10, align 8
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* @STRM_OK, align 4
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %114, %73, %45, %27
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i32 @strm_nil_value(...) #1

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, i32**, i32*, i32*) #1

declare dso_local i64 @strm_funcall(i32*, i32, i32, i32*, i32*) #1

declare dso_local double @strm_value_float(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
