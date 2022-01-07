; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckFloatNULLxform.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckFloatNULLxform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.CheckFloatNULLxform.in = private unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@TYPE_GRAY_FLT = common dso_local global i32 0, align 4
@INTENT_PERCEPTUAL = common dso_local global i32 0, align 4
@cmsFLAGS_NULLTRANSFORM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Unable to create float null transform\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"float nullxform\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckFloatNULLxform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckFloatNULLxform() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x i32], align 16
  %4 = alloca [10 x i32], align 16
  %5 = alloca i32*, align 8
  %6 = bitcast [10 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([10 x i32]* @__const.CheckFloatNULLxform.in to i8*), i64 40, i1 false)
  %7 = call i32 (...) @DbgThread()
  %8 = load i32, i32* @TYPE_GRAY_FLT, align 4
  %9 = load i32, i32* @TYPE_GRAY_FLT, align 4
  %10 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %11 = load i32, i32* @cmsFLAGS_NULLTRANSFORM, align 4
  %12 = call i32* @cmsCreateTransform(i32 %7, i32* null, i32 %8, i32* null, i32 %9, i32 %10, i32 %11)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = call i32 @Fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %46

17:                                               ; preds = %0
  %18 = call i32 (...) @DbgThread()
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 0
  %21 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  %22 = call i32 @cmsDoTransform(i32 %18, i32* %19, i32* %20, i32* %21, i32 10)
  %23 = call i32 (...) @DbgThread()
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @cmsDeleteTransform(i32 %23, i32* %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %42, %17
  %27 = load i32, i32* %2, align 4
  %28 = icmp slt i32 %27, 10
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @IsGoodVal(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %37, double 1.000000e-03)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %29
  store i32 0, i32* %1, align 4
  br label %46

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %2, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %2, align 4
  br label %26

45:                                               ; preds = %26
  store i32 1, i32* %1, align 4
  br label %46

46:                                               ; preds = %45, %40, %15
  %47 = load i32, i32* %1, align 4
  ret i32 %47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @cmsCreateTransform(i32, i32*, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @DbgThread(...) #2

declare dso_local i32 @Fail(i8*) #2

declare dso_local i32 @cmsDoTransform(i32, i32*, i32*, i32*, i32) #2

declare dso_local i32 @cmsDeleteTransform(i32, i32*) #2

declare dso_local i32 @IsGoodVal(i8*, i32, i32, double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
