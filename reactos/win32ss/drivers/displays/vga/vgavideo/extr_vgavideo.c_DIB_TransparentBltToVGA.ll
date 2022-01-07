; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/drivers/displays/vga/vgavideo/extr_vgavideo.c_DIB_TransparentBltToVGA.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/drivers/displays/vga/vgavideo/extr_vgavideo.c_DIB_TransparentBltToVGA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DIB_TransparentBltToVGA(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %24 = load i8*, i8** %12, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %15, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %16, align 8
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %17, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %20, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %21, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i64 @mod2(i32 %35)
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %7
  %39 = load i64, i64* @TRUE, align 8
  store i64 %39, i64* %17, align 8
  %40 = load i32, i32* %20, align 4
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %20, align 4
  br label %42

42:                                               ; preds = %38, %7
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %19, align 4
  br label %44

44:                                               ; preds = %109, %42
  %45 = load i32, i32* %19, align 4
  %46 = load i32, i32* %21, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %112

48:                                               ; preds = %44
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %18, align 4
  br label %50

50:                                               ; preds = %83, %48
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %20, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %86

54:                                               ; preds = %50
  %55 = load i32*, i32** %15, align 8
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 240
  %58 = ashr i32 %57, 4
  store i32 %58, i32* %22, align 4
  %59 = load i32*, i32** %15, align 8
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 15
  store i32 %61, i32* %23, align 4
  %62 = load i32, i32* %22, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %54
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* %22, align 4
  %69 = call i32 @vgaPutPixel(i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %54
  %71 = load i32, i32* %23, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32, i32* %18, align 4
  %76 = add nsw i32 %75, 1
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %23, align 4
  %79 = call i32 @vgaPutPixel(i32 %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %74, %70
  %81 = load i32*, i32** %15, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %15, align 8
  br label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %18, align 4
  %85 = add nsw i32 %84, 2
  store i32 %85, i32* %18, align 4
  br label %50

86:                                               ; preds = %50
  %87 = load i64, i64* %17, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %86
  %90 = load i32*, i32** %15, align 8
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %22, align 4
  %92 = load i32, i32* %22, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* %19, align 4
  %98 = load i32, i32* %22, align 4
  %99 = call i32 @vgaPutPixel(i32 %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %95, %89
  %101 = load i32*, i32** %15, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %15, align 8
  br label %103

103:                                              ; preds = %100, %86
  %104 = load i32, i32* %13, align 4
  %105 = load i32*, i32** %16, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %16, align 8
  %108 = load i32*, i32** %16, align 8
  store i32* %108, i32** %15, align 8
  br label %109

109:                                              ; preds = %103
  %110 = load i32, i32* %19, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %19, align 4
  br label %44

112:                                              ; preds = %44
  ret void
}

declare dso_local i64 @mod2(i32) #1

declare dso_local i32 @vgaPutPixel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
