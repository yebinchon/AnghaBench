; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipFillRectanglesOnMemoryDCTextureBrush.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipFillRectanglesOnMemoryDCTextureBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%union.anon = type { i32* }

@__const.test_GdipFillRectanglesOnMemoryDCTextureBrush.rect = private unnamed_addr constant %struct.TYPE_4__ { i32 100, i32 100, i32 180, i32 180, i32 0, i32 0, i32 0, i32 0 }, align 4
@hwnd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Expected src_img_data is valid\0A\00", align 1
@BLUE_COLOR = common dso_local global i32 0, align 4
@PixelFormat32bppARGB = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@CombineModeReplace = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Expected GdipFillRectangleI take effect!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GdipFillRectanglesOnMemoryDCTextureBrush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GdipFillRectanglesOnMemoryDCTextureBrush() #0 {
  %1 = alloca [6 x i64], align 16
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.anon, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = bitcast [6 x i64]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 48, i1 false)
  %21 = bitcast %struct.TYPE_5__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 8, i1 false)
  %22 = bitcast %struct.TYPE_4__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 bitcast (%struct.TYPE_4__* @__const.test_GdipFillRectanglesOnMemoryDCTextureBrush.rect to i8*), i64 32, i1 false)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %24, %26
  store i32 %27, i32* %4, align 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %29, %31
  store i32 %32, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %33 = load i32, i32* @hwnd, align 4
  %34 = call i32 @GetDC(i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @CreateCompatibleDC(i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @CreateCompatibleBitmap(i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @SelectObject(i32 %41, i32 %42)
  store i32 %43, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %44 = load i32, i32* %4, align 4
  %45 = sdiv i32 %44, 2
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %5, align 4
  %47 = sdiv i32 %46, 2
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %17, align 4
  %50 = mul nsw i32 %48, %49
  %51 = mul nsw i32 %50, 4
  %52 = call i32* @GdipAlloc(i32 %51)
  store i32* %52, i32** %18, align 8
  %53 = load i32*, i32** %18, align 8
  store i32* %53, i32** %19, align 8
  %54 = load i32*, i32** %19, align 8
  %55 = icmp ne i32* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* %11, align 4
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @SetWindowOrgEx(i32 %58, i32 %60, i32 %62, %struct.TYPE_5__* %2)
  store i32 0, i32* %15, align 4
  br label %64

64:                                               ; preds = %87, %0
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %90

68:                                               ; preds = %64
  store i32 0, i32* %14, align 4
  br label %69

69:                                               ; preds = %79, %68
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load i32, i32* @BLUE_COLOR, align 4
  %75 = load i32*, i32** %19, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %74, i32* %78, align 4
  br label %79

79:                                               ; preds = %73
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %14, align 4
  br label %69

82:                                               ; preds = %69
  %83 = load i32, i32* %16, align 4
  %84 = load i32*, i32** %19, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %19, align 8
  br label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %15, align 4
  br label %64

90:                                               ; preds = %64
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* %16, align 4
  %94 = mul nsw i32 %93, 4
  %95 = load i32, i32* @PixelFormat32bppARGB, align 4
  %96 = load i32*, i32** %18, align 8
  %97 = bitcast %union.anon* %7 to i32**
  %98 = call i32 @GdipCreateBitmapFromScan0(i32 %91, i32 %92, i32 %94, i32 %95, i32* %96, i32** %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* @Ok, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @expect(i32 %99, i32 %100)
  %102 = bitcast %union.anon* %7 to i32**
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @GdipCreateTexture(i32* %103, i32 0, i32** %8)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* @Ok, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @expect(i32 %105, i32 %106)
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @GdipCreateFromHDC(i32 %108, i32** %9)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* @Ok, align 4
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @expect(i32 %110, i32 %111)
  %113 = load i32*, i32** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %4, align 4
  %117 = sdiv i32 %116, 2
  %118 = add nsw i32 %115, %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %5, align 4
  %122 = sdiv i32 %121, 2
  %123 = add nsw i32 %120, %122
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @CombineModeReplace, align 4
  %127 = call i32 @GdipSetClipRectI(i32* %113, i32 %118, i32 %123, i32 %124, i32 %125, i32 %126)
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* @Ok, align 4
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @expect(i32 %128, i32 %129)
  %131 = load i32*, i32** %9, align 8
  %132 = load i32*, i32** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 6
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @GdipFillRectangleI(i32* %131, i32* %132, i32 0, i32 0, i32 %134, i32 %136)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* @Ok, align 4
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @expect(i32 %138, i32 %139)
  %141 = bitcast %union.anon* %7 to i32**
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @GdipDisposeImage(i32* %142)
  %144 = load i32*, i32** %8, align 8
  %145 = call i32 @GdipDeleteBrush(i32* %144)
  %146 = load i32*, i32** %9, align 8
  %147 = call i32 @GdipDeleteGraphics(i32* %146)
  %148 = load i32*, i32** %18, align 8
  %149 = call i32 @GdipFree(i32* %148)
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* %5, align 4
  %154 = call i32* @GetBitmapPixelBuffer(i32 %150, i32 %151, i32 %152, i32 %153)
  store i32* %154, i32** %19, align 8
  %155 = load i32*, i32** %19, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %200

157:                                              ; preds = %90
  %158 = load i32, i32* %4, align 4
  %159 = sdiv i32 %158, 2
  %160 = load i32, i32* %5, align 4
  %161 = sdiv i32 %160, 2
  %162 = call i64 @get_bitmap_pixel(i32 %159, i32 %161)
  %163 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 0
  store i64 %162, i64* %163, align 16
  %164 = load i32, i32* %4, align 4
  %165 = sdiv i32 %164, 2
  %166 = add nsw i32 %165, 1
  %167 = load i32, i32* %5, align 4
  %168 = sdiv i32 %167, 2
  %169 = call i64 @get_bitmap_pixel(i32 %166, i32 %168)
  %170 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 1
  store i64 %169, i64* %170, align 8
  %171 = load i32, i32* %4, align 4
  %172 = sdiv i32 %171, 2
  %173 = load i32, i32* %5, align 4
  %174 = sdiv i32 %173, 2
  %175 = add nsw i32 %174, 1
  %176 = call i64 @get_bitmap_pixel(i32 %172, i32 %175)
  %177 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 2
  store i64 %176, i64* %177, align 16
  %178 = load i32, i32* %4, align 4
  %179 = sdiv i32 %178, 2
  %180 = sub nsw i32 %179, 1
  %181 = load i32, i32* %5, align 4
  %182 = sdiv i32 %181, 2
  %183 = sub nsw i32 %182, 1
  %184 = call i64 @get_bitmap_pixel(i32 %180, i32 %183)
  %185 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 3
  store i64 %184, i64* %185, align 8
  %186 = load i32, i32* %4, align 4
  %187 = sdiv i32 %186, 2
  %188 = sub nsw i32 %187, 1
  %189 = load i32, i32* %5, align 4
  %190 = sub nsw i32 %189, 1
  %191 = call i64 @get_bitmap_pixel(i32 %188, i32 %190)
  %192 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 4
  store i64 %191, i64* %192, align 16
  %193 = load i32, i32* %4, align 4
  %194 = sub nsw i32 %193, 1
  %195 = load i32, i32* %5, align 4
  %196 = sdiv i32 %195, 2
  %197 = sub nsw i32 %196, 1
  %198 = call i64 @get_bitmap_pixel(i32 %194, i32 %197)
  %199 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 5
  store i64 %198, i64* %199, align 8
  br label %200

200:                                              ; preds = %157, %90
  %201 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 0
  %202 = load i64, i64* %201, align 16
  %203 = call i64 @is_blue_color(i64 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %227

205:                                              ; preds = %200
  %206 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 1
  %207 = load i64, i64* %206, align 8
  %208 = call i64 @is_blue_color(i64 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %227

210:                                              ; preds = %205
  %211 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 2
  %212 = load i64, i64* %211, align 16
  %213 = call i64 @is_blue_color(i64 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %227

215:                                              ; preds = %210
  %216 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 3
  %217 = load i64, i64* %216, align 8
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %227

219:                                              ; preds = %215
  %220 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 4
  %221 = load i64, i64* %220, align 16
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %219
  %224 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 5
  %225 = load i64, i64* %224, align 8
  %226 = icmp eq i64 %225, 0
  br label %227

227:                                              ; preds = %223, %219, %215, %210, %205, %200
  %228 = phi i1 [ false, %219 ], [ false, %215 ], [ false, %210 ], [ false, %205 ], [ false, %200 ], [ %226, %223 ]
  %229 = zext i1 %228 to i32
  %230 = call i32 @ok(i32 %229, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %231 = load i32*, i32** %19, align 8
  %232 = call i32 @GdipFree(i32* %231)
  %233 = load i32, i32* %11, align 4
  %234 = load i32, i32* %13, align 4
  %235 = call i32 @SelectObject(i32 %233, i32 %234)
  %236 = load i32, i32* %12, align 4
  %237 = call i32 @DeleteObject(i32 %236)
  %238 = load i32, i32* %11, align 4
  %239 = call i32 @DeleteDC(i32 %238)
  %240 = load i32, i32* @hwnd, align 4
  %241 = load i32, i32* %10, align 4
  %242 = call i32 @ReleaseDC(i32 %240, i32 %241)
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

declare dso_local i32 @GdipCreateTexture(i32*, i32, i32**) #2

declare dso_local i32 @GdipCreateFromHDC(i32, i32**) #2

declare dso_local i32 @GdipSetClipRectI(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @GdipFillRectangleI(i32*, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @GdipDisposeImage(i32*) #2

declare dso_local i32 @GdipDeleteBrush(i32*) #2

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
