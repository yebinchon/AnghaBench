; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_TakeFloatValues.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_TakeFloatValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsMAX_PATH = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"\0AEnter values, 'q' to quit\0A\00", align 1
@InputNamedColor = common dso_local global i64 0, align 8
@InputColorSpace = common dso_local global i32 0, align 4
@InputColorant = common dso_local global i64 0, align 8
@InputRange = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Channel #%u\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s? \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @TakeFloatValues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TakeFloatValues(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [4096 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %12 = load i32, i32* @cmsMAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @stdin, align 4
  %17 = call i64 @xisatty(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i64, i64* @InputNamedColor, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @GetIndex(i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @memcpy(i32* %28, i32* %10, i32 4)
  store i32 1, i32* %11, align 4
  br label %74

30:                                               ; preds = %22
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @InputColorSpace, align 4
  %33 = call i32 @cmsChannelsOf(i32 %31, i32 %32)
  store i32 %33, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %63, %30
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %34
  %39 = load i64, i64* @InputColorant, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = load i64, i64* @InputColorant, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @cmsNamedColorInfo(i32 %42, i64 %43, i32 %44, i8* %15, i32* null, i32* null, i32* null, i32* null)
  br label %50

46:                                               ; preds = %38
  store i32 1, i32* @InputRange, align 4
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  %49 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32, i32* %3, align 4
  %52 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %53 = call i32 @GetLine(i32 %51, i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %15)
  %54 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %55 = call i64 @atof(i8* %54)
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @InputRange, align 4
  %58 = sdiv i32 %56, %57
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %50
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %34

66:                                               ; preds = %34
  %67 = load i32, i32* @stdin, align 4
  %68 = call i64 @xisatty(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* @stderr, align 4
  %72 = call i32 @fprintf(i32 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %66
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %73, %25
  %75 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %11, align 4
  switch i32 %76, label %78 [
    i32 0, label %77
    i32 1, label %77
  ]

77:                                               ; preds = %74, %74
  ret void

78:                                               ; preds = %74
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @xisatty(i32) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @GetIndex(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @cmsChannelsOf(i32, i32) #2

declare dso_local i32 @cmsNamedColorInfo(i32, i64, i32, i8*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @GetLine(i32, i8*, i8*, i8*) #2

declare dso_local i64 @atof(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
