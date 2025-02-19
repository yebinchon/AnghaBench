; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dsp/extr_enc.c_IntraChromaPreds_C.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dsp/extr_enc.c_IntraChromaPreds_C.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C8DC8 = common dso_local global i32 0, align 4
@C8VE8 = common dso_local global i32 0, align 4
@C8HE8 = common dso_local global i32 0, align 4
@C8TM8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @IntraChromaPreds_C to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IntraChromaPreds_C(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* @C8DC8, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32*, i32** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @DCMode(i32* %10, i32* %11, i32* %12, i32 8, i32 8, i32 4)
  %14 = load i32, i32* @C8VE8, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @VerticalPred(i32* %17, i32* %18, i32 8)
  %20 = load i32, i32* @C8HE8, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @HorizontalPred(i32* %23, i32* %24, i32 8)
  %26 = load i32, i32* @C8TM8, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @TrueMotion(i32* %29, i32* %30, i32* %31, i32 8)
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 8
  store i32* %34, i32** %4, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 8
  store i32* %39, i32** %6, align 8
  br label %40

40:                                               ; preds = %37, %3
  %41 = load i32*, i32** %5, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 16
  store i32* %45, i32** %5, align 8
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* @C8DC8, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @DCMode(i32* %50, i32* %51, i32* %52, i32 8, i32 8, i32 4)
  %54 = load i32, i32* @C8VE8, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @VerticalPred(i32* %57, i32* %58, i32 8)
  %60 = load i32, i32* @C8HE8, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @HorizontalPred(i32* %63, i32* %64, i32 8)
  %66 = load i32, i32* @C8TM8, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32*, i32** %5, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @TrueMotion(i32* %69, i32* %70, i32* %71, i32 8)
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
