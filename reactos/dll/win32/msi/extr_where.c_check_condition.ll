; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_check_condition.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_check_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_8__ = type { i64, i64 }

@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_CONTINUE = common dso_local global i64 0, align 8
@INVALID_ROW_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i32*, %struct.TYPE_8__**, i64*)* @check_condition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @check_condition(%struct.TYPE_7__* %0, i32* %1, %struct.TYPE_8__** %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_8__** %2, %struct.TYPE_8__*** %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %11, i64* %9, align 8
  %12 = load i64*, i64** %8, align 8
  %13 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i64, i64* %12, i64 %16
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %80, %4
  %19 = load i64*, i64** %8, align 8
  %20 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i64, i64* %19, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %25, %29
  br i1 %30, label %31, label %89

31:                                               ; preds = %18
  store i64 0, i64* %10, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = load i64*, i64** %8, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i64 @WHERE_evaluate(%struct.TYPE_7__* %34, i64* %35, i32 %38, i64* %10, i32* %39)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @ERROR_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %31
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @ERROR_CONTINUE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %89

49:                                               ; preds = %44, %31
  %50 = load i64, i64* %10, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %79

52:                                               ; preds = %49
  %53 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %53, i64 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = icmp ne %struct.TYPE_8__* %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %60, i64 1
  %62 = load i64*, i64** %8, align 8
  %63 = call i64 @check_condition(%struct.TYPE_7__* %58, i32* %59, %struct.TYPE_8__** %61, i64* %62)
  store i64 %63, i64* %9, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* @ERROR_SUCCESS, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %89

68:                                               ; preds = %57
  br label %78

69:                                               ; preds = %52
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* @ERROR_SUCCESS, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %89

74:                                               ; preds = %69
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %76 = load i64*, i64** %8, align 8
  %77 = call i32 @add_row(%struct.TYPE_7__* %75, i64* %76)
  br label %78

78:                                               ; preds = %74, %68
  br label %79

79:                                               ; preds = %78, %49
  br label %80

80:                                               ; preds = %79
  %81 = load i64*, i64** %8, align 8
  %82 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i64, i64* %81, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %86, align 8
  br label %18

89:                                               ; preds = %73, %67, %48, %18
  %90 = load i64, i64* @INVALID_ROW_INDEX, align 8
  %91 = load i64*, i64** %8, align 8
  %92 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i64, i64* %91, i64 %95
  store i64 %90, i64* %96, align 8
  %97 = load i64, i64* %9, align 8
  ret i64 %97
}

declare dso_local i64 @WHERE_evaluate(%struct.TYPE_7__*, i64*, i32, i64*, i32*) #1

declare dso_local i32 @add_row(%struct.TYPE_7__*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
