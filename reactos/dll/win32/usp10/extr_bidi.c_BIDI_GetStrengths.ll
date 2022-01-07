; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_bidi.c_BIDI_GetStrengths.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_bidi.c_BIDI_GetStrengths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIDI_STRONG = common dso_local global i32 0, align 4
@BIDI_WEAK = common dso_local global i32 0, align 4
@BIDI_NEUTRAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BIDI_GetStrengths(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @classify(i32* %10, i32* %11, i32 %12, i32* %13)
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %45, %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %15
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %38 [
    i32 137, label %25
    i32 136, label %25
    i32 135, label %25
    i32 132, label %25
    i32 145, label %25
    i32 131, label %25
    i32 130, label %25
    i32 133, label %31
    i32 140, label %31
    i32 139, label %31
    i32 138, label %31
    i32 144, label %31
    i32 141, label %31
    i32 142, label %31
    i32 143, label %37
    i32 129, label %37
    i32 128, label %37
    i32 134, label %37
  ]

25:                                               ; preds = %19, %19, %19, %19, %19, %19, %19
  %26 = load i32, i32* @BIDI_STRONG, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %26, i32* %30, align 4
  br label %44

31:                                               ; preds = %19, %19, %19, %19, %19, %19, %19
  %32 = load i32, i32* @BIDI_WEAK, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %32, i32* %36, align 4
  br label %44

37:                                               ; preds = %19, %19, %19, %19
  br label %38

38:                                               ; preds = %19, %37
  %39 = load i32, i32* @BIDI_NEUTRAL, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %39, i32* %43, align 4
  br label %44

44:                                               ; preds = %38, %31, %25
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %15

48:                                               ; preds = %15
  %49 = load i32, i32* @TRUE, align 4
  ret i32 %49
}

declare dso_local i32 @classify(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
