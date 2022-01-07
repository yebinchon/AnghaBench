; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckOneRGB.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckOneRGB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, i32)* @CheckOneRGB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckOneRGB(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [3 x i32], align 4
  %16 = alloca [3 x i32], align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* %9, align 4
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %10, align 4
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %11, align 4
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 2
  store i32 %21, i32* %22, align 4
  %23 = call i32 (...) @DbgThread()
  %24 = load i32, i32* %8, align 4
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %27 = call i32 @cmsDoTransform(i32 %23, i32 %24, i32* %25, i32* %26, i32 1)
  %28 = load i32, i32* %12, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @IsGoodWord(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %7
  %34 = load i32, i32* %13, align 4
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @IsGoodWord(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i32, i32* %14, align 4
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @IsGoodWord(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %39, %33, %7
  %46 = phi i1 [ false, %33 ], [ false, %7 ], [ %44, %39 ]
  %47 = zext i1 %46 to i32
  ret i32 %47
}

declare dso_local i32 @cmsDoTransform(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i64 @IsGoodWord(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
