; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipFillRectanglesOnBitmapTextureBrush.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipFillRectanglesOnBitmapTextureBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon = type { i32* }
%union.anon.0 = type { i32* }

@__const.test_GdipFillRectanglesOnBitmapTextureBrush.rect = private unnamed_addr constant %struct.TYPE_2__ { i32 100, i32 100, i32 180, i32 180, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str = private unnamed_addr constant [32 x i8] c"Expected src_img_data is valid\0A\00", align 1
@PixelFormat32bppARGB = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@BLUE_COLOR = common dso_local global i32 0, align 4
@CombineModeReplace = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Expected GdipFillRectangleI take effect!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GdipFillRectanglesOnBitmapTextureBrush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GdipFillRectanglesOnBitmapTextureBrush() #0 {
  %1 = alloca [6 x i64], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.anon, align 8
  %11 = alloca %union.anon.0, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = bitcast [6 x i64]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 48, i1 false)
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %17 = bitcast %struct.TYPE_2__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.TYPE_2__* @__const.test_GdipFillRectanglesOnBitmapTextureBrush.rect to i8*), i64 32, i1 false)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %19, %21
  store i32 %22, i32* %5, align 4
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %24, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sdiv i32 %28, 2
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sdiv i32 %30, 2
  store i32 %31, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = mul nsw i32 %32, %33
  %35 = mul nsw i32 %34, 4
  %36 = call i32* @GdipAlloc(i32 %35)
  store i32* %36, i32** %14, align 8
  %37 = load i32*, i32** %14, align 8
  store i32* %37, i32** %15, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = icmp ne i32* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = mul nsw i32 %44, 4
  %46 = load i32, i32* @PixelFormat32bppARGB, align 4
  %47 = bitcast %union.anon.0* %11 to i32**
  %48 = call i32 @GdipCreateBitmapFromScan0(i32 %42, i32 %43, i32 %45, i32 %46, i32* null, i32** %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* @Ok, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @expect(i32 %49, i32 %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %75, %0
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %67, %56
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load i32, i32* @BLUE_COLOR, align 4
  %63 = load i32*, i32** %15, align 8
  %64 = load i32, i32* %2, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %2, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %2, align 4
  br label %57

70:                                               ; preds = %57
  %71 = load i32, i32* %7, align 4
  %72 = load i32*, i32** %15, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %15, align 8
  br label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %52

78:                                               ; preds = %52
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = mul nsw i32 %81, 4
  %83 = load i32, i32* @PixelFormat32bppARGB, align 4
  %84 = load i32*, i32** %14, align 8
  %85 = bitcast %union.anon* %10 to i32**
  %86 = call i32 @GdipCreateBitmapFromScan0(i32 %79, i32 %80, i32 %82, i32 %83, i32* %84, i32** %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* @Ok, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @expect(i32 %87, i32 %88)
  %90 = bitcast %union.anon* %10 to i32**
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @GdipCreateTexture(i32* %91, i32 0, i32** %12)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* @Ok, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @expect(i32 %93, i32 %94)
  %96 = bitcast %union.anon.0* %11 to i32**
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @GdipGetImageGraphicsContext(i32* %97, i32** %13)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* @Ok, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @expect(i32 %99, i32 %100)
  %102 = load i32*, i32** %13, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @CombineModeReplace, align 4
  %106 = call i32 @GdipSetClipRectI(i32* %102, i32 0, i32 0, i32 %103, i32 %104, i32 %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* @Ok, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @expect(i32 %107, i32 %108)
  %110 = load i32*, i32** %13, align 8
  %111 = load i32*, i32** %12, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sdiv i32 %112, 2
  %114 = load i32, i32* %6, align 4
  %115 = sdiv i32 %114, 2
  %116 = call i32 @GdipFillRectangleI(i32* %110, i32* %111, i32 0, i32 0, i32 %113, i32 %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* @Ok, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @expect(i32 %117, i32 %118)
  %120 = load i32*, i32** %12, align 8
  %121 = call i32 @GdipDeleteBrush(i32* %120)
  %122 = load i32*, i32** %13, align 8
  %123 = call i32 @GdipDeleteGraphics(i32* %122)
  %124 = bitcast %union.anon.0* %11 to i32**
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 0
  %127 = call i32 @GdipBitmapGetPixel(i32* %125, i32 0, i32 0, i64* %126)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* @Ok, align 4
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @expect(i32 %128, i32 %129)
  %131 = bitcast %union.anon.0* %11 to i32**
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 1
  %134 = call i32 @GdipBitmapGetPixel(i32* %132, i32 0, i32 1, i64* %133)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* @Ok, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @expect(i32 %135, i32 %136)
  %138 = bitcast %union.anon.0* %11 to i32**
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 2
  %141 = call i32 @GdipBitmapGetPixel(i32* %139, i32 1, i32 0, i64* %140)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* @Ok, align 4
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @expect(i32 %142, i32 %143)
  %145 = bitcast %union.anon.0* %11 to i32**
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %5, align 4
  %148 = sdiv i32 %147, 2
  %149 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 3
  %150 = call i32 @GdipBitmapGetPixel(i32* %146, i32 %148, i32 0, i64* %149)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* @Ok, align 4
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @expect(i32 %151, i32 %152)
  %154 = bitcast %union.anon.0* %11 to i32**
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sdiv i32 %156, 2
  %158 = load i32, i32* %6, align 4
  %159 = sdiv i32 %158, 2
  %160 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 4
  %161 = call i32 @GdipBitmapGetPixel(i32* %155, i32 %157, i32 %159, i64* %160)
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* @Ok, align 4
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @expect(i32 %162, i32 %163)
  %165 = bitcast %union.anon.0* %11 to i32**
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %6, align 4
  %168 = sdiv i32 %167, 2
  %169 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 5
  %170 = call i32 @GdipBitmapGetPixel(i32* %166, i32 0, i32 %168, i64* %169)
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* @Ok, align 4
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @expect(i32 %171, i32 %172)
  %174 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 0
  %175 = load i64, i64* %174, align 16
  %176 = call i64 @is_blue_color(i64 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %200

178:                                              ; preds = %78
  %179 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 1
  %180 = load i64, i64* %179, align 8
  %181 = call i64 @is_blue_color(i64 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %200

183:                                              ; preds = %178
  %184 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 2
  %185 = load i64, i64* %184, align 16
  %186 = call i64 @is_blue_color(i64 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %200

188:                                              ; preds = %183
  %189 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 3
  %190 = load i64, i64* %189, align 8
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %188
  %193 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 4
  %194 = load i64, i64* %193, align 16
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %192
  %197 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 5
  %198 = load i64, i64* %197, align 8
  %199 = icmp eq i64 %198, 0
  br label %200

200:                                              ; preds = %196, %192, %188, %183, %178, %78
  %201 = phi i1 [ false, %192 ], [ false, %188 ], [ false, %183 ], [ false, %178 ], [ false, %78 ], [ %199, %196 ]
  %202 = zext i1 %201 to i32
  %203 = call i32 @ok(i32 %202, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %204 = bitcast %union.anon* %10 to i32**
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @GdipDisposeImage(i32* %205)
  %207 = bitcast %union.anon.0* %11 to i32**
  %208 = load i32*, i32** %207, align 8
  %209 = call i32 @GdipDisposeImage(i32* %208)
  %210 = load i32*, i32** %14, align 8
  %211 = call i32 @GdipFree(i32* %210)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @GdipAlloc(i32) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i32 @GdipCreateBitmapFromScan0(i32, i32, i32, i32, i32*, i32**) #2

declare dso_local i32 @expect(i32, i32) #2

declare dso_local i32 @GdipCreateTexture(i32*, i32, i32**) #2

declare dso_local i32 @GdipGetImageGraphicsContext(i32*, i32**) #2

declare dso_local i32 @GdipSetClipRectI(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @GdipFillRectangleI(i32*, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @GdipDeleteBrush(i32*) #2

declare dso_local i32 @GdipDeleteGraphics(i32*) #2

declare dso_local i32 @GdipBitmapGetPixel(i32*, i32, i32, i64*) #2

declare dso_local i64 @is_blue_color(i64) #2

declare dso_local i32 @GdipDisposeImage(i32*) #2

declare dso_local i32 @GdipFree(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
