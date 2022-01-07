; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_ReadEmbeddedCurve.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_ReadEmbeddedCurve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }

@cmsERROR_UNKNOWN_EXTENSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown curve type '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, %struct._cms_typehandler_struct*, i32*)* @ReadEmbeddedCurve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ReadEmbeddedCurve(i32 %0, %struct._cms_typehandler_struct* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._cms_typehandler_struct*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [5 x i8], align 1
  store i32 %0, i32* %5, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @_cmsReadTypeBase(i32 %11, i32* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %27 [
    i32 129, label %15
    i32 128, label %21
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i64 @Type_Curve_Read(i32 %16, %struct._cms_typehandler_struct* %17, i32* %18, i32* %9, i32 0)
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %4, align 8
  br label %35

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i64 @Type_ParametricCurve_Read(i32 %22, %struct._cms_typehandler_struct* %23, i32* %24, i32* %9, i32 0)
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %4, align 8
  br label %35

27:                                               ; preds = %3
  %28 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @_cmsTagSignature2String(i8* %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @cmsERROR_UNKNOWN_EXTENSION, align 4
  %33 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %34 = call i32 @cmsSignalError(i32 %31, i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %33)
  store i32* null, i32** %4, align 8
  br label %35

35:                                               ; preds = %27, %21, %15
  %36 = load i32*, i32** %4, align 8
  ret i32* %36
}

declare dso_local i32 @_cmsReadTypeBase(i32, i32*) #1

declare dso_local i64 @Type_Curve_Read(i32, %struct._cms_typehandler_struct*, i32*, i32*, i32) #1

declare dso_local i64 @Type_ParametricCurve_Read(i32, %struct._cms_typehandler_struct*, i32*, i32*, i32) #1

declare dso_local i32 @_cmsTagSignature2String(i8*, i32) #1

declare dso_local i32 @cmsSignalError(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
