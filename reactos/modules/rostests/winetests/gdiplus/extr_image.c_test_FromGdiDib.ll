; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_FromGdiDib.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_FromGdiDib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@BI_RGB = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i64 0, align 8
@Ok = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Expected bitmap to be initialized\0A\00", align 1
@PixelFormat32bppRGB = common dso_local global i64 0, align 8
@PixelFormat24bppRGB = common dso_local global i64 0, align 8
@PixelFormat16bppRGB555 = common dso_local global i64 0, align 8
@PixelFormat8bppIndexed = common dso_local global i64 0, align 8
@PixelFormat4bppIndexed = common dso_local global i64 0, align 8
@PixelFormat1bppIndexed = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_FromGdiDib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_FromGdiDib() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca [400 x i32], align 16
  %4 = alloca [1028 x i32], align 16
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds [1028 x i32], [1028 x i32]* %4, i64 0, i64 0
  %8 = bitcast i32* %7 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %5, align 8
  store i32* null, i32** %1, align 8
  %9 = getelementptr inbounds [1028 x i32], [1028 x i32]* %4, i64 0, i64 0
  %10 = call i32 @memset(i32* %9, i32 0, i32 4112)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 4, i32* %13, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i32 10, i32* %16, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  store i32 10, i32* %19, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  store i32 1, i32* %22, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  store i32 32, i32* %25, align 4
  %26 = load i32, i32* @BI_RGB, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 5
  store i32 %26, i32* %29, align 4
  %30 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 0
  %31 = call i64 @GdipCreateBitmapFromGdiDib(%struct.TYPE_5__* null, i32* %30, i32** %1)
  store i64 %31, i64* %2, align 8
  %32 = load i64, i64* @InvalidParameter, align 8
  %33 = load i64, i64* %2, align 8
  %34 = call i32 @expect(i64 %32, i64 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = call i64 @GdipCreateBitmapFromGdiDib(%struct.TYPE_5__* %35, i32* null, i32** %1)
  store i64 %36, i64* %2, align 8
  %37 = load i64, i64* @InvalidParameter, align 8
  %38 = load i64, i64* %2, align 8
  %39 = call i32 @expect(i64 %37, i64 %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 0
  %42 = call i64 @GdipCreateBitmapFromGdiDib(%struct.TYPE_5__* %40, i32* %41, i32** null)
  store i64 %42, i64* %2, align 8
  %43 = load i64, i64* @InvalidParameter, align 8
  %44 = load i64, i64* %2, align 8
  %45 = call i32 @expect(i64 %43, i64 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 0
  %48 = call i64 @GdipCreateBitmapFromGdiDib(%struct.TYPE_5__* %46, i32* %47, i32** %1)
  store i64 %48, i64* %2, align 8
  %49 = load i64, i64* @Ok, align 8
  %50 = load i64, i64* %2, align 8
  %51 = call i32 @expect(i64 %49, i64 %50)
  %52 = load i32*, i32** %1, align 8
  %53 = icmp ne i32* null, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %56 = load i64, i64* %2, align 8
  %57 = load i64, i64* @Ok, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %0
  %60 = load i32*, i32** %1, align 8
  %61 = call i64 @GdipGetImagePixelFormat(i32* %60, i64* %6)
  store i64 %61, i64* %2, align 8
  %62 = load i64, i64* @Ok, align 8
  %63 = load i64, i64* %2, align 8
  %64 = call i32 @expect(i64 %62, i64 %63)
  %65 = load i64, i64* @PixelFormat32bppRGB, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @expect(i64 %65, i64 %66)
  %68 = load i32*, i32** %1, align 8
  %69 = call i32 @GdipDisposeImage(i32* %68)
  br label %70

70:                                               ; preds = %59, %0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 4
  store i32 24, i32* %73, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 0
  %76 = call i64 @GdipCreateBitmapFromGdiDib(%struct.TYPE_5__* %74, i32* %75, i32** %1)
  store i64 %76, i64* %2, align 8
  %77 = load i64, i64* @Ok, align 8
  %78 = load i64, i64* %2, align 8
  %79 = call i32 @expect(i64 %77, i64 %78)
  %80 = load i32*, i32** %1, align 8
  %81 = icmp ne i32* null, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @ok(i32 %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %84 = load i64, i64* %2, align 8
  %85 = load i64, i64* @Ok, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %70
  %88 = load i32*, i32** %1, align 8
  %89 = call i64 @GdipGetImagePixelFormat(i32* %88, i64* %6)
  store i64 %89, i64* %2, align 8
  %90 = load i64, i64* @Ok, align 8
  %91 = load i64, i64* %2, align 8
  %92 = call i32 @expect(i64 %90, i64 %91)
  %93 = load i64, i64* @PixelFormat24bppRGB, align 8
  %94 = load i64, i64* %6, align 8
  %95 = call i32 @expect(i64 %93, i64 %94)
  %96 = load i32*, i32** %1, align 8
  %97 = call i32 @GdipDisposeImage(i32* %96)
  br label %98

98:                                               ; preds = %87, %70
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 4
  store i32 16, i32* %101, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %103 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 0
  %104 = call i64 @GdipCreateBitmapFromGdiDib(%struct.TYPE_5__* %102, i32* %103, i32** %1)
  store i64 %104, i64* %2, align 8
  %105 = load i64, i64* @Ok, align 8
  %106 = load i64, i64* %2, align 8
  %107 = call i32 @expect(i64 %105, i64 %106)
  %108 = load i32*, i32** %1, align 8
  %109 = icmp ne i32* null, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @ok(i32 %110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %112 = load i64, i64* %2, align 8
  %113 = load i64, i64* @Ok, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %98
  %116 = load i32*, i32** %1, align 8
  %117 = call i64 @GdipGetImagePixelFormat(i32* %116, i64* %6)
  store i64 %117, i64* %2, align 8
  %118 = load i64, i64* @Ok, align 8
  %119 = load i64, i64* %2, align 8
  %120 = call i32 @expect(i64 %118, i64 %119)
  %121 = load i64, i64* @PixelFormat16bppRGB555, align 8
  %122 = load i64, i64* %6, align 8
  %123 = call i32 @expect(i64 %121, i64 %122)
  %124 = load i32*, i32** %1, align 8
  %125 = call i32 @GdipDisposeImage(i32* %124)
  br label %126

126:                                              ; preds = %115, %98
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 4
  store i32 8, i32* %129, align 4
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %131 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 0
  %132 = call i64 @GdipCreateBitmapFromGdiDib(%struct.TYPE_5__* %130, i32* %131, i32** %1)
  store i64 %132, i64* %2, align 8
  %133 = load i64, i64* @Ok, align 8
  %134 = load i64, i64* %2, align 8
  %135 = call i32 @expect(i64 %133, i64 %134)
  %136 = load i32*, i32** %1, align 8
  %137 = icmp ne i32* null, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @ok(i32 %138, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %140 = load i64, i64* %2, align 8
  %141 = load i64, i64* @Ok, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %154

143:                                              ; preds = %126
  %144 = load i32*, i32** %1, align 8
  %145 = call i64 @GdipGetImagePixelFormat(i32* %144, i64* %6)
  store i64 %145, i64* %2, align 8
  %146 = load i64, i64* @Ok, align 8
  %147 = load i64, i64* %2, align 8
  %148 = call i32 @expect(i64 %146, i64 %147)
  %149 = load i64, i64* @PixelFormat8bppIndexed, align 8
  %150 = load i64, i64* %6, align 8
  %151 = call i32 @expect(i64 %149, i64 %150)
  %152 = load i32*, i32** %1, align 8
  %153 = call i32 @GdipDisposeImage(i32* %152)
  br label %154

154:                                              ; preds = %143, %126
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 4
  store i32 4, i32* %157, align 4
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %159 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 0
  %160 = call i64 @GdipCreateBitmapFromGdiDib(%struct.TYPE_5__* %158, i32* %159, i32** %1)
  store i64 %160, i64* %2, align 8
  %161 = load i64, i64* @Ok, align 8
  %162 = load i64, i64* %2, align 8
  %163 = call i32 @expect(i64 %161, i64 %162)
  %164 = load i32*, i32** %1, align 8
  %165 = icmp ne i32* null, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 @ok(i32 %166, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %168 = load i64, i64* %2, align 8
  %169 = load i64, i64* @Ok, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %182

171:                                              ; preds = %154
  %172 = load i32*, i32** %1, align 8
  %173 = call i64 @GdipGetImagePixelFormat(i32* %172, i64* %6)
  store i64 %173, i64* %2, align 8
  %174 = load i64, i64* @Ok, align 8
  %175 = load i64, i64* %2, align 8
  %176 = call i32 @expect(i64 %174, i64 %175)
  %177 = load i64, i64* @PixelFormat4bppIndexed, align 8
  %178 = load i64, i64* %6, align 8
  %179 = call i32 @expect(i64 %177, i64 %178)
  %180 = load i32*, i32** %1, align 8
  %181 = call i32 @GdipDisposeImage(i32* %180)
  br label %182

182:                                              ; preds = %171, %154
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 4
  store i32 1, i32* %185, align 4
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %187 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 0
  %188 = call i64 @GdipCreateBitmapFromGdiDib(%struct.TYPE_5__* %186, i32* %187, i32** %1)
  store i64 %188, i64* %2, align 8
  %189 = load i64, i64* @Ok, align 8
  %190 = load i64, i64* %2, align 8
  %191 = call i32 @expect(i64 %189, i64 %190)
  %192 = load i32*, i32** %1, align 8
  %193 = icmp ne i32* null, %192
  %194 = zext i1 %193 to i32
  %195 = call i32 @ok(i32 %194, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %196 = load i64, i64* %2, align 8
  %197 = load i64, i64* @Ok, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %210

199:                                              ; preds = %182
  %200 = load i32*, i32** %1, align 8
  %201 = call i64 @GdipGetImagePixelFormat(i32* %200, i64* %6)
  store i64 %201, i64* %2, align 8
  %202 = load i64, i64* @Ok, align 8
  %203 = load i64, i64* %2, align 8
  %204 = call i32 @expect(i64 %202, i64 %203)
  %205 = load i64, i64* @PixelFormat1bppIndexed, align 8
  %206 = load i64, i64* %6, align 8
  %207 = call i32 @expect(i64 %205, i64 %206)
  %208 = load i32*, i32** %1, align 8
  %209 = call i32 @GdipDisposeImage(i32* %208)
  br label %210

210:                                              ; preds = %199, %182
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 4
  store i32 0, i32* %213, align 4
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %215 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 0
  %216 = call i64 @GdipCreateBitmapFromGdiDib(%struct.TYPE_5__* %214, i32* %215, i32** %1)
  store i64 %216, i64* %2, align 8
  %217 = load i64, i64* @InvalidParameter, align 8
  %218 = load i64, i64* %2, align 8
  %219 = call i32 @expect(i64 %217, i64 %218)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @GdipCreateBitmapFromGdiDib(%struct.TYPE_5__*, i32*, i32**) #1

declare dso_local i32 @expect(i64, i64) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @GdipGetImagePixelFormat(i32*, i64*) #1

declare dso_local i32 @GdipDisposeImage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
