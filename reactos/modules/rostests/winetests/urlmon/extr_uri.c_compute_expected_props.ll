; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_uri.c_compute_expected_props.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_uri.c_compute_expected_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i64, i32* }

@Uri_PROPERTY_STRING_START = common dso_local global i64 0, align 8
@Uri_PROPERTY_STRING_LAST = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@Uri_PROPERTY_DWORD_START = common dso_local global i64 0, align 8
@Uri_PROPERTY_DWORD_LAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i64*)* @compute_expected_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @compute_expected_props(%struct.TYPE_7__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i64* %1, i64** %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load i64*, i64** %4, align 8
  store i64 0, i64* %7, align 8
  %8 = load i64, i64* @Uri_PROPERTY_STRING_START, align 8
  store i64 %8, i64* %6, align 8
  br label %9

9:                                                ; preds = %72, %2
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @Uri_PROPERTY_STRING_LAST, align 8
  %12 = icmp ule i64 %10, %11
  br i1 %12, label %13, label %75

13:                                               ; preds = %9
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @Uri_PROPERTY_STRING_START, align 8
  %19 = sub i64 %17, %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @S_OK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %13
  %26 = load i64, i64* %6, align 8
  %27 = trunc i64 %26 to i32
  %28 = shl i32 1, %27
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %5, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %25, %13
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @Uri_PROPERTY_STRING_START, align 8
  %38 = sub i64 %36, %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %63, label %43

43:                                               ; preds = %32
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @Uri_PROPERTY_STRING_START, align 8
  %49 = sub i64 %47, %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @Uri_PROPERTY_STRING_START, align 8
  %58 = sub i64 %56, %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %52, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %43, %32
  %64 = load i64, i64* %6, align 8
  %65 = trunc i64 %64 to i32
  %66 = shl i32 1, %65
  %67 = sext i32 %66 to i64
  %68 = load i64*, i64** %4, align 8
  %69 = load i64, i64* %68, align 8
  %70 = or i64 %69, %67
  store i64 %70, i64* %68, align 8
  br label %71

71:                                               ; preds = %63, %43
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %6, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %6, align 8
  br label %9

75:                                               ; preds = %9
  %76 = load i64, i64* @Uri_PROPERTY_DWORD_START, align 8
  store i64 %76, i64* %6, align 8
  br label %77

77:                                               ; preds = %108, %75
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @Uri_PROPERTY_DWORD_LAST, align 8
  %80 = icmp ule i64 %78, %79
  br i1 %80, label %81, label %111

81:                                               ; preds = %77
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* @Uri_PROPERTY_DWORD_START, align 8
  %87 = sub i64 %85, %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @S_OK, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %81
  %94 = load i64, i64* %6, align 8
  %95 = trunc i64 %94 to i32
  %96 = shl i32 1, %95
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %5, align 8
  %99 = or i64 %98, %97
  store i64 %99, i64* %5, align 8
  br label %100

100:                                              ; preds = %93, %81
  %101 = load i64, i64* %6, align 8
  %102 = trunc i64 %101 to i32
  %103 = shl i32 1, %102
  %104 = sext i32 %103 to i64
  %105 = load i64*, i64** %4, align 8
  %106 = load i64, i64* %105, align 8
  %107 = or i64 %106, %104
  store i64 %107, i64* %105, align 8
  br label %108

108:                                              ; preds = %100
  %109 = load i64, i64* %6, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %6, align 8
  br label %77

111:                                              ; preds = %77
  %112 = load i64, i64* %5, align 8
  ret i64 %112
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
