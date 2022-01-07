; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_CrdInfo_Read.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_CrdInfo_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"nm\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"#0\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"#1\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"#2\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"#3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct._cms_typehandler_struct*, i32*, i32*, i32)* @Type_CrdInfo_Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Type_CrdInfo_Read(i32 %0, %struct._cms_typehandler_struct* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32* @cmsMLUalloc(i32 %13, i32 5)
  store i32* %14, i32** %12, align 8
  %15 = load i32*, i32** %10, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = call i32 @ReadCountAndSting(i32 %16, %struct._cms_typehandler_struct* %17, i32* %18, i32* %19, i32* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  br label %59

23:                                               ; preds = %5
  %24 = load i32, i32* %7, align 4
  %25 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = call i32 @ReadCountAndSting(i32 %24, %struct._cms_typehandler_struct* %25, i32* %26, i32* %27, i32* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %59

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = call i32 @ReadCountAndSting(i32 %32, %struct._cms_typehandler_struct* %33, i32* %34, i32* %35, i32* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %59

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  %41 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @ReadCountAndSting(i32 %40, %struct._cms_typehandler_struct* %41, i32* %42, i32* %43, i32* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  br label %59

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  %49 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @ReadCountAndSting(i32 %48, %struct._cms_typehandler_struct* %49, i32* %50, i32* %51, i32* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  br label %59

55:                                               ; preds = %47
  %56 = load i32*, i32** %10, align 8
  store i32 1, i32* %56, align 4
  %57 = load i32*, i32** %12, align 8
  %58 = bitcast i32* %57 to i8*
  store i8* %58, i8** %6, align 8
  br label %63

59:                                               ; preds = %54, %46, %38, %30, %22
  %60 = load i32, i32* %7, align 4
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @cmsMLUfree(i32 %60, i32* %61)
  store i8* null, i8** %6, align 8
  br label %63

63:                                               ; preds = %59, %55
  %64 = load i8*, i8** %6, align 8
  ret i8* %64
}

declare dso_local i32* @cmsMLUalloc(i32, i32) #1

declare dso_local i32 @ReadCountAndSting(i32, %struct._cms_typehandler_struct*, i32*, i32*, i32*, i8*) #1

declare dso_local i32 @cmsMLUfree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
