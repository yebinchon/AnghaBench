; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_EmitHeader.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_EmitHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsSigProfileDescriptionTag = common dso_local global i32 0, align 4
@cmsSigCopyrightTag = common dso_local global i32 0, align 4
@cmsNoLanguage = common dso_local global i32 0, align 4
@cmsNoCountry = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%%!PS-Adobe-3.0\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%%\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%% %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%% Source: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%%         %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%% Created: %s\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"%%%%BeginResource\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i8*, i32)* @EmitHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EmitHeader(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [256 x i8], align 16
  %13 = alloca [256 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = call i32 @time(i32* %9)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @cmsSigProfileDescriptionTag, align 4
  %18 = call i64 @cmsReadTag(i32 %15, i32 %16, i32 %17)
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %10, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @cmsSigCopyrightTag, align 4
  %23 = call i64 @cmsReadTag(i32 %20, i32 %21, i32 %22)
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %11, align 8
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 255
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %26, align 16
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 255
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  store i8 0, i8* %28, align 16
  %29 = load i32*, i32** %10, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %4
  %32 = load i32, i32* %5, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* @cmsNoLanguage, align 4
  %35 = load i32, i32* @cmsNoCountry, align 4
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %37 = call i32 @cmsMLUgetASCII(i32 %32, i32* %33, i32 %34, i32 %35, i8* %36, i32 255)
  br label %38

38:                                               ; preds = %31, %4
  %39 = load i32*, i32** %11, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* @cmsNoLanguage, align 4
  %45 = load i32, i32* @cmsNoCountry, align 4
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %47 = call i32 @cmsMLUgetASCII(i32 %42, i32* %43, i32 %44, i32 %45, i8* %46, i32 255)
  br label %48

48:                                               ; preds = %41, %38
  %49 = load i32, i32* %5, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %49, i32* %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %5, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %52, i32* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* %5, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %55, i32* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* %5, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %62 = call i32 @RemoveCR(i8* %61)
  %63 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %59, i32* %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %67 = call i32 @RemoveCR(i8* %66)
  %68 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %64, i32* %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %5, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @ctime(i32* %9)
  %72 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %69, i32* %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %5, align 4
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %73, i32* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* %5, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %76, i32* %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @cmsReadTag(i32, i32, i32) #1

declare dso_local i32 @cmsMLUgetASCII(i32, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @_cmsIOPrintf(i32, i32*, i8*, ...) #1

declare dso_local i32 @RemoveCR(i8*) #1

declare dso_local i32 @ctime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
