; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_CrdInfo_Write.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_CrdInfo_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"nm\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"#0\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"#1\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"#2\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"#3\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, i32*, i8*, i32)* @Type_CrdInfo_Write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Type_CrdInfo_Write(i32 %0, %struct._cms_typehandler_struct* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i8*, i8** %10, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %12, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = call i32 @WriteCountAndSting(i32 %15, %struct._cms_typehandler_struct* %16, i32* %17, i32* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  br label %56

22:                                               ; preds = %5
  %23 = load i32, i32* %7, align 4
  %24 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = call i32 @WriteCountAndSting(i32 %23, %struct._cms_typehandler_struct* %24, i32* %25, i32* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %56

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @WriteCountAndSting(i32 %31, %struct._cms_typehandler_struct* %32, i32* %33, i32* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %56

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = call i32 @WriteCountAndSting(i32 %39, %struct._cms_typehandler_struct* %40, i32* %41, i32* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  br label %56

46:                                               ; preds = %38
  %47 = load i32, i32* %7, align 4
  %48 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = call i32 @WriteCountAndSting(i32 %47, %struct._cms_typehandler_struct* %48, i32* %49, i32* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %6, align 4
  br label %58

56:                                               ; preds = %53, %45, %37, %29, %21
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @WriteCountAndSting(i32, %struct._cms_typehandler_struct*, i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
