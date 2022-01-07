; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetGlyphIndices.c_GetResource.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetGlyphIndices.c_GetResource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RT_RCDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32*)* @GetResource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetResource(i32 %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = call i32 @GetModuleHandleW(i32* null)
  %9 = load i32, i32* %4, align 4
  %10 = load i64, i64* @RT_RCDATA, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i32 @FindResourceW(i32 %8, i32 %9, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %35

16:                                               ; preds = %2
  %17 = call i32 @GetModuleHandleW(i32* null)
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @LoadResource(i32 %17, i32 %18)
  %20 = call i32* @LockResource(i32 %19)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store i32* null, i32** %3, align 8
  br label %35

24:                                               ; preds = %16
  %25 = call i32 @GetModuleHandleW(i32* null)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @SizeofResource(i32 %25, i32 %26)
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32* null, i32** %3, align 8
  br label %35

33:                                               ; preds = %24
  %34 = load i32*, i32** %7, align 8
  store i32* %34, i32** %3, align 8
  br label %35

35:                                               ; preds = %33, %32, %23, %15
  %36 = load i32*, i32** %3, align 8
  ret i32* %36
}

declare dso_local i32 @FindResourceW(i32, i32, i32) #1

declare dso_local i32 @GetModuleHandleW(i32*) #1

declare dso_local i32* @LockResource(i32) #1

declare dso_local i32 @LoadResource(i32, i32) #1

declare dso_local i32 @SizeofResource(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
