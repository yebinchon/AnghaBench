; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_tabinit.c_make_decode_tables.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_tabinit.c_make_decode_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { double, i8**, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { double }

@.str = private unnamed_addr constant [31 x i8] c"decode tables with scaleval %g\00", align 1
@intwinbase = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"decode tables done\00", align 1
@NOQUIET = common dso_local global i64 0, align 8
@altivec = common dso_local global i64 0, align 8
@arm = common dso_local global i64 0, align 8
@avx = common dso_local global i64 0, align 8
@neon = common dso_local global i64 0, align 8
@neon64 = common dso_local global i64 0, align 8
@sse = common dso_local global i64 0, align 8
@sse_vintage = common dso_local global i64 0, align 8
@x86_64 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_decode_tables(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load double, double* %8, align 8
  %10 = fcmp olt double %9, 0.000000e+00
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load double, double* %14, align 8
  br label %20

16:                                               ; preds = %1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load double, double* %18, align 8
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi double [ %15, %11 ], [ %19, %16 ]
  %22 = fmul double -5.000000e-01, %21
  store double %22, double* %6, align 8
  %23 = load double, double* %6, align 8
  %24 = fptosi double %23 to i64
  %25 = call i32 @debug1(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %24)
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %70, %20
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 256
  br i1 %28, label %29, label %77

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 528
  br i1 %31, label %32, label %55

32:                                               ; preds = %29
  %33 = load i64*, i64** @intwinbase, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = sitofp i64 %37 to double
  %39 = load double, double* %6, align 8
  %40 = fmul double %38, %39
  %41 = call i8* @DOUBLE_TO_REAL(double %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i8**, i8*** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  store i8* %41, i8** %47, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i8**, i8*** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 16
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %50, i64 %53
  store i8* %41, i8** %54, align 8
  br label %55

55:                                               ; preds = %32, %29
  %56 = load i32, i32* %3, align 4
  %57 = srem i32 %56, 32
  %58 = icmp eq i32 %57, 31
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = sub nsw i32 %60, 1023
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i32, i32* %3, align 4
  %64 = srem i32 %63, 64
  %65 = icmp eq i32 %64, 63
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load double, double* %6, align 8
  %68 = fneg double %67
  store double %68, double* %6, align 8
  br label %69

69:                                               ; preds = %66, %62
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 32
  store i32 %76, i32* %5, align 4
  br label %26

77:                                               ; preds = %26
  br label %78

78:                                               ; preds = %122, %77
  %79 = load i32, i32* %3, align 4
  %80 = icmp slt i32 %79, 512
  br i1 %80, label %81, label %129

81:                                               ; preds = %78
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %82, 528
  br i1 %83, label %84, label %107

84:                                               ; preds = %81
  %85 = load i64*, i64** @intwinbase, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = sitofp i64 %89 to double
  %91 = load double, double* %6, align 8
  %92 = fmul double %90, %91
  %93 = call i8* @DOUBLE_TO_REAL(double %92)
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i8**, i8*** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  store i8* %93, i8** %99, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i8**, i8*** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 16
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %102, i64 %105
  store i8* %93, i8** %106, align 8
  br label %107

107:                                              ; preds = %84, %81
  %108 = load i32, i32* %3, align 4
  %109 = srem i32 %108, 32
  %110 = icmp eq i32 %109, 31
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load i32, i32* %5, align 4
  %113 = sub nsw i32 %112, 1023
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %111, %107
  %115 = load i32, i32* %3, align 4
  %116 = srem i32 %115, 64
  %117 = icmp eq i32 %116, 63
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load double, double* %6, align 8
  %120 = fneg double %119
  store double %120, double* %6, align 8
  br label %121

121:                                              ; preds = %118, %114
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %3, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %3, align 4
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, 32
  store i32 %128, i32* %5, align 4
  br label %78

129:                                              ; preds = %78
  %130 = call i32 @debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @debug1(i8*, i64) #1

declare dso_local i8* @DOUBLE_TO_REAL(double) #1

declare dso_local i32 @debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
