; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/lpk/extr_bidi.c_resolveWhitespace.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/lpk/extr_bidi.c_resolveWhitespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32)* @resolveWhitespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolveWhitespace(i32 %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %52, %4
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %55

17:                                               ; preds = %13
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %23 [
    i32 128, label %24
    i32 132, label %27
    i32 137, label %27
    i32 135, label %27
    i32 130, label %27
    i32 134, label %27
    i32 136, label %27
    i32 131, label %27
    i32 138, label %27
    i32 133, label %27
    i32 139, label %27
    i32 129, label %35
    i32 140, label %35
  ]

23:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  br label %46

24:                                               ; preds = %17
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %9, align 4
  br label %46

27:                                               ; preds = %17, %17, %17, %17, %17, %17, %17, %17, %17, %17
  %28 = load i32, i32* %10, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %46

35:                                               ; preds = %17, %17
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @SetDeferredRun(i32* %36, i32 %37, i32 %38, i32 %39)
  store i32 0, i32* %9, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %41, i32* %45, align 4
  br label %46

46:                                               ; preds = %35, %27, %24, %23
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %13

55:                                               ; preds = %13
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @SetDeferredRun(i32* %56, i32 %57, i32 %58, i32 %59)
  ret void
}

declare dso_local i32 @SetDeferredRun(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
