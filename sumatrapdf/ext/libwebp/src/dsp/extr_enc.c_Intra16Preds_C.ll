; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dsp/extr_enc.c_Intra16Preds_C.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dsp/extr_enc.c_Intra16Preds_C.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I16DC16 = common dso_local global i32 0, align 4
@I16VE16 = common dso_local global i32 0, align 4
@I16HE16 = common dso_local global i32 0, align 4
@I16TM16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @Intra16Preds_C to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Intra16Preds_C(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* @I16DC16, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32*, i32** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @DCMode(i32* %10, i32* %11, i32* %12, i32 16, i32 16, i32 5)
  %14 = load i32, i32* @I16VE16, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @VerticalPred(i32* %17, i32* %18, i32 16)
  %20 = load i32, i32* @I16HE16, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @HorizontalPred(i32* %23, i32* %24, i32 16)
  %26 = load i32, i32* @I16TM16, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @TrueMotion(i32* %29, i32* %30, i32* %31, i32 16)
  ret void
}

declare dso_local i32 @DCMode(i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @VerticalPred(i32*, i32*, i32) #1

declare dso_local i32 @HorizontalPred(i32*, i32*, i32) #1

declare dso_local i32 @TrueMotion(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
