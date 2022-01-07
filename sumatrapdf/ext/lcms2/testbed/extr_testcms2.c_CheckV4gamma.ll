; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckV4gamma.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckV4gamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.CheckV4gamma.Lin = private unnamed_addr constant [2 x i32] [i32 0, i32 65535], align 4
@.str = private unnamed_addr constant [12 x i8] c"v4gamma.icc\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@cmsSigGrayTRCTag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckV4gamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckV4gamma() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca i32*, align 8
  %5 = bitcast [2 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast ([2 x i32]* @__const.CheckV4gamma.Lin to i8*), i64 8, i1 false)
  %6 = call i32 (...) @DbgThread()
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %8 = call i32* @cmsBuildTabulatedToneCurve16(i32 %6, i32 2, i32* %7)
  store i32* %8, i32** %4, align 8
  %9 = call i32 (...) @DbgThread()
  %10 = call i32* @cmsOpenProfileFromFile(i32 %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %10, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %33

14:                                               ; preds = %0
  %15 = call i32 (...) @DbgThread()
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @cmsSetProfileVersion(i32 %15, i32* %16, double 4.300000e+00)
  %18 = call i32 (...) @DbgThread()
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @cmsSigGrayTRCTag, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @cmsWriteTag(i32 %18, i32* %19, i32 %20, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  store i32 0, i32* %1, align 4
  br label %33

25:                                               ; preds = %14
  %26 = call i32 (...) @DbgThread()
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @cmsCloseProfile(i32 %26, i32* %27)
  %29 = call i32 (...) @DbgThread()
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @cmsFreeToneCurve(i32 %29, i32* %30)
  %32 = call i32 @remove(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %33

33:                                               ; preds = %25, %24, %13
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @cmsBuildTabulatedToneCurve16(i32, i32, i32*) #2

declare dso_local i32 @DbgThread(...) #2

declare dso_local i32* @cmsOpenProfileFromFile(i32, i8*, i8*) #2

declare dso_local i32 @cmsSetProfileVersion(i32, i32*, double) #2

declare dso_local i32 @cmsWriteTag(i32, i32*, i32, i32*) #2

declare dso_local i32 @cmsCloseProfile(i32, i32*) #2

declare dso_local i32 @cmsFreeToneCurve(i32, i32*) #2

declare dso_local i32 @remove(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
