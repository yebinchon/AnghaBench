; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckMeta.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckMeta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"ibm-t61.icc\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@cmsSigMetaTag = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"new.icc\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckMeta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckMeta() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = call i32 (...) @DbgThread()
  %9 = call i32* @cmsOpenProfileFromFile(i32 %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %65

13:                                               ; preds = %0
  %14 = call i32 (...) @DbgThread()
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @cmsSigMetaTag, align 4
  %17 = call i32* @cmsReadTag(i32 %14, i32* %15, i32 %16)
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %65

21:                                               ; preds = %13
  %22 = call i32 (...) @DbgThread()
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @cmsSaveProfileToMem(i32 %22, i32* %23, i8* null, i32* %5)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 0, i32* %1, align 4
  br label %65

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @malloc(i32 %29)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %2, align 8
  %32 = call i32 (...) @DbgThread()
  %33 = load i32*, i32** %4, align 8
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 @cmsSaveProfileToMem(i32 %32, i32* %33, i8* %34, i32* %5)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %28
  store i32 0, i32* %1, align 4
  br label %65

39:                                               ; preds = %28
  %40 = call i32* @fopen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %40, i32** %6, align 8
  %41 = load i8*, i8** %2, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @fwrite(i8* %41, i32 1, i32 %42, i32* %43)
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @fclose(i32* %45)
  %47 = load i8*, i8** %2, align 8
  %48 = call i32 @free(i8* %47)
  %49 = call i32 (...) @DbgThread()
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @cmsCloseProfile(i32 %49, i32* %50)
  %52 = call i32 (...) @DbgThread()
  %53 = call i32* @cmsOpenProfileFromFile(i32 %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %53, i32** %4, align 8
  %54 = call i32 (...) @DbgThread()
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* @cmsSigMetaTag, align 4
  %57 = call i32* @cmsReadTag(i32 %54, i32* %55, i32 %56)
  store i32* %57, i32** %3, align 8
  %58 = load i32*, i32** %3, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %39
  store i32 0, i32* %1, align 4
  br label %65

61:                                               ; preds = %39
  %62 = call i32 (...) @DbgThread()
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @cmsCloseProfile(i32 %62, i32* %63)
  store i32 1, i32* %1, align 4
  br label %65

65:                                               ; preds = %61, %60, %38, %27, %20, %12
  %66 = load i32, i32* %1, align 4
  ret i32 %66
}

declare dso_local i32* @cmsOpenProfileFromFile(i32, i8*, i8*) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32* @cmsReadTag(i32, i32*, i32) #1

declare dso_local i32 @cmsSaveProfileToMem(i32, i32*, i8*, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @cmsCloseProfile(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
