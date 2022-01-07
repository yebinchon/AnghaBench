; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_percentile.c_percentStep.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_percentile.c_percentStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, i32, i32, double* }

@SQLITE_INTEGER = common dso_local global i32 0, align 4
@SQLITE_FLOAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"2nd argument to percentile() is not a number between 0.0 and 100.0\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"2nd argument to percentile() is not the same for all input rows\00", align 1
@SQLITE_NULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"1st argument to percentile() is not numeric\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Inf input to percentile()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @percentStep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @percentStep(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca double*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 2
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32**, i32*** %6, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @sqlite3_value_numeric_type(i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32**, i32*** %6, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 1
  %23 = load i32*, i32** %22, align 8
  %24 = call double @sqlite3_value_double(i32* %23)
  store double %24, double* %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @SQLITE_INTEGER, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @SQLITE_FLOAT, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %28, %3
  %33 = load double, double* %8, align 8
  %34 = fcmp olt double %33, 0.000000e+00
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load double, double* %8, align 8
  %37 = fcmp ogt double %36, 1.000000e+02
  br i1 %37, label %38, label %41

38:                                               ; preds = %35, %32, %28
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @sqlite3_result_error(i32* %39, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %152

41:                                               ; preds = %35
  %42 = load i32*, i32** %4, align 8
  %43 = call i64 @sqlite3_aggregate_context(i32* %42, i32 24)
  %44 = inttoptr i64 %43 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %44, %struct.TYPE_3__** %7, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = icmp eq %struct.TYPE_3__* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %152

48:                                               ; preds = %41
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load double, double* %50, align 8
  %52 = fcmp oeq double %51, 0.000000e+00
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load double, double* %8, align 8
  %55 = fadd double %54, 1.000000e+00
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store double %55, double* %57, align 8
  br label %70

58:                                               ; preds = %48
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load double, double* %60, align 8
  %62 = load double, double* %8, align 8
  %63 = fadd double %62, 1.000000e+00
  %64 = call i32 @sameValue(double %61, double %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %58
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @sqlite3_result_error(i32* %67, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  br label %152

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %53
  %71 = load i32**, i32*** %6, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @sqlite3_value_type(i32* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @SQLITE_NULL, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %152

79:                                               ; preds = %70
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @SQLITE_INTEGER, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @SQLITE_FLOAT, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @sqlite3_result_error(i32* %88, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  br label %152

90:                                               ; preds = %83, %79
  %91 = load i32**, i32*** %6, align 8
  %92 = getelementptr inbounds i32*, i32** %91, i64 0
  %93 = load i32*, i32** %92, align 8
  %94 = call double @sqlite3_value_double(i32* %93)
  store double %94, double* %10, align 8
  %95 = load double, double* %10, align 8
  %96 = call i64 @isInfinity(double %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @sqlite3_result_error(i32* %99, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  br label %152

101:                                              ; preds = %90
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = icmp sge i32 %104, %107
  br i1 %108, label %109, label %141

109:                                              ; preds = %101
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %112, 2
  %114 = add nsw i32 %113, 250
  store i32 %114, i32* %11, align 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 3
  %117 = load double*, double** %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = zext i32 %118 to i64
  %120 = mul i64 8, %119
  %121 = trunc i64 %120 to i32
  %122 = call double* @sqlite3_realloc64(double* %117, i32 %121)
  store double* %122, double** %12, align 8
  %123 = load double*, double** %12, align 8
  %124 = icmp eq double* %123, null
  br i1 %124, label %125, label %134

125:                                              ; preds = %109
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 3
  %128 = load double*, double** %127, align 8
  %129 = call i32 @sqlite3_free(double* %128)
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %131 = call i32 @memset(%struct.TYPE_3__* %130, i32 0, i32 24)
  %132 = load i32*, i32** %4, align 8
  %133 = call i32 @sqlite3_result_error_nomem(i32* %132)
  br label %152

134:                                              ; preds = %109
  %135 = load i32, i32* %11, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 4
  %138 = load double*, double** %12, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 3
  store double* %138, double** %140, align 8
  br label %141

141:                                              ; preds = %134, %101
  %142 = load double, double* %10, align 8
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 3
  %145 = load double*, double** %144, align 8
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds double, double* %145, i64 %150
  store double %142, double* %151, align 8
  br label %152

152:                                              ; preds = %141, %125, %98, %87, %78, %66, %47, %38
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_value_numeric_type(i32*) #1

declare dso_local double @sqlite3_value_double(i32*) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i64 @sqlite3_aggregate_context(i32*, i32) #1

declare dso_local i32 @sameValue(double, double) #1

declare dso_local i32 @sqlite3_value_type(i32*) #1

declare dso_local i64 @isInfinity(double) #1

declare dso_local double* @sqlite3_realloc64(double*, i32) #1

declare dso_local i32 @sqlite3_free(double*) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
