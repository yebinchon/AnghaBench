; ModuleID = '/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_stbi_psd_info.c'
source_filename = "/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_stbi_psd_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @stbi_psd_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi_psd_info(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @get32(i32* %11)
  %13 = icmp ne i32 %12, 943870035
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @stbi_rewind(i32* %15)
  store i32 0, i32* %5, align 4
  br label %59

17:                                               ; preds = %4
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @get16(i32* %18)
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @stbi_rewind(i32* %22)
  store i32 0, i32* %5, align 4
  br label %59

24:                                               ; preds = %17
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @skip(i32* %25, i32 6)
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @get16(i32* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %10, align 4
  %33 = icmp sgt i32 %32, 16
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %24
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @stbi_rewind(i32* %35)
  store i32 0, i32* %5, align 4
  br label %59

37:                                               ; preds = %31
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @get32(i32* %38)
  %40 = load i32*, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @get32(i32* %41)
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @get16(i32* %44)
  %46 = icmp ne i32 %45, 8
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @stbi_rewind(i32* %48)
  store i32 0, i32* %5, align 4
  br label %59

50:                                               ; preds = %37
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @get16(i32* %51)
  %53 = icmp ne i32 %52, 3
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @stbi_rewind(i32* %55)
  store i32 0, i32* %5, align 4
  br label %59

57:                                               ; preds = %50
  %58 = load i32*, i32** %9, align 8
  store i32 4, i32* %58, align 4
  store i32 1, i32* %5, align 4
  br label %59

59:                                               ; preds = %57, %54, %47, %34, %21, %14
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @get32(i32*) #1

declare dso_local i32 @stbi_rewind(i32*) #1

declare dso_local i32 @get16(i32*) #1

declare dso_local i32 @skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
