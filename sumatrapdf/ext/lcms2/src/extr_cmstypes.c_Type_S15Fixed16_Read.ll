; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_S15Fixed16_Read.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_S15Fixed16_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct._cms_typehandler_struct*, i32*, i32*, i32)* @Type_S15Fixed16_Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Type_S15Fixed16_Read(i32 %0, %struct._cms_typehandler_struct* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %16 = call i32 @cmsUNUSED_PARAMETER(%struct._cms_typehandler_struct* %15)
  %17 = load i32*, i32** %10, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %11, align 4
  %19 = sext i32 %18 to i64
  %20 = udiv i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %14, align 4
  %24 = call i64 @_cmsCalloc(i32 %22, i32 %23, i32 4)
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %12, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %56

29:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %48, %29
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @_cmsRead15Fixed16Number(i32 %35, i32* %36, i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %7, align 4
  %45 = load i32*, i32** %12, align 8
  %46 = call i32 @_cmsFree(i32 %44, i32* %45)
  store i8* null, i8** %6, align 8
  br label %56

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %13, align 4
  br label %30

51:                                               ; preds = %30
  %52 = load i32, i32* %14, align 4
  %53 = load i32*, i32** %10, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = bitcast i32* %54 to i8*
  store i8* %55, i8** %6, align 8
  br label %56

56:                                               ; preds = %51, %43, %28
  %57 = load i8*, i8** %6, align 8
  ret i8* %57
}

declare dso_local i32 @cmsUNUSED_PARAMETER(%struct._cms_typehandler_struct*) #1

declare dso_local i64 @_cmsCalloc(i32, i32, i32) #1

declare dso_local i32 @_cmsRead15Fixed16Number(i32, i32*, i32*) #1

declare dso_local i32 @_cmsFree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
