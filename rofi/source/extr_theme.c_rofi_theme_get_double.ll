; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_theme.c_rofi_theme_get_double.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_theme.c_rofi_theme_get_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { double, i64 }

@FALSE = common dso_local global i32 0, align 4
@P_DOUBLE = common dso_local global i32 0, align 4
@P_INHERIT = common dso_local global i64 0, align 8
@P_INTEGER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Theme entry: #%s %s property %s unset.\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @rofi_theme_get_double(%struct.TYPE_7__* %0, i8* %1, double %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca double, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store double %2, double* %7, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* @FALSE, align 4
  %17 = call i32* @rofi_theme_find_widget(i32 %12, i8* %15, i32 %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* @P_DOUBLE, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @FALSE, align 4
  %22 = call %struct.TYPE_8__* @rofi_theme_find_property(i32* %18, i32 %19, i8* %20, i32 %21)
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %9, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %24 = icmp ne %struct.TYPE_8__* %23, null
  br i1 %24, label %25, label %50

25:                                               ; preds = %3
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @P_INHERIT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %25
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = icmp ne %struct.TYPE_7__* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load double, double* %7, align 8
  %42 = call double @rofi_theme_get_double(%struct.TYPE_7__* %39, i8* %40, double %41)
  store double %42, double* %4, align 8
  br label %102

43:                                               ; preds = %31
  %44 = load double, double* %7, align 8
  store double %44, double* %4, align 8
  br label %102

45:                                               ; preds = %25
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load double, double* %48, align 8
  store double %49, double* %4, align 8
  br label %102

50:                                               ; preds = %3
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* @P_INTEGER, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* @FALSE, align 4
  %55 = call %struct.TYPE_8__* @rofi_theme_find_property(i32* %51, i32 %52, i8* %53, i32 %54)
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %9, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %57 = icmp ne %struct.TYPE_8__* %56, null
  br i1 %57, label %58, label %84

58:                                               ; preds = %50
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @P_INHERIT, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %58
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = icmp ne %struct.TYPE_7__* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = load double, double* %7, align 8
  %75 = call double @rofi_theme_get_double(%struct.TYPE_7__* %72, i8* %73, double %74)
  store double %75, double* %4, align 8
  br label %102

76:                                               ; preds = %64
  %77 = load double, double* %7, align 8
  store double %77, double* %4, align 8
  br label %102

78:                                               ; preds = %58
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = sitofp i64 %82 to double
  store double %83, double* %4, align 8
  br label %102

84:                                               ; preds = %50
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  br label %97

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96, %92
  %98 = phi i8* [ %95, %92 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %96 ]
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 @g_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %87, i8* %98, i8* %99)
  %101 = load double, double* %7, align 8
  store double %101, double* %4, align 8
  br label %102

102:                                              ; preds = %97, %78, %76, %69, %45, %43, %36
  %103 = load double, double* %4, align 8
  ret double %103
}

declare dso_local i32* @rofi_theme_find_widget(i32, i8*, i32) #1

declare dso_local %struct.TYPE_8__* @rofi_theme_find_property(i32*, i32, i8*, i32) #1

declare dso_local i32 @g_debug(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
