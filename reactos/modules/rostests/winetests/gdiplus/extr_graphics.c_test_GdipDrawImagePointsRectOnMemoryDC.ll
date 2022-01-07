; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipDrawImagePointsRectOnMemoryDC.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipDrawImagePointsRectOnMemoryDC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%union.anon = type { i32* }

@__const.test_GdipDrawImagePointsRectOnMemoryDC.rect = private unnamed_addr constant %struct.TYPE_4__ { i32 100, i32 100, i32 180, i32 180, i32 0, i32 0, i32 0, i32 0 }, align 4
@hwnd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Expected src_img_data is valid\0A\00", align 1
@BLUE_COLOR = common dso_local global i32 0, align 4
@PixelFormat32bppARGB = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@UnitPixel = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Expected GdipDrawImageRectRectI take effect!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GdipDrawImagePointsRectOnMemoryDC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GdipDrawImagePointsRectOnMemoryDC() #0 {
  %1 = alloca [6 x i64], align 16
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.anon, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = bitcast [6 x i64]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 48, i1 false)
  %20 = bitcast %struct.TYPE_5__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 8, i1 false)
  %21 = bitcast %struct.TYPE_4__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.TYPE_4__* @__const.test_GdipDrawImagePointsRectOnMemoryDC.rect to i8*), i64 32, i1 false)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %23, %25
  store i32 %26, i32* %4, align 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %28, %30
  store i32 %31, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32* null, i32** %8, align 8
  %32 = load i32, i32* @hwnd, align 4
  %33 = call i32 @GetDC(i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @CreateCompatibleDC(i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @CreateCompatibleBitmap(i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @SelectObject(i32 %40, i32 %41)
  store i32 %42, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %43 = load i32, i32* %4, align 4
  %44 = sdiv i32 %43, 2
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %5, align 4
  %46 = sdiv i32 %45, 2
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %16, align 4
  %49 = mul nsw i32 %47, %48
  %50 = mul nsw i32 %49, 4
  %51 = call i32* @GdipAlloc(i32 %50)
  store i32* %51, i32** %17, align 8
  %52 = load i32*, i32** %17, align 8
  store i32* %52, i32** %18, align 8
  %53 = load i32*, i32** %18, align 8
  %54 = icmp ne i32* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* %10, align 4
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @SetWindowOrgEx(i32 %57, i32 %59, i32 %61, %struct.TYPE_5__* %2)
  store i32 0, i32* %14, align 4
  br label %63

63:                                               ; preds = %86, %0
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %89

67:                                               ; preds = %63
  store i32 0, i32* %13, align 4
  br label %68

68:                                               ; preds = %78, %67
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load i32, i32* @BLUE_COLOR, align 4
  %74 = load i32*, i32** %18, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %73, i32* %77, align 4
  br label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %13, align 4
  br label %68

81:                                               ; preds = %68
  %82 = load i32, i32* %15, align 4
  %83 = load i32*, i32** %18, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32* %85, i32** %18, align 8
  br label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %14, align 4
  br label %63

89:                                               ; preds = %63
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %15, align 4
  %93 = mul nsw i32 %92, 4
  %94 = load i32, i32* @PixelFormat32bppARGB, align 4
  %95 = load i32*, i32** %17, align 8
  %96 = bitcast %union.anon* %7 to i32**
  %97 = call i32 @GdipCreateBitmapFromScan0(i32 %90, i32 %91, i32 %93, i32 %94, i32* %95, i32** %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* @Ok, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @expect(i32 %98, i32 %99)
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @GdipCreateFromHDC(i32 %101, i32** %8)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* @Ok, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @expect(i32 %103, i32 %104)
  %106 = load i32*, i32** %8, align 8
  %107 = bitcast %union.anon* %7 to i32**
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %4, align 4
  %112 = sdiv i32 %111, 2
  %113 = add nsw i32 %110, %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %5, align 4
  %117 = sdiv i32 %116, 2
  %118 = add nsw i32 %115, %117
  %119 = load i32, i32* %4, align 4
  %120 = sdiv i32 %119, 2
  %121 = load i32, i32* %5, align 4
  %122 = sdiv i32 %121, 2
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* @UnitPixel, align 4
  %126 = call i32 @GdipDrawImageRectRectI(i32* %106, i32* %108, i32 %113, i32 %118, i32 %120, i32 %122, i32 0, i32 0, i32 %123, i32 %124, i32 %125, i32* null, i32* null, i32* null)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* @Ok, align 4
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @expect(i32 %127, i32 %128)
  %130 = bitcast %union.anon* %7 to i32**
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @GdipDisposeImage(i32* %131)
  %133 = load i32*, i32** %8, align 8
  %134 = call i32 @GdipDeleteGraphics(i32* %133)
  %135 = load i32*, i32** %17, align 8
  %136 = call i32 @GdipFree(i32* %135)
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* %5, align 4
  %141 = call i32* @GetBitmapPixelBuffer(i32 %137, i32 %138, i32 %139, i32 %140)
  store i32* %141, i32** %18, align 8
  %142 = load i32*, i32** %18, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %187

144:                                              ; preds = %89
  %145 = load i32, i32* %4, align 4
  %146 = sdiv i32 %145, 2
  %147 = load i32, i32* %5, align 4
  %148 = sdiv i32 %147, 2
  %149 = call i64 @get_bitmap_pixel(i32 %146, i32 %148)
  %150 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 0
  store i64 %149, i64* %150, align 16
  %151 = load i32, i32* %4, align 4
  %152 = sdiv i32 %151, 2
  %153 = add nsw i32 %152, 1
  %154 = load i32, i32* %5, align 4
  %155 = sdiv i32 %154, 2
  %156 = call i64 @get_bitmap_pixel(i32 %153, i32 %155)
  %157 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 1
  store i64 %156, i64* %157, align 8
  %158 = load i32, i32* %4, align 4
  %159 = sdiv i32 %158, 2
  %160 = load i32, i32* %5, align 4
  %161 = sdiv i32 %160, 2
  %162 = add nsw i32 %161, 1
  %163 = call i64 @get_bitmap_pixel(i32 %159, i32 %162)
  %164 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 2
  store i64 %163, i64* %164, align 16
  %165 = load i32, i32* %4, align 4
  %166 = sdiv i32 %165, 2
  %167 = sub nsw i32 %166, 1
  %168 = load i32, i32* %5, align 4
  %169 = sdiv i32 %168, 2
  %170 = sub nsw i32 %169, 1
  %171 = call i64 @get_bitmap_pixel(i32 %167, i32 %170)
  %172 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 3
  store i64 %171, i64* %172, align 8
  %173 = load i32, i32* %4, align 4
  %174 = sdiv i32 %173, 2
  %175 = sub nsw i32 %174, 1
  %176 = load i32, i32* %5, align 4
  %177 = sub nsw i32 %176, 1
  %178 = call i64 @get_bitmap_pixel(i32 %175, i32 %177)
  %179 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 4
  store i64 %178, i64* %179, align 16
  %180 = load i32, i32* %4, align 4
  %181 = sub nsw i32 %180, 1
  %182 = load i32, i32* %5, align 4
  %183 = sdiv i32 %182, 2
  %184 = sub nsw i32 %183, 1
  %185 = call i64 @get_bitmap_pixel(i32 %181, i32 %184)
  %186 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 5
  store i64 %185, i64* %186, align 8
  br label %187

187:                                              ; preds = %144, %89
  %188 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 0
  %189 = load i64, i64* %188, align 16
  %190 = call i64 @is_blue_color(i64 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %214

192:                                              ; preds = %187
  %193 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 1
  %194 = load i64, i64* %193, align 8
  %195 = call i64 @is_blue_color(i64 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %214

197:                                              ; preds = %192
  %198 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 2
  %199 = load i64, i64* %198, align 16
  %200 = call i64 @is_blue_color(i64 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %214

202:                                              ; preds = %197
  %203 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 3
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %202
  %207 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 4
  %208 = load i64, i64* %207, align 16
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %206
  %211 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 5
  %212 = load i64, i64* %211, align 8
  %213 = icmp eq i64 %212, 0
  br label %214

214:                                              ; preds = %210, %206, %202, %197, %192, %187
  %215 = phi i1 [ false, %206 ], [ false, %202 ], [ false, %197 ], [ false, %192 ], [ false, %187 ], [ %213, %210 ]
  %216 = zext i1 %215 to i32
  %217 = call i32 @ok(i32 %216, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %218 = load i32*, i32** %18, align 8
  %219 = call i32 @GdipFree(i32* %218)
  %220 = load i32, i32* %10, align 4
  %221 = load i32, i32* %12, align 4
  %222 = call i32 @SelectObject(i32 %220, i32 %221)
  %223 = load i32, i32* %11, align 4
  %224 = call i32 @DeleteObject(i32 %223)
  %225 = load i32, i32* %10, align 4
  %226 = call i32 @DeleteDC(i32 %225)
  %227 = load i32, i32* @hwnd, align 4
  %228 = load i32, i32* %9, align 4
  %229 = call i32 @ReleaseDC(i32 %227, i32 %228)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GetDC(i32) #2

declare dso_local i32 @CreateCompatibleDC(i32) #2

declare dso_local i32 @CreateCompatibleBitmap(i32, i32, i32) #2

declare dso_local i32 @SelectObject(i32, i32) #2

declare dso_local i32* @GdipAlloc(i32) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i32 @SetWindowOrgEx(i32, i32, i32, %struct.TYPE_5__*) #2

declare dso_local i32 @GdipCreateBitmapFromScan0(i32, i32, i32, i32, i32*, i32**) #2

declare dso_local i32 @expect(i32, i32) #2

declare dso_local i32 @GdipCreateFromHDC(i32, i32**) #2

declare dso_local i32 @GdipDrawImageRectRectI(i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @GdipDisposeImage(i32*) #2

declare dso_local i32 @GdipDeleteGraphics(i32*) #2

declare dso_local i32 @GdipFree(i32*) #2

declare dso_local i32* @GetBitmapPixelBuffer(i32, i32, i32, i32) #2

declare dso_local i64 @get_bitmap_pixel(i32, i32) #2

declare dso_local i64 @is_blue_color(i64) #2

declare dso_local i32 @DeleteObject(i32) #2

declare dso_local i32 @DeleteDC(i32) #2

declare dso_local i32 @ReleaseDC(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
