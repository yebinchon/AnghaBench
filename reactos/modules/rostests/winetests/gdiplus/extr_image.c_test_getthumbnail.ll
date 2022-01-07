; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_getthumbnail.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_getthumbnail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidParameter = common dso_local global i32 0, align 4
@PixelFormat32bppRGB = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_getthumbnail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_getthumbnail() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 @GdipGetImageThumbnail(i32* null, i32 0, i32 0, i32** %3, i32* null, i32* null)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @InvalidParameter, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @expect(i32 %7, i32 %8)
  %10 = load i32, i32* @PixelFormat32bppRGB, align 4
  %11 = call i32 @GdipCreateBitmapFromScan0(i32 128, i32 128, i32 0, i32 %10, i32* null, i32** %2)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* @Ok, align 4
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @expect(i32 %12, i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @GdipGetImageThumbnail(i32* %15, i32 0, i32 0, i32** null, i32* null, i32* null)
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* @InvalidParameter, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @expect(i32 %17, i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @GdipGetImageThumbnail(i32* %20, i32 0, i32 0, i32** %3, i32* null, i32* null)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* @Ok, align 4
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @expect(i32 %22, i32 %23)
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @Ok, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %0
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @GdipGetImageWidth(i32* %29, i32* %4)
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* @Ok, align 4
  %32 = load i32, i32* %1, align 4
  %33 = call i32 @expect(i32 %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @expect(i32 120, i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @GdipGetImageHeight(i32* %36, i32* %5)
  store i32 %37, i32* %1, align 4
  %38 = load i32, i32* @Ok, align 4
  %39 = load i32, i32* %1, align 4
  %40 = call i32 @expect(i32 %38, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @expect(i32 120, i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @GdipDisposeImage(i32* %43)
  br label %45

45:                                               ; preds = %28, %0
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @GdipDisposeImage(i32* %46)
  %48 = load i32, i32* @PixelFormat32bppRGB, align 4
  %49 = call i32 @GdipCreateBitmapFromScan0(i32 64, i32 128, i32 0, i32 %48, i32* null, i32** %2)
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* @Ok, align 4
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @expect(i32 %50, i32 %51)
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @GdipGetImageThumbnail(i32* %53, i32 32, i32 32, i32** %3, i32* null, i32* null)
  store i32 %54, i32* %1, align 4
  %55 = load i32, i32* @Ok, align 4
  %56 = load i32, i32* %1, align 4
  %57 = call i32 @expect(i32 %55, i32 %56)
  %58 = load i32, i32* %1, align 4
  %59 = load i32, i32* @Ok, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %45
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @GdipGetImageWidth(i32* %62, i32* %4)
  store i32 %63, i32* %1, align 4
  %64 = load i32, i32* @Ok, align 4
  %65 = load i32, i32* %1, align 4
  %66 = call i32 @expect(i32 %64, i32 %65)
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @expect(i32 32, i32 %67)
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @GdipGetImageHeight(i32* %69, i32* %5)
  store i32 %70, i32* %1, align 4
  %71 = load i32, i32* @Ok, align 4
  %72 = load i32, i32* %1, align 4
  %73 = call i32 @expect(i32 %71, i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @expect(i32 32, i32 %74)
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @GdipDisposeImage(i32* %76)
  br label %78

78:                                               ; preds = %61, %45
  %79 = load i32*, i32** %2, align 8
  %80 = call i32 @GdipGetImageThumbnail(i32* %79, i32 0, i32 0, i32** %3, i32* null, i32* null)
  store i32 %80, i32* %1, align 4
  %81 = load i32, i32* @Ok, align 4
  %82 = load i32, i32* %1, align 4
  %83 = call i32 @expect(i32 %81, i32 %82)
  %84 = load i32, i32* %1, align 4
  %85 = load i32, i32* @Ok, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %78
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @GdipGetImageWidth(i32* %88, i32* %4)
  store i32 %89, i32* %1, align 4
  %90 = load i32, i32* @Ok, align 4
  %91 = load i32, i32* %1, align 4
  %92 = call i32 @expect(i32 %90, i32 %91)
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @expect(i32 120, i32 %93)
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 @GdipGetImageHeight(i32* %95, i32* %5)
  store i32 %96, i32* %1, align 4
  %97 = load i32, i32* @Ok, align 4
  %98 = load i32, i32* %1, align 4
  %99 = call i32 @expect(i32 %97, i32 %98)
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @expect(i32 120, i32 %100)
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 @GdipDisposeImage(i32* %102)
  br label %104

104:                                              ; preds = %87, %78
  %105 = load i32*, i32** %2, align 8
  %106 = call i32 @GdipDisposeImage(i32* %105)
  ret void
}

declare dso_local i32 @GdipGetImageThumbnail(i32*, i32, i32, i32**, i32*, i32*) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipCreateBitmapFromScan0(i32, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @GdipGetImageWidth(i32*, i32*) #1

declare dso_local i32 @GdipGetImageHeight(i32*, i32*) #1

declare dso_local i32 @GdipDisposeImage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
