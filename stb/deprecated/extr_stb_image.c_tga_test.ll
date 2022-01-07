; ModuleID = '/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_tga_test.c'
source_filename = "/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_tga_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @tga_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tga_test(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @get8u(i32* %5)
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @get8u(i32* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %69

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @get8u(i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %33

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 3
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 9
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 10
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 11
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %69

33:                                               ; preds = %29, %26, %23, %20, %17, %12
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @get16(i32* %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @get16(i32* %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @get8(i32* %38)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @get16(i32* %40)
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @get16(i32* %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @get16(i32* %44)
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %69

48:                                               ; preds = %33
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @get16(i32* %49)
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %69

53:                                               ; preds = %48
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @get8(i32* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 8
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 16
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 24
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 32
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %69

68:                                               ; preds = %64, %61, %58, %53
  store i32 1, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %67, %52, %47, %32, %11
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @get8u(i32*) #1

declare dso_local i32 @get16(i32*) #1

declare dso_local i32 @get8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
