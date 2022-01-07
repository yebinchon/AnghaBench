; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_translate_uri.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_translate_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%08x %s -> %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32**, i32**)* @translate_uri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @translate_uri(%struct.TYPE_5__* %0, i32* %1, i32** %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i32* null, i32** %10, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @IUri_GetDisplayUri(i32* %14, i32** %11)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = call i64 @FAILED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %90

21:                                               ; preds = %4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %77

26:                                               ; preds = %21
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %77

33:                                               ; preds = %26
  store i32* null, i32** %13, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @IDocHostUIHandler_TranslateUrl(i64 %38, i32 0, i32* %39, i32** %13)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @S_OK, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %76

44:                                               ; preds = %33
  %45 = load i32*, i32** %13, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %76

47:                                               ; preds = %44
  %48 = load i32, i32* %12, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @debugstr_w(i32* %49)
  %51 = load i32*, i32** %13, align 8
  %52 = call i32 @debugstr_w(i32* %51)
  %53 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %50, i32 %52)
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @SysFreeString(i32* %54)
  %56 = load i32*, i32** %13, align 8
  %57 = call i32 @create_uri(i32* %56, i32 0, i32** %10)
  store i32 %57, i32* %12, align 4
  %58 = load i32*, i32** %13, align 8
  %59 = call i32 @CoTaskMemFree(i32* %58)
  %60 = load i32, i32* %12, align 4
  %61 = call i64 @FAILED(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %47
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %5, align 4
  br label %90

65:                                               ; preds = %47
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @IUri_GetDisplayUri(i32* %66, i32** %11)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i64 @FAILED(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @IUri_Release(i32* %72)
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %5, align 4
  br label %90

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %44, %33
  br label %77

77:                                               ; preds = %76, %26, %21
  %78 = load i32*, i32** %10, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @IUri_AddRef(i32* %81)
  %83 = load i32*, i32** %7, align 8
  store i32* %83, i32** %10, align 8
  br label %84

84:                                               ; preds = %80, %77
  %85 = load i32*, i32** %11, align 8
  %86 = load i32**, i32*** %8, align 8
  store i32* %85, i32** %86, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = load i32**, i32*** %9, align 8
  store i32* %87, i32** %88, align 8
  %89 = load i32, i32* @S_OK, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %84, %71, %63, %19
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @IUri_GetDisplayUri(i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IDocHostUIHandler_TranslateUrl(i64, i32, i32*, i32**) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @SysFreeString(i32*) #1

declare dso_local i32 @create_uri(i32*, i32, i32**) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

declare dso_local i32 @IUri_Release(i32*) #1

declare dso_local i32 @IUri_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
