; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_Text_Write.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_Text_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_4__ = type { i32 (i32, %struct.TYPE_4__*, i64, i8*)* }

@cmsNoLanguage = common dso_local global i32 0, align 4
@cmsNoCountry = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_4__*, i8*, i64)* @Type_Text_Write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Type_Text_Write(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_4__* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %12, align 8
  %18 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %19 = ptrtoint %struct._cms_typehandler_struct* %18 to i64
  %20 = call i32 @cmsUNUSED_PARAMETER(i64 %19)
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %12, align 8
  %23 = load i32, i32* @cmsNoLanguage, align 4
  %24 = load i32, i32* @cmsNoCountry, align 4
  %25 = call i64 @cmsMLUgetASCII(i32 %21, i32* %22, i32 %23, i32 %24, i8* null, i64 0)
  store i64 %25, i64* %13, align 8
  %26 = load i64, i64* %13, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %6, align 4
  br label %59

30:                                               ; preds = %5
  %31 = load i32, i32* %7, align 4
  %32 = load i64, i64* %13, align 8
  %33 = call i64 @_cmsMalloc(i32 %31, i64 %32)
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %15, align 8
  %35 = load i8*, i8** %15, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %6, align 4
  br label %59

39:                                               ; preds = %30
  %40 = load i32, i32* %7, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* @cmsNoLanguage, align 4
  %43 = load i32, i32* @cmsNoCountry, align 4
  %44 = load i8*, i8** %15, align 8
  %45 = load i64, i64* %13, align 8
  %46 = call i64 @cmsMLUgetASCII(i32 %40, i32* %41, i32 %42, i32 %43, i8* %44, i64 %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32 (i32, %struct.TYPE_4__*, i64, i8*)*, i32 (i32, %struct.TYPE_4__*, i64, i8*)** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = call i32 %49(i32 %50, %struct.TYPE_4__* %51, i64 %52, i8* %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i8*, i8** %15, align 8
  %57 = call i32 @_cmsFree(i32 %55, i8* %56)
  %58 = load i32, i32* %14, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %39, %37, %28
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @cmsUNUSED_PARAMETER(i64) #1

declare dso_local i64 @cmsMLUgetASCII(i32, i32*, i32, i32, i8*, i64) #1

declare dso_local i64 @_cmsMalloc(i32, i64) #1

declare dso_local i32 @_cmsFree(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
