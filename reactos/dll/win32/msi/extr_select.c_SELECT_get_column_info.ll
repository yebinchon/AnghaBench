; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_select.c_SELECT_get_column_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_select.c_SELECT_get_column_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_6__ = type { i32, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_7__*, i32, i32*, i32*, i32*, i32*)* }

@.str = private unnamed_addr constant [19 x i8] c"%p %d %p %p %p %p\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@szEmpty = common dso_local global i32 0, align 4
@MSITYPE_UNKNOWN = common dso_local global i32 0, align 4
@MSITYPE_VALID = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tagMSIVIEW*, i32, i32*, i32*, i32*, i32*)* @SELECT_get_column_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SELECT_get_column_info(%struct.tagMSIVIEW* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tagMSIVIEW*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %8, align 8
  %16 = bitcast %struct.tagMSIVIEW* %15 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %14, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %17, i32 %18, i32* %19, i32* %20, i32* %21, i32* %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = icmp ne %struct.TYPE_7__* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %6
  %29 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %29, i32* %7, align 4
  br label %97

30:                                               ; preds = %6
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %34, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33, %30
  %40 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %40, i32* %7, align 4
  br label %97

41:                                               ; preds = %33
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %80, label %52

52:                                               ; preds = %41
  %53 = load i32*, i32** %10, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @szEmpty, align 4
  %57 = load i32*, i32** %10, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32*, i32** %11, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* @MSITYPE_UNKNOWN, align 4
  %63 = load i32, i32* @MSITYPE_VALID, align 4
  %64 = or i32 %62, %63
  %65 = load i32*, i32** %11, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i32*, i32** %12, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* @FALSE, align 4
  %71 = load i32*, i32** %12, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32*, i32** %13, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* @szEmpty, align 4
  %77 = load i32*, i32** %13, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %79, i32* %7, align 4
  br label %97

80:                                               ; preds = %41
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32 (%struct.TYPE_7__*, i32, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_7__*, i32, i32*, i32*, i32*, i32*)** %86, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load i32*, i32** %10, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = load i32*, i32** %13, align 8
  %96 = call i32 %87(%struct.TYPE_7__* %90, i32 %91, i32* %92, i32* %93, i32* %94, i32* %95)
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %80, %78, %39, %28
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_6__*, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
