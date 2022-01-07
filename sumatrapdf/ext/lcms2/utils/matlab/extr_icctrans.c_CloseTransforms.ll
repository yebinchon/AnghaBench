; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/matlab/extr_icctrans.c_CloseTransforms.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/matlab/extr_icctrans.c_CloseTransforms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hColorTransform = common dso_local global i32* null, align 8
@hInput = common dso_local global i32* null, align 8
@hOutput = common dso_local global i32* null, align 8
@hProof = common dso_local global i32* null, align 8
@nProfiles = common dso_local global i32 0, align 4
@hProfiles = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CloseTransforms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CloseTransforms() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @hColorTransform, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32*, i32** @hColorTransform, align 8
  %6 = call i32 @cmsDeleteTransform(i32* %5)
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i32*, i32** @hInput, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i32*, i32** @hInput, align 8
  %12 = call i32 @cmsCloseProfile(i32* %11)
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i32*, i32** @hOutput, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32*, i32** @hOutput, align 8
  %18 = call i32 @cmsCloseProfile(i32* %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32*, i32** @hProof, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32*, i32** @hProof, align 8
  %24 = call i32 @cmsCloseProfile(i32* %23)
  br label %25

25:                                               ; preds = %22, %19
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %37, %25
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* @nProfiles, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load i32**, i32*** @hProfiles, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @cmsCloseProfile(i32* %35)
  br label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %1, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %1, align 4
  br label %26

40:                                               ; preds = %26
  store i32* null, i32** @hColorTransform, align 8
  store i32* null, i32** @hInput, align 8
  store i32* null, i32** @hOutput, align 8
  store i32* null, i32** @hProof, align 8
  ret void
}

declare dso_local i32 @cmsDeleteTransform(i32*) #1

declare dso_local i32 @cmsCloseProfile(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
