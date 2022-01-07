; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipFillRectanglesOnMemoryDCSolidBrush.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipFillRectanglesOnMemoryDCSolidBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@__const.test_GdipFillRectanglesOnMemoryDCSolidBrush.rect = private unnamed_addr constant %struct.TYPE_4__ { i32 100, i32 100, i32 180, i32 180, i32 0, i32 0, i32 0, i32 0 }, align 4
@hwnd = common dso_local global i32 0, align 4
@BLUE_COLOR = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@CombineModeReplace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Expected GdipFillRectangleI take effect!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GdipFillRectanglesOnMemoryDCSolidBrush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GdipFillRectanglesOnMemoryDCSolidBrush() #0 {
  %1 = alloca [6 x i64], align 16
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = bitcast [6 x i64]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 48, i1 false)
  %15 = bitcast %struct.TYPE_5__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  %16 = bitcast %struct.TYPE_4__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.TYPE_4__* @__const.test_GdipFillRectanglesOnMemoryDCSolidBrush.rect to i8*), i64 32, i1 false)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %18, %20
  store i32 %21, i32* %4, align 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %23, %25
  store i32 %26, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %27 = load i32, i32* @hwnd, align 4
  %28 = call i32 @GetDC(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @CreateCompatibleDC(i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @CreateCompatibleBitmap(i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @SelectObject(i32 %35, i32 %36)
  store i32 %37, i32* %12, align 4
  store i32* null, i32** %13, align 8
  %38 = load i32, i32* %10, align 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @SetWindowOrgEx(i32 %38, i32 %40, i32 %42, %struct.TYPE_5__* %2)
  %44 = load i32, i32* @BLUE_COLOR, align 4
  %45 = call i32 @GdipCreateSolidFill(i32 %44, i32** %7)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @Ok, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @expect(i32 %46, i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @GdipCreateFromHDC(i32 %49, i32** %8)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @Ok, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @expect(i32 %51, i32 %52)
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %4, align 4
  %58 = sdiv i32 %57, 2
  %59 = add nsw i32 %56, %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = sdiv i32 %62, 2
  %64 = add nsw i32 %61, %63
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @CombineModeReplace, align 4
  %68 = call i32 @GdipSetClipRectI(i32* %54, i32 %59, i32 %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* @Ok, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @expect(i32 %69, i32 %70)
  %72 = load i32*, i32** %8, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @GdipFillRectangleI(i32* %72, i32* %73, i32 0, i32 0, i32 %75, i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* @Ok, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @expect(i32 %79, i32 %80)
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @GdipDeleteBrush(i32* %82)
  %84 = load i32*, i32** %8, align 8
  %85 = call i32 @GdipDeleteGraphics(i32* %84)
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32* @GetBitmapPixelBuffer(i32 %86, i32 %87, i32 %88, i32 %89)
  store i32* %90, i32** %13, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %136

93:                                               ; preds = %0
  %94 = load i32, i32* %4, align 4
  %95 = sdiv i32 %94, 2
  %96 = load i32, i32* %5, align 4
  %97 = sdiv i32 %96, 2
  %98 = call i64 @get_bitmap_pixel(i32 %95, i32 %97)
  %99 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 0
  store i64 %98, i64* %99, align 16
  %100 = load i32, i32* %4, align 4
  %101 = sdiv i32 %100, 2
  %102 = add nsw i32 %101, 1
  %103 = load i32, i32* %5, align 4
  %104 = sdiv i32 %103, 2
  %105 = call i64 @get_bitmap_pixel(i32 %102, i32 %104)
  %106 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 1
  store i64 %105, i64* %106, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sdiv i32 %107, 2
  %109 = load i32, i32* %5, align 4
  %110 = sdiv i32 %109, 2
  %111 = add nsw i32 %110, 1
  %112 = call i64 @get_bitmap_pixel(i32 %108, i32 %111)
  %113 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 2
  store i64 %112, i64* %113, align 16
  %114 = load i32, i32* %4, align 4
  %115 = sdiv i32 %114, 2
  %116 = sub nsw i32 %115, 1
  %117 = load i32, i32* %5, align 4
  %118 = sdiv i32 %117, 2
  %119 = sub nsw i32 %118, 1
  %120 = call i64 @get_bitmap_pixel(i32 %116, i32 %119)
  %121 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 3
  store i64 %120, i64* %121, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sdiv i32 %122, 2
  %124 = sub nsw i32 %123, 1
  %125 = load i32, i32* %5, align 4
  %126 = sub nsw i32 %125, 1
  %127 = call i64 @get_bitmap_pixel(i32 %124, i32 %126)
  %128 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 4
  store i64 %127, i64* %128, align 16
  %129 = load i32, i32* %4, align 4
  %130 = sub nsw i32 %129, 1
  %131 = load i32, i32* %5, align 4
  %132 = sdiv i32 %131, 2
  %133 = sub nsw i32 %132, 1
  %134 = call i64 @get_bitmap_pixel(i32 %130, i32 %133)
  %135 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 5
  store i64 %134, i64* %135, align 8
  br label %136

136:                                              ; preds = %93, %0
  %137 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 0
  %138 = load i64, i64* %137, align 16
  %139 = call i64 @is_blue_color(i64 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %163

141:                                              ; preds = %136
  %142 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 1
  %143 = load i64, i64* %142, align 8
  %144 = call i64 @is_blue_color(i64 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %163

146:                                              ; preds = %141
  %147 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 2
  %148 = load i64, i64* %147, align 16
  %149 = call i64 @is_blue_color(i64 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %163

151:                                              ; preds = %146
  %152 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 3
  %153 = load i64, i64* %152, align 8
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %151
  %156 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 4
  %157 = load i64, i64* %156, align 16
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = getelementptr inbounds [6 x i64], [6 x i64]* %1, i64 0, i64 5
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %161, 0
  br label %163

163:                                              ; preds = %159, %155, %151, %146, %141, %136
  %164 = phi i1 [ false, %155 ], [ false, %151 ], [ false, %146 ], [ false, %141 ], [ false, %136 ], [ %162, %159 ]
  %165 = zext i1 %164 to i32
  %166 = call i32 @ok(i32 %165, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %167 = load i32*, i32** %13, align 8
  %168 = call i32 @GdipFree(i32* %167)
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* %12, align 4
  %171 = call i32 @SelectObject(i32 %169, i32 %170)
  %172 = load i32, i32* %11, align 4
  %173 = call i32 @DeleteObject(i32 %172)
  %174 = load i32, i32* %10, align 4
  %175 = call i32 @DeleteDC(i32 %174)
  %176 = load i32, i32* @hwnd, align 4
  %177 = load i32, i32* %9, align 4
  %178 = call i32 @ReleaseDC(i32 %176, i32 %177)
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

declare dso_local i32 @SetWindowOrgEx(i32, i32, i32, %struct.TYPE_5__*) #2

declare dso_local i32 @GdipCreateSolidFill(i32, i32**) #2

declare dso_local i32 @expect(i32, i32) #2

declare dso_local i32 @GdipCreateFromHDC(i32, i32**) #2

declare dso_local i32 @GdipSetClipRectI(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @GdipFillRectangleI(i32*, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @GdipDeleteBrush(i32*) #2

declare dso_local i32 @GdipDeleteGraphics(i32*) #2

declare dso_local i32* @GetBitmapPixelBuffer(i32, i32, i32, i32) #2

declare dso_local i64 @get_bitmap_pixel(i32, i32) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i64 @is_blue_color(i64) #2

declare dso_local i32 @GdipFree(i32*) #2

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
