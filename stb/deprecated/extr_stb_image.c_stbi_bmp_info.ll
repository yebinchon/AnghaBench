; ModuleID = '/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_stbi_bmp_info.c'
source_filename = "/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_stbi_bmp_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @stbi_bmp_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi_bmp_info(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
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
  %12 = call signext i8 @get8(i32* %11)
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 66
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = call signext i8 @get8(i32* %16)
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 77
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %4
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @stbi_rewind(i32* %21)
  store i32 0, i32* %5, align 4
  br label %71

23:                                               ; preds = %15
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @skip(i32* %24, i32 12)
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @get32le(i32* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 12
  br i1 %29, label %30, label %42

30:                                               ; preds = %23
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 40
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 56
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 108
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @stbi_rewind(i32* %40)
  store i32 0, i32* %5, align 4
  br label %71

42:                                               ; preds = %36, %33, %30, %23
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, 12
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @get16le(i32* %46)
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @get16le(i32* %49)
  %51 = load i32*, i32** %8, align 8
  store i32 %50, i32* %51, align 4
  br label %59

52:                                               ; preds = %42
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @get32le(i32* %53)
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @get32le(i32* %56)
  %58 = load i32*, i32** %8, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %52, %45
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @get16le(i32* %60)
  %62 = icmp ne i32 %61, 1
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @stbi_rewind(i32* %64)
  store i32 0, i32* %5, align 4
  br label %71

66:                                               ; preds = %59
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @get16le(i32* %67)
  %69 = sdiv i32 %68, 8
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  store i32 1, i32* %5, align 4
  br label %71

71:                                               ; preds = %66, %63, %39, %20
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local signext i8 @get8(i32*) #1

declare dso_local i32 @stbi_rewind(i32*) #1

declare dso_local i32 @skip(i32*, i32) #1

declare dso_local i32 @get32le(i32*) #1

declare dso_local i32 @get16le(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
