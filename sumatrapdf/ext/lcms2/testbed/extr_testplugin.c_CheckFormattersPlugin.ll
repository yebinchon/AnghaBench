; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_CheckFormattersPlugin.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_CheckFormattersPlugin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.CheckFormattersPlugin.stream = private unnamed_addr constant [4 x i32] [i32 65535, i32 4660, i32 0, i32 13277], align 16
@FormattersPluginSample = common dso_local global i32 0, align 4
@FormattersPluginSample2 = common dso_local global i32 0, align 4
@TYPE_RGB_565 = common dso_local global i32 0, align 4
@INTENT_PERCEPTUAL = common dso_local global i32 0, align 4
@cmsFLAGS_NULLTRANSFORM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckFormattersPlugin() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  %8 = call i32 @WatchDogContext(i32* null)
  store i32 %8, i32* %2, align 4
  %9 = bitcast [4 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([4 x i32]* @__const.CheckFormattersPlugin.stream to i8*), i64 16, i1 false)
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @cmsPlugin(i32 %10, i32* @FormattersPluginSample)
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @DupContext(i32 %12, i32* null)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @cmsPlugin(i32 %14, i32* @FormattersPluginSample2)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @TYPE_RGB_565, align 4
  %18 = load i32, i32* @TYPE_RGB_565, align 4
  %19 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %20 = load i32, i32* @cmsFLAGS_NULLTRANSFORM, align 4
  %21 = call i32 @cmsCreateTransform(i32 %16, i32* null, i32 %17, i32* null, i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %26 = call i32 @cmsDoTransform(i32 %22, i32 %23, i32* %24, i32* %25, i32 4)
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @cmsDeleteTransform(i32 %27, i32 %28)
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @cmsDeleteContext(i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @cmsDeleteContext(i32 %32)
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %49, %0
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %52

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %41, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i32 0, i32* %1, align 4
  br label %53

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %34

52:                                               ; preds = %34
  store i32 1, i32* %1, align 4
  br label %53

53:                                               ; preds = %52, %47
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i32 @WatchDogContext(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cmsPlugin(i32, i32*) #1

declare dso_local i32 @DupContext(i32, i32*) #1

declare dso_local i32 @cmsCreateTransform(i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @cmsDoTransform(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @cmsDeleteTransform(i32, i32) #1

declare dso_local i32 @cmsDeleteContext(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
