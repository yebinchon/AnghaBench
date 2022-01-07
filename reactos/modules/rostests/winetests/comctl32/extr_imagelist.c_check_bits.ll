; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_check_bits.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_check_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@winetest_interactive = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SRCCOPY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: bits different\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32*, i32)* @check_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_bits(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [1250 x i32], align 16
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 -1, i32* %18, align 4
  %19 = load i32, i32* @winetest_interactive, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %6
  br label %115

25:                                               ; preds = %21
  %26 = getelementptr inbounds [1250 x i32], [1250 x i32]* %13, i64 0, i64 0
  %27 = call i32 @memset(i32* %26, i32 0, i32 5000)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @FALSE, align 4
  %34 = call i32 @show_image(i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = call i64 @GetPixel(i32 %35, i32 0, i32 0)
  store i64 %36, i64* %14, align 8
  store i32 0, i32* %17, align 4
  br label %37

37:                                               ; preds = %74, %25
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %77

41:                                               ; preds = %37
  store i32 0, i32* %16, align 4
  br label %42

42:                                               ; preds = %70, %41
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %73

46:                                               ; preds = %42
  %47 = load i32, i32* %16, align 4
  %48 = and i32 %47, 7
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %18, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %18, align 4
  br label %53

53:                                               ; preds = %50, %46
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %17, align 4
  %57 = call i64 @GetPixel(i32 %54, i32 %55, i32 %56)
  %58 = load i64, i64* %14, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %53
  %61 = load i32, i32* %16, align 4
  %62 = and i32 %61, 7
  %63 = ashr i32 128, %62
  %64 = load i32, i32* %18, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [1250 x i32], [1250 x i32]* %13, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %63
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %60, %53
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %16, align 4
  br label %42

73:                                               ; preds = %42
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %17, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %17, align 4
  br label %37

77:                                               ; preds = %37
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  %86 = load i32, i32* @SRCCOPY, align 4
  %87 = call i32 @BitBlt(i32 %78, i32 0, i32 0, i32 %79, i32 %80, i32 %81, i32 %83, i32 %85, i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %15, align 4
  %90 = call i32 @ReleaseDC(i32 %88, i32 %89)
  %91 = getelementptr inbounds [1250 x i32], [1250 x i32]* %13, i64 0, i64 0
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = mul nsw i32 %93, %94
  %96 = sdiv i32 %95, 8
  %97 = call i64 @memcmp(i32* %91, i32* %92, i32 %96)
  %98 = icmp eq i64 %97, 0
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @ok(i32 %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = getelementptr inbounds [1250 x i32], [1250 x i32]* %13, i64 0, i64 0
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = mul nsw i32 %104, %105
  %107 = sdiv i32 %106, 8
  %108 = call i64 @memcmp(i32* %102, i32* %103, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %77
  %111 = getelementptr inbounds [1250 x i32], [1250 x i32]* %13, i64 0, i64 0
  %112 = load i32*, i32** %11, align 8
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @dump_bits(i32* %111, i32* %112, i32 %113)
  br label %115

115:                                              ; preds = %24, %110, %77
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @show_image(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @GetPixel(i32, i32, i32) #1

declare dso_local i32 @BitBlt(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @dump_bits(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
