; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mscoree/extr_corruntimehost.c_RuntimeHost_GetIUnknownForObject.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mscoree/extr_corruntimehost.c_RuntimeHost_GetIUnknownForObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (i32*)*, i32* (i32*, i32*, i8**, i32*)*, i32* (i32*, i8*, i32)*, i32* (i32*, i8*, i8*)*, i32* (i32*)*, i32* (i32*, i8*)*, i32* (i32*)* }

@.str = private unnamed_addr constant [9 x i8] c"mscorlib\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Cannot load mscorlib\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Couldn't get assembly image\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"System.Runtime.InteropServices\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Marshal\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Couldn't get class from image\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"GetIUnknownForObject\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Couldn't get method from class\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Couldn't get result pointer\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"GetIUnknownForObject returned 0\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RuntimeHost_GetIUnknownForObject(%struct.TYPE_5__* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [2 x i8*], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 6
  %19 = load i32* (i32*)*, i32* (i32*)** %18, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32* %19(i32* %20)
  store i32* %21, i32** %8, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 5
  %26 = load i32* (i32*, i8*)*, i32* (i32*, i8*)** %25, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32* %26(i32* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @E_FAIL, align 4
  store i32 %33, i32* %4, align 4
  br label %110

34:                                               ; preds = %3
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  %39 = load i32* (i32*)*, i32* (i32*)** %38, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i32* %39(i32* %40)
  store i32* %41, i32** %10, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %34
  %45 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @E_FAIL, align 4
  store i32 %46, i32* %4, align 4
  br label %110

47:                                               ; preds = %34
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load i32* (i32*, i8*, i8*)*, i32* (i32*, i8*, i8*)** %51, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = call i32* %52(i32* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32* %54, i32** %11, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %47
  %58 = call i32 @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %59 = load i32, i32* @E_FAIL, align 4
  store i32 %59, i32* %4, align 4
  br label %110

60:                                               ; preds = %47
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i32* (i32*, i8*, i32)*, i32* (i32*, i8*, i32)** %64, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call i32* %65(i32* %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 1)
  store i32* %67, i32** %12, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %60
  %71 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %72 = load i32, i32* @E_FAIL, align 4
  store i32 %72, i32* %4, align 4
  br label %110

73:                                               ; preds = %60
  %74 = load i32*, i32** %6, align 8
  %75 = bitcast i32* %74 to i8*
  %76 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 0
  store i8* %75, i8** %76, align 16
  %77 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 1
  store i8* null, i8** %77, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32* (i32*, i32*, i8**, i32*)*, i32* (i32*, i32*, i8**, i32*)** %81, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 0
  %85 = call i32* %82(i32* %83, i32* null, i8** %84, i32* null)
  store i32* %85, i32** %13, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %73
  %89 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %90 = load i32, i32* @E_FAIL, align 4
  store i32 %90, i32* %4, align 4
  br label %110

91:                                               ; preds = %73
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64 (i32*)*, i64 (i32*)** %95, align 8
  %97 = load i32*, i32** %13, align 8
  %98 = call i64 %96(i32* %97)
  %99 = inttoptr i64 %98 to i32**
  %100 = load i32*, i32** %99, align 8
  %101 = load i32**, i32*** %7, align 8
  store i32* %100, i32** %101, align 8
  %102 = load i32**, i32*** %7, align 8
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %91
  %106 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %107 = load i32, i32* @E_FAIL, align 4
  store i32 %107, i32* %4, align 4
  br label %110

108:                                              ; preds = %91
  %109 = load i32, i32* @S_OK, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %108, %105, %88, %70, %57, %44, %31
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
