; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_ColorantOrderType_Read.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_ColorantOrderType_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_5__ = type { i32 (i32, %struct.TYPE_5__*, i32*, i32, i32)* }

@cmsMAXCHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct._cms_typehandler_struct*, %struct.TYPE_5__*, i32*, i32)* @Type_ColorantOrderType_Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Type_ColorantOrderType_Read(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_5__* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %15 = ptrtoint %struct._cms_typehandler_struct* %14 to i32
  %16 = call i32 @cmsUNUSED_PARAMETER(i32 %15)
  %17 = load i32*, i32** %10, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %20 = call i32 @_cmsReadUInt32Number(i32 %18, %struct.TYPE_5__* %19, i32* %13)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %62

23:                                               ; preds = %5
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @cmsMAXCHANNELS, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i8* null, i8** %6, align 8
  br label %62

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @cmsMAXCHANNELS, align 4
  %31 = call i64 @_cmsCalloc(i32 %29, i32 %30, i32 4)
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %12, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i8* null, i8** %6, align 8
  br label %62

36:                                               ; preds = %28
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* @cmsMAXCHANNELS, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call i32 @memset(i32* %37, i32 255, i32 %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32 (i32, %struct.TYPE_5__*, i32*, i32, i32)*, i32 (i32, %struct.TYPE_5__*, i32*, i32, i32)** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i32 %45(i32 %46, %struct.TYPE_5__* %47, i32* %48, i32 4, i32 %49)
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %36
  %54 = load i32, i32* %7, align 4
  %55 = load i32*, i32** %12, align 8
  %56 = bitcast i32* %55 to i8*
  %57 = call i32 @_cmsFree(i32 %54, i8* %56)
  store i8* null, i8** %6, align 8
  br label %62

58:                                               ; preds = %36
  %59 = load i32*, i32** %10, align 8
  store i32 1, i32* %59, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = bitcast i32* %60 to i8*
  store i8* %61, i8** %6, align 8
  br label %62

62:                                               ; preds = %58, %53, %35, %27, %22
  %63 = load i8*, i8** %6, align 8
  ret i8* %63
}

declare dso_local i32 @cmsUNUSED_PARAMETER(i32) #1

declare dso_local i32 @_cmsReadUInt32Number(i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i64 @_cmsCalloc(i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @_cmsFree(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
