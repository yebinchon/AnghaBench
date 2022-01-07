; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_GetIndex.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_GetIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsMAX_PATH = common dso_local global i32 0, align 4
@hTrans = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Color index (0..%d)? \00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Named color %d out of range!\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"\0A%s %s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @GetIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetIndex(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [4096 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [40 x i8], align 16
  %8 = alloca [40 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* @cmsMAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load i32, i32* @hTrans, align 4
  %18 = call i32* @cmsGetNamedColorList(i32 %17)
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %50

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @cmsNamedColorCount(i32 %23, i32* %24)
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %3, align 4
  %28 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @GetLine(i32 %27, i8* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0
  %32 = call i32 @atoi(i8* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %22
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @FatalError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %36, %22
  %40 = load i32, i32* %3, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %9, align 4
  %43 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %44 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %45 = call i32 @cmsNamedColorInfo(i32 %40, i32* %41, i32 %42, i8* %16, i8* %43, i8* %44, i32* null, i32* null)
  %46 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %47 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %48 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %46, i8* %16, i8* %47)
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %50

50:                                               ; preds = %39, %21
  %51 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %51)
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @cmsGetNamedColorList(i32) #2

declare dso_local i32 @cmsNamedColorCount(i32, i32*) #2

declare dso_local i32 @GetLine(i32, i8*, i8*, i32) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @FatalError(i8*, i32) #2

declare dso_local i32 @cmsNamedColorInfo(i32, i32*, i32, i8*, i8*, i8*, i32*, i32*) #2

declare dso_local i32 @printf(i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
