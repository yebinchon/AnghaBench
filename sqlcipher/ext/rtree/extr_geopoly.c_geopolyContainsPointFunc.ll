; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_geopolyContainsPointFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_geopolyContainsPointFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @geopolyContainsPointFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @geopolyContainsPointFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32**, i32*** %6, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 0
  %16 = load i32*, i32** %15, align 8
  %17 = call %struct.TYPE_6__* @geopolyFuncParam(i32* %13, i32* %16, i32 0)
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %7, align 8
  %18 = load i32**, i32*** %6, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 1
  %20 = load i32*, i32** %19, align 8
  %21 = call double @sqlite3_value_double(i32* %20)
  store double %21, double* %8, align 8
  %22 = load i32**, i32*** %6, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 2
  %24 = load i32*, i32** %23, align 8
  %25 = call double @sqlite3_value_double(i32* %24)
  store double %25, double* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = icmp eq %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %104

29:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %62, %29
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 1
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %30
  %38 = load double, double* %8, align 8
  %39 = load double, double* %9, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @GeoX(%struct.TYPE_6__* %40, i32 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @GeoY(%struct.TYPE_6__* %43, i32 %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, 1
  %49 = call i32 @GeoX(%struct.TYPE_6__* %46, i32 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i32 @GeoY(%struct.TYPE_6__* %50, i32 %52)
  %54 = call i32 @pointBeneathLine(double %38, double %39, i32 %42, i32 %45, i32 %49, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %58

57:                                               ; preds = %37
  br label %65

58:                                               ; preds = %37
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %30

65:                                               ; preds = %57, %30
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 2
  br i1 %67, label %68, label %82

68:                                               ; preds = %65
  %69 = load double, double* %8, align 8
  %70 = load double, double* %9, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @GeoX(%struct.TYPE_6__* %71, i32 %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @GeoY(%struct.TYPE_6__* %74, i32 %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = call i32 @GeoX(%struct.TYPE_6__* %77, i32 0)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %80 = call i32 @GeoY(%struct.TYPE_6__* %79, i32 0)
  %81 = call i32 @pointBeneathLine(double %69, double %70, i32 %73, i32 %76, i32 %78, i32 %80)
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %68, %65
  %83 = load i32, i32* %10, align 4
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32*, i32** %4, align 8
  %87 = call i32 @sqlite3_result_int(i32* %86, i32 1)
  br label %101

88:                                               ; preds = %82
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %89, %90
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @sqlite3_result_int(i32* %95, i32 0)
  br label %100

97:                                               ; preds = %88
  %98 = load i32*, i32** %4, align 8
  %99 = call i32 @sqlite3_result_int(i32* %98, i32 2)
  br label %100

100:                                              ; preds = %97, %94
  br label %101

101:                                              ; preds = %100, %85
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %103 = call i32 @sqlite3_free(%struct.TYPE_6__* %102)
  br label %104

104:                                              ; preds = %101, %28
  ret void
}

declare dso_local %struct.TYPE_6__* @geopolyFuncParam(i32*, i32*, i32) #1

declare dso_local double @sqlite3_value_double(i32*) #1

declare dso_local i32 @pointBeneathLine(double, double, i32, i32, i32, i32) #1

declare dso_local i32 @GeoX(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @GeoY(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
