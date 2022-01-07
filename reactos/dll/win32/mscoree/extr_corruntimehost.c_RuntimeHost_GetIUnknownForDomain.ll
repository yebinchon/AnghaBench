; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mscoree/extr_corruntimehost.c_RuntimeHost_GetIUnknownForDomain.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mscoree/extr_corruntimehost.c_RuntimeHost_GetIUnknownForDomain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* (i32*, i32*, i8**, i32*)*, i32* (i32*, i8*, i32)*, i32* (i32*, i8*, i8*)*, i32* (i32*)*, i32* (i32*, i8*)*, i32 (i32*)* }

@.str = private unnamed_addr constant [9 x i8] c"mscorlib\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Cannot load mscorlib\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Couldn't get assembly image\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"System\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"AppDomain\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Couldn't get class from image\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"get_CurrentDomain\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Couldn't get method from class\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Couldn't get result pointer\0A\00", align 1
@IID__AppDomain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32**)* @RuntimeHost_GetIUnknownForDomain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RuntimeHost_GetIUnknownForDomain(%struct.TYPE_6__* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca [1 x i8*], align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 5
  %20 = load i32 (i32*)*, i32 (i32*)** %19, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 %20(i32* %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 4
  %27 = load i32* (i32*, i8*)*, i32* (i32*, i8*)** %26, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32* %27(i32* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %29, i32** %10, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @E_FAIL, align 4
  store i32 %34, i32* %4, align 4
  br label %105

35:                                               ; preds = %3
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  %40 = load i32* (i32*)*, i32* (i32*)** %39, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i32* %40(i32* %41)
  store i32* %42, i32** %11, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %35
  %46 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @E_FAIL, align 4
  store i32 %47, i32* %4, align 4
  br label %105

48:                                               ; preds = %35
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32* (i32*, i8*, i8*)*, i32* (i32*, i8*, i8*)** %52, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = call i32* %53(i32* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32* %55, i32** %12, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %48
  %59 = call i32 @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %60 = load i32, i32* @E_FAIL, align 4
  store i32 %60, i32* %4, align 4
  br label %105

61:                                               ; preds = %48
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32* (i32*, i8*, i32)*, i32* (i32*, i8*, i32)** %65, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = call i32* %66(i32* %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 0)
  store i32* %68, i32** %13, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %61
  %72 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %73 = load i32, i32* @E_FAIL, align 4
  store i32 %73, i32* %4, align 4
  br label %105

74:                                               ; preds = %61
  %75 = getelementptr inbounds [1 x i8*], [1 x i8*]* %9, i64 0, i64 0
  store i8* null, i8** %75, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32* (i32*, i32*, i8**, i32*)*, i32* (i32*, i32*, i8**, i32*)** %79, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = getelementptr inbounds [1 x i8*], [1 x i8*]* %9, i64 0, i64 0
  %83 = call i32* %80(i32* %81, i32* null, i8** %82, i32* null)
  store i32* %83, i32** %14, align 8
  %84 = load i32*, i32** %14, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %74
  %87 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %88 = load i32, i32* @E_FAIL, align 4
  store i32 %88, i32* %4, align 4
  br label %105

89:                                               ; preds = %74
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %91 = load i32*, i32** %14, align 8
  %92 = call i32 @RuntimeHost_GetIUnknownForObject(%struct.TYPE_6__* %90, i32* %91, i32** %15)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i64 @SUCCEEDED(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = load i32*, i32** %15, align 8
  %98 = load i32**, i32*** %7, align 8
  %99 = bitcast i32** %98 to i8**
  %100 = call i32 @IUnknown_QueryInterface(i32* %97, i32* @IID__AppDomain, i8** %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32*, i32** %15, align 8
  %102 = call i32 @IUnknown_Release(i32* %101)
  br label %103

103:                                              ; preds = %96, %89
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %103, %86, %71, %58, %45, %32
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @RuntimeHost_GetIUnknownForObject(%struct.TYPE_6__*, i32*, i32**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
