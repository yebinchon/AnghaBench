; ModuleID = '/home/carl/AnghaBench/redis/src/extr_geo.c_extractLongLatOrReply.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_geo.c_extractLongLatOrReply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C_OK = common dso_local global i64 0, align 8
@C_ERR = common dso_local global i32 0, align 4
@GEO_LONG_MIN = common dso_local global double 0.000000e+00, align 8
@GEO_LONG_MAX = common dso_local global double 0.000000e+00, align 8
@GEO_LAT_MIN = common dso_local global double 0.000000e+00, align 8
@GEO_LAT_MAX = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [45 x i8] c"-ERR invalid longitude,latitude pair %f,%f\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extractLongLatOrReply(i32* %0, i32** %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store double* %2, double** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %29, %3
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %32

12:                                               ; preds = %9
  %13 = load i32*, i32** %5, align 8
  %14 = load i32**, i32*** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = load double*, double** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double, double* %19, i64 %21
  %23 = call i64 @getDoubleFromObjectOrReply(i32* %13, i32* %18, double* %22, i32* null)
  %24 = load i64, i64* @C_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %12
  %27 = load i32, i32* @C_ERR, align 4
  store i32 %27, i32* %4, align 4
  br label %71

28:                                               ; preds = %12
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %9

32:                                               ; preds = %9
  %33 = load double*, double** %7, align 8
  %34 = getelementptr inbounds double, double* %33, i64 0
  %35 = load double, double* %34, align 8
  %36 = load double, double* @GEO_LONG_MIN, align 8
  %37 = fcmp olt double %35, %36
  br i1 %37, label %56, label %38

38:                                               ; preds = %32
  %39 = load double*, double** %7, align 8
  %40 = getelementptr inbounds double, double* %39, i64 0
  %41 = load double, double* %40, align 8
  %42 = load double, double* @GEO_LONG_MAX, align 8
  %43 = fcmp ogt double %41, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %38
  %45 = load double*, double** %7, align 8
  %46 = getelementptr inbounds double, double* %45, i64 1
  %47 = load double, double* %46, align 8
  %48 = load double, double* @GEO_LAT_MIN, align 8
  %49 = fcmp olt double %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load double*, double** %7, align 8
  %52 = getelementptr inbounds double, double* %51, i64 1
  %53 = load double, double* %52, align 8
  %54 = load double, double* @GEO_LAT_MAX, align 8
  %55 = fcmp ogt double %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %50, %44, %38, %32
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 (...) @sdsempty()
  %59 = load double*, double** %7, align 8
  %60 = getelementptr inbounds double, double* %59, i64 0
  %61 = load double, double* %60, align 8
  %62 = load double*, double** %7, align 8
  %63 = getelementptr inbounds double, double* %62, i64 1
  %64 = load double, double* %63, align 8
  %65 = call i32 @sdscatprintf(i32 %58, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), double %61, double %64)
  %66 = call i32 @addReplySds(i32* %57, i32 %65)
  %67 = load i32, i32* @C_ERR, align 4
  store i32 %67, i32* %4, align 4
  br label %71

68:                                               ; preds = %50
  %69 = load i64, i64* @C_OK, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %68, %56, %26
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @getDoubleFromObjectOrReply(i32*, i32*, double*, i32*) #1

declare dso_local i32 @addReplySds(i32*, i32) #1

declare dso_local i32 @sdscatprintf(i32, i8*, double, double) #1

declare dso_local i32 @sdsempty(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
