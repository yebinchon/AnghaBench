; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_WriteCountAndSting.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_WriteCountAndSting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_5__ = type { i32 (i32, %struct.TYPE_5__*, i64, i8*)* }

@.str = private unnamed_addr constant [3 x i8] c"PS\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_5__*, i32*, i8*)* @WriteCountAndSting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WriteCountAndSting(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_5__* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %15 = call i32 @cmsUNUSED_PARAMETER(%struct._cms_typehandler_struct* %14)
  %16 = load i32, i32* %7, align 4
  %17 = load i32*, i32** %10, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = call i64 @cmsMLUgetASCII(i32 %16, i32* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %18, i8* null, i64 0)
  store i64 %19, i64* %12, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i64, i64* %12, align 8
  %22 = call i64 @_cmsMalloc(i32 %20, i64 %21)
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %13, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %26 = load i64, i64* %12, align 8
  %27 = call i32 @_cmsWriteUInt32Number(i32 %24, %struct.TYPE_5__* %25, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %6, align 4
  br label %58

31:                                               ; preds = %5
  %32 = load i32, i32* %7, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = load i64, i64* %12, align 8
  %37 = call i64 @cmsMLUgetASCII(i32 %32, i32* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %34, i8* %35, i64 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %6, align 4
  br label %58

41:                                               ; preds = %31
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32 (i32, %struct.TYPE_5__*, i64, i8*)*, i32 (i32, %struct.TYPE_5__*, i64, i8*)** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = call i32 %44(i32 %45, %struct.TYPE_5__* %46, i64 %47, i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %41
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %6, align 4
  br label %58

53:                                               ; preds = %41
  %54 = load i32, i32* %7, align 4
  %55 = load i8*, i8** %13, align 8
  %56 = call i32 @_cmsFree(i32 %54, i8* %55)
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %53, %51, %39, %29
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @cmsUNUSED_PARAMETER(%struct._cms_typehandler_struct*) #1

declare dso_local i64 @cmsMLUgetASCII(i32, i32*, i8*, i8*, i8*, i64) #1

declare dso_local i64 @_cmsMalloc(i32, i64) #1

declare dso_local i32 @_cmsWriteUInt32Number(i32, %struct.TYPE_5__*, i64) #1

declare dso_local i32 @_cmsFree(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
