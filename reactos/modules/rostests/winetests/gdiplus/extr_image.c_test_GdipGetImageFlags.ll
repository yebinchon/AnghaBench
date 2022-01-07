; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_GdipGetImageFlags.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_GdipGetImageFlags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidParameter = common dso_local global i64 0, align 8
@PixelFormat1bppIndexed = common dso_local global i32 0, align 4
@Ok = common dso_local global i64 0, align 8
@ImageFlagsHasAlpha = common dso_local global i64 0, align 8
@PixelFormat4bppIndexed = common dso_local global i32 0, align 4
@PixelFormat8bppIndexed = common dso_local global i32 0, align 4
@PixelFormat16bppGrayScale = common dso_local global i32 0, align 4
@ImageFlagsNone = common dso_local global i64 0, align 8
@PixelFormat16bppRGB555 = common dso_local global i32 0, align 4
@PixelFormat16bppRGB565 = common dso_local global i32 0, align 4
@PixelFormat16bppARGB1555 = common dso_local global i32 0, align 4
@PixelFormat24bppRGB = common dso_local global i32 0, align 4
@PixelFormat32bppRGB = common dso_local global i32 0, align 4
@PixelFormat32bppARGB = common dso_local global i32 0, align 4
@PixelFormat32bppPARGB = common dso_local global i32 0, align 4
@PixelFormat48bppRGB = common dso_local global i32 0, align 4
@PixelFormat64bppARGB = common dso_local global i32 0, align 4
@PixelFormat64bppPARGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GdipGetImageFlags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GdipGetImageFlags() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i32* inttoptr (i64 3735928559 to i32*), i32** %1, align 8
  %4 = call i64 @GdipGetImageFlags(i32* null, i64* null)
  store i64 %4, i64* %2, align 8
  %5 = load i64, i64* @InvalidParameter, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i32 @expect(i64 %5, i64 %6)
  %8 = call i64 @GdipGetImageFlags(i32* null, i64* %3)
  store i64 %8, i64* %2, align 8
  %9 = load i64, i64* @InvalidParameter, align 8
  %10 = load i64, i64* %2, align 8
  %11 = call i32 @expect(i64 %9, i64 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = call i64 @GdipGetImageFlags(i32* %12, i64* null)
  store i64 %13, i64* %2, align 8
  %14 = load i64, i64* @InvalidParameter, align 8
  %15 = load i64, i64* %2, align 8
  %16 = call i32 @expect(i64 %14, i64 %15)
  %17 = load i32, i32* @PixelFormat1bppIndexed, align 4
  %18 = call i64 @GdipCreateBitmapFromScan0(i32 10, i32 10, i32 10, i32 %17, i32* null, i32** %1)
  store i64 %18, i64* %2, align 8
  %19 = load i64, i64* @Ok, align 8
  %20 = load i64, i64* %2, align 8
  %21 = call i32 @expect(i64 %19, i64 %20)
  %22 = load i32*, i32** %1, align 8
  %23 = call i64 @GdipGetImageFlags(i32* %22, i64* %3)
  store i64 %23, i64* %2, align 8
  %24 = load i64, i64* @Ok, align 8
  %25 = load i64, i64* %2, align 8
  %26 = call i32 @expect(i64 %24, i64 %25)
  %27 = load i64, i64* @ImageFlagsHasAlpha, align 8
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @expect(i64 %27, i64 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @GdipDisposeImage(i32* %30)
  %32 = load i32, i32* @PixelFormat4bppIndexed, align 4
  %33 = call i64 @GdipCreateBitmapFromScan0(i32 10, i32 10, i32 10, i32 %32, i32* null, i32** %1)
  store i64 %33, i64* %2, align 8
  %34 = load i64, i64* @Ok, align 8
  %35 = load i64, i64* %2, align 8
  %36 = call i32 @expect(i64 %34, i64 %35)
  %37 = load i32*, i32** %1, align 8
  %38 = call i64 @GdipGetImageFlags(i32* %37, i64* %3)
  store i64 %38, i64* %2, align 8
  %39 = load i64, i64* @Ok, align 8
  %40 = load i64, i64* %2, align 8
  %41 = call i32 @expect(i64 %39, i64 %40)
  %42 = load i64, i64* @ImageFlagsHasAlpha, align 8
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @expect(i64 %42, i64 %43)
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @GdipDisposeImage(i32* %45)
  %47 = load i32, i32* @PixelFormat8bppIndexed, align 4
  %48 = call i64 @GdipCreateBitmapFromScan0(i32 10, i32 10, i32 10, i32 %47, i32* null, i32** %1)
  store i64 %48, i64* %2, align 8
  %49 = load i64, i64* @Ok, align 8
  %50 = load i64, i64* %2, align 8
  %51 = call i32 @expect(i64 %49, i64 %50)
  %52 = load i32*, i32** %1, align 8
  %53 = call i64 @GdipGetImageFlags(i32* %52, i64* %3)
  store i64 %53, i64* %2, align 8
  %54 = load i64, i64* @Ok, align 8
  %55 = load i64, i64* %2, align 8
  %56 = call i32 @expect(i64 %54, i64 %55)
  %57 = load i64, i64* @ImageFlagsHasAlpha, align 8
  %58 = load i64, i64* %3, align 8
  %59 = call i32 @expect(i64 %57, i64 %58)
  %60 = load i32*, i32** %1, align 8
  %61 = call i32 @GdipDisposeImage(i32* %60)
  %62 = load i32, i32* @PixelFormat16bppGrayScale, align 4
  %63 = call i64 @GdipCreateBitmapFromScan0(i32 10, i32 10, i32 10, i32 %62, i32* null, i32** %1)
  store i64 %63, i64* %2, align 8
  %64 = load i64, i64* @Ok, align 8
  %65 = load i64, i64* %2, align 8
  %66 = call i32 @expect(i64 %64, i64 %65)
  %67 = load i32*, i32** %1, align 8
  %68 = call i64 @GdipGetImageFlags(i32* %67, i64* %3)
  store i64 %68, i64* %2, align 8
  %69 = load i64, i64* @Ok, align 8
  %70 = load i64, i64* %2, align 8
  %71 = call i32 @expect(i64 %69, i64 %70)
  %72 = load i64, i64* @ImageFlagsNone, align 8
  %73 = load i64, i64* %3, align 8
  %74 = call i32 @expect(i64 %72, i64 %73)
  %75 = load i32*, i32** %1, align 8
  %76 = call i32 @GdipDisposeImage(i32* %75)
  %77 = load i32, i32* @PixelFormat16bppRGB555, align 4
  %78 = call i64 @GdipCreateBitmapFromScan0(i32 10, i32 10, i32 10, i32 %77, i32* null, i32** %1)
  store i64 %78, i64* %2, align 8
  %79 = load i64, i64* @Ok, align 8
  %80 = load i64, i64* %2, align 8
  %81 = call i32 @expect(i64 %79, i64 %80)
  %82 = load i32*, i32** %1, align 8
  %83 = call i64 @GdipGetImageFlags(i32* %82, i64* %3)
  store i64 %83, i64* %2, align 8
  %84 = load i64, i64* @Ok, align 8
  %85 = load i64, i64* %2, align 8
  %86 = call i32 @expect(i64 %84, i64 %85)
  %87 = load i64, i64* @ImageFlagsNone, align 8
  %88 = load i64, i64* %3, align 8
  %89 = call i32 @expect(i64 %87, i64 %88)
  %90 = load i32*, i32** %1, align 8
  %91 = call i32 @GdipDisposeImage(i32* %90)
  %92 = load i32, i32* @PixelFormat16bppRGB565, align 4
  %93 = call i64 @GdipCreateBitmapFromScan0(i32 10, i32 10, i32 10, i32 %92, i32* null, i32** %1)
  store i64 %93, i64* %2, align 8
  %94 = load i64, i64* @Ok, align 8
  %95 = load i64, i64* %2, align 8
  %96 = call i32 @expect(i64 %94, i64 %95)
  %97 = load i32*, i32** %1, align 8
  %98 = call i64 @GdipGetImageFlags(i32* %97, i64* %3)
  store i64 %98, i64* %2, align 8
  %99 = load i64, i64* @Ok, align 8
  %100 = load i64, i64* %2, align 8
  %101 = call i32 @expect(i64 %99, i64 %100)
  %102 = load i64, i64* @ImageFlagsNone, align 8
  %103 = load i64, i64* %3, align 8
  %104 = call i32 @expect(i64 %102, i64 %103)
  %105 = load i32*, i32** %1, align 8
  %106 = call i32 @GdipDisposeImage(i32* %105)
  %107 = load i32, i32* @PixelFormat16bppARGB1555, align 4
  %108 = call i64 @GdipCreateBitmapFromScan0(i32 10, i32 10, i32 10, i32 %107, i32* null, i32** %1)
  store i64 %108, i64* %2, align 8
  %109 = load i64, i64* @Ok, align 8
  %110 = load i64, i64* %2, align 8
  %111 = call i32 @expect(i64 %109, i64 %110)
  %112 = load i32*, i32** %1, align 8
  %113 = call i64 @GdipGetImageFlags(i32* %112, i64* %3)
  store i64 %113, i64* %2, align 8
  %114 = load i64, i64* @Ok, align 8
  %115 = load i64, i64* %2, align 8
  %116 = call i32 @expect(i64 %114, i64 %115)
  %117 = load i64, i64* @ImageFlagsHasAlpha, align 8
  %118 = load i64, i64* %3, align 8
  %119 = call i32 @expect(i64 %117, i64 %118)
  %120 = load i32*, i32** %1, align 8
  %121 = call i32 @GdipDisposeImage(i32* %120)
  %122 = load i32, i32* @PixelFormat24bppRGB, align 4
  %123 = call i64 @GdipCreateBitmapFromScan0(i32 10, i32 10, i32 10, i32 %122, i32* null, i32** %1)
  store i64 %123, i64* %2, align 8
  %124 = load i64, i64* @Ok, align 8
  %125 = load i64, i64* %2, align 8
  %126 = call i32 @expect(i64 %124, i64 %125)
  %127 = load i32*, i32** %1, align 8
  %128 = call i64 @GdipGetImageFlags(i32* %127, i64* %3)
  store i64 %128, i64* %2, align 8
  %129 = load i64, i64* @Ok, align 8
  %130 = load i64, i64* %2, align 8
  %131 = call i32 @expect(i64 %129, i64 %130)
  %132 = load i64, i64* @ImageFlagsNone, align 8
  %133 = load i64, i64* %3, align 8
  %134 = call i32 @expect(i64 %132, i64 %133)
  %135 = load i32*, i32** %1, align 8
  %136 = call i32 @GdipDisposeImage(i32* %135)
  %137 = load i32, i32* @PixelFormat32bppRGB, align 4
  %138 = call i64 @GdipCreateBitmapFromScan0(i32 10, i32 10, i32 10, i32 %137, i32* null, i32** %1)
  store i64 %138, i64* %2, align 8
  %139 = load i64, i64* @Ok, align 8
  %140 = load i64, i64* %2, align 8
  %141 = call i32 @expect(i64 %139, i64 %140)
  %142 = load i32*, i32** %1, align 8
  %143 = call i64 @GdipGetImageFlags(i32* %142, i64* %3)
  store i64 %143, i64* %2, align 8
  %144 = load i64, i64* @Ok, align 8
  %145 = load i64, i64* %2, align 8
  %146 = call i32 @expect(i64 %144, i64 %145)
  %147 = load i64, i64* @ImageFlagsNone, align 8
  %148 = load i64, i64* %3, align 8
  %149 = call i32 @expect(i64 %147, i64 %148)
  %150 = load i32*, i32** %1, align 8
  %151 = call i32 @GdipDisposeImage(i32* %150)
  %152 = load i32, i32* @PixelFormat32bppARGB, align 4
  %153 = call i64 @GdipCreateBitmapFromScan0(i32 10, i32 10, i32 10, i32 %152, i32* null, i32** %1)
  store i64 %153, i64* %2, align 8
  %154 = load i64, i64* @Ok, align 8
  %155 = load i64, i64* %2, align 8
  %156 = call i32 @expect(i64 %154, i64 %155)
  %157 = load i32*, i32** %1, align 8
  %158 = call i64 @GdipGetImageFlags(i32* %157, i64* %3)
  store i64 %158, i64* %2, align 8
  %159 = load i64, i64* @Ok, align 8
  %160 = load i64, i64* %2, align 8
  %161 = call i32 @expect(i64 %159, i64 %160)
  %162 = load i64, i64* @ImageFlagsHasAlpha, align 8
  %163 = load i64, i64* %3, align 8
  %164 = call i32 @expect(i64 %162, i64 %163)
  %165 = load i32*, i32** %1, align 8
  %166 = call i32 @GdipDisposeImage(i32* %165)
  %167 = load i32, i32* @PixelFormat32bppPARGB, align 4
  %168 = call i64 @GdipCreateBitmapFromScan0(i32 10, i32 10, i32 10, i32 %167, i32* null, i32** %1)
  store i64 %168, i64* %2, align 8
  %169 = load i64, i64* @Ok, align 8
  %170 = load i64, i64* %2, align 8
  %171 = call i32 @expect(i64 %169, i64 %170)
  %172 = load i32*, i32** %1, align 8
  %173 = call i64 @GdipGetImageFlags(i32* %172, i64* %3)
  store i64 %173, i64* %2, align 8
  %174 = load i64, i64* @Ok, align 8
  %175 = load i64, i64* %2, align 8
  %176 = call i32 @expect(i64 %174, i64 %175)
  %177 = load i64, i64* @ImageFlagsHasAlpha, align 8
  %178 = load i64, i64* %3, align 8
  %179 = call i32 @expect(i64 %177, i64 %178)
  %180 = load i32*, i32** %1, align 8
  %181 = call i32 @GdipDisposeImage(i32* %180)
  %182 = load i32, i32* @PixelFormat48bppRGB, align 4
  %183 = call i64 @GdipCreateBitmapFromScan0(i32 10, i32 10, i32 10, i32 %182, i32* null, i32** %1)
  store i64 %183, i64* %2, align 8
  %184 = load i64, i64* @Ok, align 8
  %185 = load i64, i64* %2, align 8
  %186 = call i32 @expect(i64 %184, i64 %185)
  %187 = load i64, i64* %2, align 8
  %188 = load i64, i64* @Ok, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %201

190:                                              ; preds = %0
  %191 = load i32*, i32** %1, align 8
  %192 = call i64 @GdipGetImageFlags(i32* %191, i64* %3)
  store i64 %192, i64* %2, align 8
  %193 = load i64, i64* @Ok, align 8
  %194 = load i64, i64* %2, align 8
  %195 = call i32 @expect(i64 %193, i64 %194)
  %196 = load i64, i64* @ImageFlagsNone, align 8
  %197 = load i64, i64* %3, align 8
  %198 = call i32 @expect(i64 %196, i64 %197)
  %199 = load i32*, i32** %1, align 8
  %200 = call i32 @GdipDisposeImage(i32* %199)
  br label %201

201:                                              ; preds = %190, %0
  %202 = load i32, i32* @PixelFormat64bppARGB, align 4
  %203 = call i64 @GdipCreateBitmapFromScan0(i32 10, i32 10, i32 10, i32 %202, i32* null, i32** %1)
  store i64 %203, i64* %2, align 8
  %204 = load i64, i64* @Ok, align 8
  %205 = load i64, i64* %2, align 8
  %206 = call i32 @expect(i64 %204, i64 %205)
  %207 = load i64, i64* %2, align 8
  %208 = load i64, i64* @Ok, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %224

210:                                              ; preds = %201
  %211 = load i64, i64* @Ok, align 8
  %212 = load i64, i64* %2, align 8
  %213 = call i32 @expect(i64 %211, i64 %212)
  %214 = load i32*, i32** %1, align 8
  %215 = call i64 @GdipGetImageFlags(i32* %214, i64* %3)
  store i64 %215, i64* %2, align 8
  %216 = load i64, i64* @Ok, align 8
  %217 = load i64, i64* %2, align 8
  %218 = call i32 @expect(i64 %216, i64 %217)
  %219 = load i64, i64* @ImageFlagsHasAlpha, align 8
  %220 = load i64, i64* %3, align 8
  %221 = call i32 @expect(i64 %219, i64 %220)
  %222 = load i32*, i32** %1, align 8
  %223 = call i32 @GdipDisposeImage(i32* %222)
  br label %224

224:                                              ; preds = %210, %201
  %225 = load i32, i32* @PixelFormat64bppPARGB, align 4
  %226 = call i64 @GdipCreateBitmapFromScan0(i32 10, i32 10, i32 10, i32 %225, i32* null, i32** %1)
  store i64 %226, i64* %2, align 8
  %227 = load i64, i64* @Ok, align 8
  %228 = load i64, i64* %2, align 8
  %229 = call i32 @expect(i64 %227, i64 %228)
  %230 = load i64, i64* %2, align 8
  %231 = load i64, i64* @Ok, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %247

233:                                              ; preds = %224
  %234 = load i64, i64* @Ok, align 8
  %235 = load i64, i64* %2, align 8
  %236 = call i32 @expect(i64 %234, i64 %235)
  %237 = load i32*, i32** %1, align 8
  %238 = call i64 @GdipGetImageFlags(i32* %237, i64* %3)
  store i64 %238, i64* %2, align 8
  %239 = load i64, i64* @Ok, align 8
  %240 = load i64, i64* %2, align 8
  %241 = call i32 @expect(i64 %239, i64 %240)
  %242 = load i64, i64* @ImageFlagsHasAlpha, align 8
  %243 = load i64, i64* %3, align 8
  %244 = call i32 @expect(i64 %242, i64 %243)
  %245 = load i32*, i32** %1, align 8
  %246 = call i32 @GdipDisposeImage(i32* %245)
  br label %247

247:                                              ; preds = %233, %224
  ret void
}

declare dso_local i64 @GdipGetImageFlags(i32*, i64*) #1

declare dso_local i32 @expect(i64, i64) #1

declare dso_local i64 @GdipCreateBitmapFromScan0(i32, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @GdipDisposeImage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
