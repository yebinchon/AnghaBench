; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_ReadCountAndSting.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_ReadCountAndSting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_5__ = type { i32 (i32, %struct.TYPE_5__*, i8*, i32, i32)* }

@FALSE = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"PS\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_5__*, i32*, i32*, i8*)* @ReadCountAndSting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadCountAndSting(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_5__* %2, i32* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._cms_typehandler_struct*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %9, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %9, align 8
  %17 = call i32 @cmsUNUSED_PARAMETER(%struct._cms_typehandler_struct* %16)
  %18 = load i32*, i32** %12, align 8
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 4
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %7, align 4
  br label %98

24:                                               ; preds = %6
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %27 = call i32 @_cmsReadUInt32Number(i32 %25, %struct.TYPE_5__* %26, i32* %14)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %7, align 4
  br label %98

31:                                               ; preds = %24
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = load i32, i32* @UINT_MAX, align 4
  %35 = sext i32 %34 to i64
  %36 = sub i64 %35, 4
  %37 = icmp ugt i64 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %7, align 4
  br label %98

40:                                               ; preds = %31
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %45, 4
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %7, align 4
  br label %98

50:                                               ; preds = %40
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %52, 1
  %54 = call i64 @_cmsMalloc(i32 %51, i32 %53)
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** %15, align 8
  %56 = load i8*, i8** %15, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %7, align 4
  br label %98

60:                                               ; preds = %50
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32 (i32, %struct.TYPE_5__*, i8*, i32, i32)*, i32 (i32, %struct.TYPE_5__*, i8*, i32, i32)** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %66 = load i8*, i8** %15, align 8
  %67 = load i32, i32* %14, align 4
  %68 = call i32 %63(i32 %64, %struct.TYPE_5__* %65, i8* %66, i32 4, i32 %67)
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %60
  %72 = load i32, i32* %8, align 4
  %73 = load i8*, i8** %15, align 8
  %74 = call i32 @_cmsFree(i32 %72, i8* %73)
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %7, align 4
  br label %98

76:                                               ; preds = %60
  %77 = load i8*, i8** %15, align 8
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  store i8 0, i8* %80, align 1
  %81 = load i32, i32* %8, align 4
  %82 = load i32*, i32** %11, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = call i32 @cmsMLUsetASCII(i32 %81, i32* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %83, i8* %84)
  %86 = load i32, i32* %8, align 4
  %87 = load i8*, i8** %15, align 8
  %88 = call i32 @_cmsFree(i32 %86, i8* %87)
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = add i64 %90, 4
  %92 = load i32*, i32** %12, align 8
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = sub i64 %94, %91
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 4
  %97 = load i32, i32* @TRUE, align 4
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %76, %71, %58, %48, %38, %29, %22
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local i32 @cmsUNUSED_PARAMETER(%struct._cms_typehandler_struct*) #1

declare dso_local i32 @_cmsReadUInt32Number(i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i64 @_cmsMalloc(i32, i32) #1

declare dso_local i32 @_cmsFree(i32, i8*) #1

declare dso_local i32 @cmsMLUsetASCII(i32, i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
