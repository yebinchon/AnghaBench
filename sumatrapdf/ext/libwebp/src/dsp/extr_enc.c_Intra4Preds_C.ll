; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dsp/extr_enc.c_Intra4Preds_C.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dsp/extr_enc.c_Intra4Preds_C.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I4DC4 = common dso_local global i32 0, align 4
@I4TM4 = common dso_local global i32 0, align 4
@I4VE4 = common dso_local global i32 0, align 4
@I4HE4 = common dso_local global i32 0, align 4
@I4RD4 = common dso_local global i32 0, align 4
@I4VR4 = common dso_local global i32 0, align 4
@I4LD4 = common dso_local global i32 0, align 4
@I4VL4 = common dso_local global i32 0, align 4
@I4HD4 = common dso_local global i32 0, align 4
@I4HU4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @Intra4Preds_C to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Intra4Preds_C(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @I4DC4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @DC4(i32* %8, i32* %9)
  %11 = load i32, i32* @I4TM4, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @TM4(i32* %14, i32* %15)
  %17 = load i32, i32* @I4VE4, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @VE4(i32* %20, i32* %21)
  %23 = load i32, i32* @I4HE4, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @HE4(i32* %26, i32* %27)
  %29 = load i32, i32* @I4RD4, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @RD4(i32* %32, i32* %33)
  %35 = load i32, i32* @I4VR4, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @VR4(i32* %38, i32* %39)
  %41 = load i32, i32* @I4LD4, align 4
  %42 = load i32*, i32** %3, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @LD4(i32* %44, i32* %45)
  %47 = load i32, i32* @I4VL4, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @VL4(i32* %50, i32* %51)
  %53 = load i32, i32* @I4HD4, align 4
  %54 = load i32*, i32** %3, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @HD4(i32* %56, i32* %57)
  %59 = load i32, i32* @I4HU4, align 4
  %60 = load i32*, i32** %3, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @HU4(i32* %62, i32* %63)
  ret void
}

declare dso_local i32 @DC4(i32*, i32*) #1

declare dso_local i32 @TM4(i32*, i32*) #1

declare dso_local i32 @VE4(i32*, i32*) #1

declare dso_local i32 @HE4(i32*, i32*) #1

declare dso_local i32 @RD4(i32*, i32*) #1

declare dso_local i32 @VR4(i32*, i32*) #1

declare dso_local i32 @LD4(i32*, i32*) #1

declare dso_local i32 @VL4(i32*, i32*) #1

declare dso_local i32 @HD4(i32*, i32*) #1

declare dso_local i32 @HU4(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
