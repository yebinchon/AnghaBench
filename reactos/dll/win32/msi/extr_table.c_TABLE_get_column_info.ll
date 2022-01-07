; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_TABLE_get_column_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_TABLE_get_column_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%p %d %p %p\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tagMSIVIEW*, i32, i32*, i32*, i32*, i32*)* @TABLE_get_column_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TABLE_get_column_info(%struct.tagMSIVIEW* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tagMSIVIEW*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %8, align 8
  %16 = bitcast %struct.tagMSIVIEW* %15 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %14, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %17, i32 %18, i32* %19, i32* %20)
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %6
  %31 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %31, i32* %7, align 4
  br label %102

32:                                               ; preds = %24
  %33 = load i32*, i32** %10, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %10, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %35
  %50 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %50, i32* %7, align 4
  br label %102

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %51, %32
  %53 = load i32*, i32** %13, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %72

55:                                               ; preds = %52
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %13, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32*, i32** %13, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %55
  %70 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %70, i32* %7, align 4
  br label %102

71:                                               ; preds = %55
  br label %72

72:                                               ; preds = %71, %52
  %73 = load i32*, i32** %11, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %11, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %75, %72
  %87 = load i32*, i32** %12, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %12, align 8
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %89, %86
  %101 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %100, %69, %49, %30
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_5__*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
