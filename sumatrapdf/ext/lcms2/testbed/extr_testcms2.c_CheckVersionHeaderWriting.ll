; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckVersionHeaderWriting.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckVersionHeaderWriting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.CheckVersionHeaderWriting.test_versions = private unnamed_addr constant [4 x float] [float 0x4002666660000000, float 0x401051EB80000000, float 0x40105C2900000000, float 0x4011333340000000], align 16
@.str = private unnamed_addr constant [13 x i8] c"versions.icc\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Version failed to round-trip: wrote %.2f, read %.2f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckVersionHeaderWriting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckVersionHeaderWriting() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [4 x float], align 16
  %5 = bitcast [4 x float]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([4 x float]* @__const.CheckVersionHeaderWriting.test_versions to i8*), i64 16, i1 false)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %58, %0
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = icmp ult i64 %8, 4
  br i1 %9, label %10, label %61

10:                                               ; preds = %6
  %11 = call i32 (...) @DbgThread()
  %12 = call i32* @cmsCreateProfilePlaceholder(i32 %11)
  store i32* %12, i32** %2, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* %1, align 4
  br label %62

16:                                               ; preds = %10
  %17 = call i32 (...) @DbgThread()
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 %20
  %22 = load float, float* %21, align 4
  %23 = call i32 @cmsSetProfileVersion(i32 %17, i32* %18, float %22)
  %24 = call i32 (...) @DbgThread()
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @cmsSaveProfileToFile(i32 %24, i32* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 (...) @DbgThread()
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @cmsCloseProfile(i32 %27, i32* %28)
  %30 = call i32 (...) @DbgThread()
  %31 = call i32* @cmsOpenProfileFromFile(i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %31, i32** %2, align 8
  %32 = call i32 (...) @DbgThread()
  %33 = load i32*, i32** %2, align 8
  %34 = call i64 @cmsGetProfileVersion(i32 %32, i32* %33)
  %35 = sitofp i64 %34 to float
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 %37
  %39 = load float, float* %38, align 4
  %40 = fsub float %35, %39
  %41 = fptosi float %40 to i64
  %42 = call double @fabs(i64 %41)
  %43 = fcmp ogt double %42, 5.000000e-03
  br i1 %43, label %44, label %53

44:                                               ; preds = %16
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 %46
  %48 = load float, float* %47, align 4
  %49 = call i32 (...) @DbgThread()
  %50 = load i32*, i32** %2, align 8
  %51 = call i64 @cmsGetProfileVersion(i32 %49, i32* %50)
  %52 = call i32 @Fail(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), float %48, i64 %51)
  store i32 0, i32* %1, align 4
  br label %62

53:                                               ; preds = %16
  %54 = call i32 (...) @DbgThread()
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @cmsCloseProfile(i32 %54, i32* %55)
  %57 = call i32 @remove(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %6

61:                                               ; preds = %6
  store i32 1, i32* %1, align 4
  br label %62

62:                                               ; preds = %61, %44, %15
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @cmsCreateProfilePlaceholder(i32) #2

declare dso_local i32 @DbgThread(...) #2

declare dso_local i32 @cmsSetProfileVersion(i32, i32*, float) #2

declare dso_local i32 @cmsSaveProfileToFile(i32, i32*, i8*) #2

declare dso_local i32 @cmsCloseProfile(i32, i32*) #2

declare dso_local i32* @cmsOpenProfileFromFile(i32, i8*, i8*) #2

declare dso_local double @fabs(i64) #2

declare dso_local i64 @cmsGetProfileVersion(i32, i32*) #2

declare dso_local i32 @Fail(i8*, float, i64) #2

declare dso_local i32 @remove(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
