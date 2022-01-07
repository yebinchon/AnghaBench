; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_rotateflip.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_rotateflip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_rotateflip.orig_bits = internal constant [24 x i32] [i32 0, i32 0, i32 255, i32 0, i32 255, i32 0, i32 255, i32 0, i32 0, i32 23, i32 23, i32 23, i32 255, i32 255, i32 0, i32 255, i32 0, i32 255, i32 0, i32 255, i32 255, i32 23, i32 23, i32 23], align 16
@PixelFormat24bppRGB = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@Rotate90FlipNone = common dso_local global i32 0, align 4
@RotateNoneFlipX = common dso_local global i32 0, align 4
@RotateNoneFlipY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_rotateflip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_rotateflip() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca [24 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds [24 x i32], [24 x i32]* %3, i64 0, i64 0
  %8 = call i32 @memcpy(i32* %7, i32* getelementptr inbounds ([24 x i32], [24 x i32]* @test_rotateflip.orig_bits, i64 0, i64 0), i32 96)
  %9 = load i32, i32* @PixelFormat24bppRGB, align 4
  %10 = getelementptr inbounds [24 x i32], [24 x i32]* %3, i64 0, i64 0
  %11 = call i32 @GdipCreateBitmapFromScan0(i32 3, i32 2, i32 12, i32 %9, i32* %10, i32** %1)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* @Ok, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @expect(i32 %12, i32 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = load i32, i32* @Rotate90FlipNone, align 4
  %17 = call i32 @GdipImageRotateFlip(i32* %15, i32 %16)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* @Ok, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @expect(i32 %18, i32 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @GdipGetImageWidth(i32* %21, i32* %4)
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* @Ok, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @expect(i32 %23, i32 %24)
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @GdipGetImageHeight(i32* %26, i32* %5)
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* @Ok, align 4
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @expect(i32 %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @expect(i32 2, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @expect(i32 3, i32 %33)
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @GdipBitmapGetPixel(i32* %35, i32 0, i32 0, i32* %6)
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* @Ok, align 4
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @expect(i32 %37, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @expect(i32 -16711681, i32 %40)
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @GdipBitmapGetPixel(i32* %42, i32 1, i32 0, i32* %6)
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* @Ok, align 4
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @expect(i32 %44, i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @expect(i32 -65536, i32 %47)
  %49 = load i32*, i32** %1, align 8
  %50 = call i32 @GdipBitmapGetPixel(i32* %49, i32 0, i32 2, i32* %6)
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* @Ok, align 4
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @expect(i32 %51, i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @expect(i32 -256, i32 %54)
  %56 = load i32*, i32** %1, align 8
  %57 = call i32 @GdipBitmapGetPixel(i32* %56, i32 1, i32 2, i32* %6)
  store i32 %57, i32* %2, align 4
  %58 = load i32, i32* @Ok, align 4
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @expect(i32 %58, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @expect(i32 -16776961, i32 %61)
  %63 = getelementptr inbounds [24 x i32], [24 x i32]* %3, i64 0, i64 0
  %64 = load i32, i32* %63, align 16
  %65 = call i32 @expect(i32 0, i32 %64)
  %66 = getelementptr inbounds [24 x i32], [24 x i32]* %3, i64 0, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @expect(i32 0, i32 %67)
  %69 = getelementptr inbounds [24 x i32], [24 x i32]* %3, i64 0, i64 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @expect(i32 255, i32 %70)
  %72 = load i32*, i32** %1, align 8
  %73 = call i32 @GdipDisposeImage(i32* %72)
  %74 = getelementptr inbounds [24 x i32], [24 x i32]* %3, i64 0, i64 0
  %75 = call i32 @memcpy(i32* %74, i32* getelementptr inbounds ([24 x i32], [24 x i32]* @test_rotateflip.orig_bits, i64 0, i64 0), i32 96)
  %76 = load i32, i32* @PixelFormat24bppRGB, align 4
  %77 = getelementptr inbounds [24 x i32], [24 x i32]* %3, i64 0, i64 0
  %78 = call i32 @GdipCreateBitmapFromScan0(i32 3, i32 2, i32 12, i32 %76, i32* %77, i32** %1)
  store i32 %78, i32* %2, align 4
  %79 = load i32, i32* @Ok, align 4
  %80 = load i32, i32* %2, align 4
  %81 = call i32 @expect(i32 %79, i32 %80)
  %82 = load i32*, i32** %1, align 8
  %83 = load i32, i32* @RotateNoneFlipX, align 4
  %84 = call i32 @GdipImageRotateFlip(i32* %82, i32 %83)
  store i32 %84, i32* %2, align 4
  %85 = load i32, i32* @Ok, align 4
  %86 = load i32, i32* %2, align 4
  %87 = call i32 @expect(i32 %85, i32 %86)
  %88 = load i32*, i32** %1, align 8
  %89 = call i32 @GdipGetImageWidth(i32* %88, i32* %4)
  store i32 %89, i32* %2, align 4
  %90 = load i32, i32* @Ok, align 4
  %91 = load i32, i32* %2, align 4
  %92 = call i32 @expect(i32 %90, i32 %91)
  %93 = load i32*, i32** %1, align 8
  %94 = call i32 @GdipGetImageHeight(i32* %93, i32* %5)
  store i32 %94, i32* %2, align 4
  %95 = load i32, i32* @Ok, align 4
  %96 = load i32, i32* %2, align 4
  %97 = call i32 @expect(i32 %95, i32 %96)
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @expect(i32 3, i32 %98)
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @expect(i32 2, i32 %100)
  %102 = load i32*, i32** %1, align 8
  %103 = call i32 @GdipBitmapGetPixel(i32* %102, i32 0, i32 0, i32* %6)
  store i32 %103, i32* %2, align 4
  %104 = load i32, i32* @Ok, align 4
  %105 = load i32, i32* %2, align 4
  %106 = call i32 @expect(i32 %104, i32 %105)
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @expect(i32 -16776961, i32 %107)
  %109 = load i32*, i32** %1, align 8
  %110 = call i32 @GdipBitmapGetPixel(i32* %109, i32 2, i32 0, i32* %6)
  store i32 %110, i32* %2, align 4
  %111 = load i32, i32* @Ok, align 4
  %112 = load i32, i32* %2, align 4
  %113 = call i32 @expect(i32 %111, i32 %112)
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @expect(i32 -65536, i32 %114)
  %116 = load i32*, i32** %1, align 8
  %117 = call i32 @GdipBitmapGetPixel(i32* %116, i32 0, i32 1, i32* %6)
  store i32 %117, i32* %2, align 4
  %118 = load i32, i32* @Ok, align 4
  %119 = load i32, i32* %2, align 4
  %120 = call i32 @expect(i32 %118, i32 %119)
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @expect(i32 -256, i32 %121)
  %123 = load i32*, i32** %1, align 8
  %124 = call i32 @GdipBitmapGetPixel(i32* %123, i32 2, i32 1, i32* %6)
  store i32 %124, i32* %2, align 4
  %125 = load i32, i32* @Ok, align 4
  %126 = load i32, i32* %2, align 4
  %127 = call i32 @expect(i32 %125, i32 %126)
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @expect(i32 -16711681, i32 %128)
  %130 = getelementptr inbounds [24 x i32], [24 x i32]* %3, i64 0, i64 0
  %131 = load i32, i32* %130, align 16
  %132 = call i32 @expect(i32 0, i32 %131)
  %133 = getelementptr inbounds [24 x i32], [24 x i32]* %3, i64 0, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @expect(i32 0, i32 %134)
  %136 = getelementptr inbounds [24 x i32], [24 x i32]* %3, i64 0, i64 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @expect(i32 255, i32 %137)
  %139 = load i32*, i32** %1, align 8
  %140 = call i32 @GdipDisposeImage(i32* %139)
  %141 = getelementptr inbounds [24 x i32], [24 x i32]* %3, i64 0, i64 0
  %142 = call i32 @memcpy(i32* %141, i32* getelementptr inbounds ([24 x i32], [24 x i32]* @test_rotateflip.orig_bits, i64 0, i64 0), i32 96)
  %143 = load i32, i32* @PixelFormat24bppRGB, align 4
  %144 = getelementptr inbounds [24 x i32], [24 x i32]* %3, i64 0, i64 0
  %145 = call i32 @GdipCreateBitmapFromScan0(i32 3, i32 2, i32 12, i32 %143, i32* %144, i32** %1)
  store i32 %145, i32* %2, align 4
  %146 = load i32, i32* @Ok, align 4
  %147 = load i32, i32* %2, align 4
  %148 = call i32 @expect(i32 %146, i32 %147)
  %149 = load i32*, i32** %1, align 8
  %150 = load i32, i32* @RotateNoneFlipY, align 4
  %151 = call i32 @GdipImageRotateFlip(i32* %149, i32 %150)
  store i32 %151, i32* %2, align 4
  %152 = load i32, i32* @Ok, align 4
  %153 = load i32, i32* %2, align 4
  %154 = call i32 @expect(i32 %152, i32 %153)
  %155 = load i32*, i32** %1, align 8
  %156 = call i32 @GdipGetImageWidth(i32* %155, i32* %4)
  store i32 %156, i32* %2, align 4
  %157 = load i32, i32* @Ok, align 4
  %158 = load i32, i32* %2, align 4
  %159 = call i32 @expect(i32 %157, i32 %158)
  %160 = load i32*, i32** %1, align 8
  %161 = call i32 @GdipGetImageHeight(i32* %160, i32* %5)
  store i32 %161, i32* %2, align 4
  %162 = load i32, i32* @Ok, align 4
  %163 = load i32, i32* %2, align 4
  %164 = call i32 @expect(i32 %162, i32 %163)
  %165 = load i32, i32* %4, align 4
  %166 = call i32 @expect(i32 3, i32 %165)
  %167 = load i32, i32* %5, align 4
  %168 = call i32 @expect(i32 2, i32 %167)
  %169 = load i32*, i32** %1, align 8
  %170 = call i32 @GdipBitmapGetPixel(i32* %169, i32 0, i32 0, i32* %6)
  store i32 %170, i32* %2, align 4
  %171 = load i32, i32* @Ok, align 4
  %172 = load i32, i32* %2, align 4
  %173 = call i32 @expect(i32 %171, i32 %172)
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @expect(i32 -16711681, i32 %174)
  %176 = load i32*, i32** %1, align 8
  %177 = call i32 @GdipBitmapGetPixel(i32* %176, i32 2, i32 0, i32* %6)
  store i32 %177, i32* %2, align 4
  %178 = load i32, i32* @Ok, align 4
  %179 = load i32, i32* %2, align 4
  %180 = call i32 @expect(i32 %178, i32 %179)
  %181 = load i32, i32* %6, align 4
  %182 = call i32 @expect(i32 -256, i32 %181)
  %183 = load i32*, i32** %1, align 8
  %184 = call i32 @GdipBitmapGetPixel(i32* %183, i32 0, i32 1, i32* %6)
  store i32 %184, i32* %2, align 4
  %185 = load i32, i32* @Ok, align 4
  %186 = load i32, i32* %2, align 4
  %187 = call i32 @expect(i32 %185, i32 %186)
  %188 = load i32, i32* %6, align 4
  %189 = call i32 @expect(i32 -65536, i32 %188)
  %190 = load i32*, i32** %1, align 8
  %191 = call i32 @GdipBitmapGetPixel(i32* %190, i32 2, i32 1, i32* %6)
  store i32 %191, i32* %2, align 4
  %192 = load i32, i32* @Ok, align 4
  %193 = load i32, i32* %2, align 4
  %194 = call i32 @expect(i32 %192, i32 %193)
  %195 = load i32, i32* %6, align 4
  %196 = call i32 @expect(i32 -16776961, i32 %195)
  %197 = getelementptr inbounds [24 x i32], [24 x i32]* %3, i64 0, i64 0
  %198 = load i32, i32* %197, align 16
  %199 = call i32 @expect(i32 0, i32 %198)
  %200 = getelementptr inbounds [24 x i32], [24 x i32]* %3, i64 0, i64 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @expect(i32 0, i32 %201)
  %203 = getelementptr inbounds [24 x i32], [24 x i32]* %3, i64 0, i64 2
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @expect(i32 255, i32 %204)
  %206 = load i32*, i32** %1, align 8
  %207 = call i32 @GdipDisposeImage(i32* %206)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @GdipCreateBitmapFromScan0(i32, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipImageRotateFlip(i32*, i32) #1

declare dso_local i32 @GdipGetImageWidth(i32*, i32*) #1

declare dso_local i32 @GdipGetImageHeight(i32*, i32*) #1

declare dso_local i32 @GdipBitmapGetPixel(i32*, i32, i32, i32*) #1

declare dso_local i32 @GdipDisposeImage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
