; ModuleID = '/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_bmp_test.c'
source_filename = "/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_bmp_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @bmp_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp_test(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call signext i8 @get8(i32* %5)
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 66
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call signext i8 @get8(i32* %11)
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 77
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %40

16:                                               ; preds = %10
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @get32le(i32* %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @get16le(i32* %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @get16le(i32* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @get32le(i32* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @get32le(i32* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 12
  br i1 %28, label %38, label %29

29:                                               ; preds = %16
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 40
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 56
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 108
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %32, %29, %16
  store i32 1, i32* %2, align 4
  br label %40

39:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %38, %15, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local signext i8 @get8(i32*) #1

declare dso_local i32 @get32le(i32*) #1

declare dso_local i32 @get16le(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
