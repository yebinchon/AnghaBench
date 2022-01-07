; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckBadProfiles.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckBadProfiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"IDoNotExist.icc\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"IAmIllFormed*.icc\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"IHaveBadAccessMode.icc\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"bad.icc\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"toosmall.icc\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"123\00", align 1
@SimultaneousErrors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckBadProfiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckBadProfiles() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = call i32 (...) @DbgThread()
  %4 = call i32* @cmsOpenProfileFromFile(i32 %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %4, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = call i32 (...) @DbgThread()
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @cmsCloseProfile(i32 %8, i32* %9)
  store i32 0, i32* %1, align 4
  br label %88

11:                                               ; preds = %0
  %12 = call i32 (...) @DbgThread()
  %13 = call i32* @cmsOpenProfileFromFile(i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %13, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = call i32 (...) @DbgThread()
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @cmsCloseProfile(i32 %17, i32* %18)
  store i32 0, i32* %1, align 4
  br label %88

20:                                               ; preds = %11
  %21 = call i32 (...) @DbgThread()
  %22 = call i32* @cmsOpenProfileFromFile(i32 %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %22, i32** %2, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = call i32 (...) @DbgThread()
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @cmsCloseProfile(i32 %26, i32* %27)
  store i32 0, i32* %1, align 4
  br label %88

29:                                               ; preds = %20
  %30 = call i32 (...) @DbgThread()
  %31 = call i32* @cmsOpenProfileFromFile(i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %31, i32** %2, align 8
  %32 = load i32*, i32** %2, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = call i32 (...) @DbgThread()
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @cmsCloseProfile(i32 %35, i32* %36)
  store i32 0, i32* %1, align 4
  br label %88

38:                                               ; preds = %29
  %39 = call i32 (...) @DbgThread()
  %40 = call i32* @cmsOpenProfileFromFile(i32 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32* %40, i32** %2, align 8
  %41 = load i32*, i32** %2, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = call i32 (...) @DbgThread()
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @cmsCloseProfile(i32 %44, i32* %45)
  store i32 0, i32* %1, align 4
  br label %88

47:                                               ; preds = %38
  %48 = call i32 (...) @DbgThread()
  %49 = call i32* @cmsOpenProfileFromFile(i32 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %49, i32** %2, align 8
  %50 = load i32*, i32** %2, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = call i32 (...) @DbgThread()
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @cmsCloseProfile(i32 %53, i32* %54)
  store i32 0, i32* %1, align 4
  br label %88

56:                                               ; preds = %47
  %57 = call i32 (...) @DbgThread()
  %58 = call i32* @cmsOpenProfileFromFile(i32 %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %58, i32** %2, align 8
  %59 = load i32*, i32** %2, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = call i32 (...) @DbgThread()
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @cmsCloseProfile(i32 %62, i32* %63)
  store i32 0, i32* %1, align 4
  br label %88

65:                                               ; preds = %56
  %66 = call i32 (...) @DbgThread()
  %67 = call i32* @cmsOpenProfileFromMem(i32 %66, i8* null, i32 3)
  store i32* %67, i32** %2, align 8
  %68 = load i32*, i32** %2, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = call i32 (...) @DbgThread()
  %72 = load i32*, i32** %2, align 8
  %73 = call i32 @cmsCloseProfile(i32 %71, i32* %72)
  store i32 0, i32* %1, align 4
  br label %88

74:                                               ; preds = %65
  %75 = call i32 (...) @DbgThread()
  %76 = call i32* @cmsOpenProfileFromMem(i32 %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 3)
  store i32* %76, i32** %2, align 8
  %77 = load i32*, i32** %2, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = call i32 (...) @DbgThread()
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @cmsCloseProfile(i32 %80, i32* %81)
  store i32 0, i32* %1, align 4
  br label %88

83:                                               ; preds = %74
  %84 = load i32, i32* @SimultaneousErrors, align 4
  %85 = icmp ne i32 %84, 9
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 0, i32* %1, align 4
  br label %88

87:                                               ; preds = %83
  store i32 1, i32* %1, align 4
  br label %88

88:                                               ; preds = %87, %86, %79, %70, %61, %52, %43, %34, %25, %16, %7
  %89 = load i32, i32* %1, align 4
  ret i32 %89
}

declare dso_local i32* @cmsOpenProfileFromFile(i32, i8*, i8*) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsCloseProfile(i32, i32*) #1

declare dso_local i32* @cmsOpenProfileFromMem(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
