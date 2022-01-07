; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipGetVisibleClipBounds_screen.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphics.c_test_GdipGetVisibleClipBounds_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Expected HDC to be initialized\0A\00", align 1
@Ok = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Expected graphics to be initialized\0A\00", align 1
@HORZRES = common dso_local global i32 0, align 4
@VERTRES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [101 x i8] c"Expected clip bounds (%0.f, %0.f, %0.f, %0.f) to be the size of the screen (%0.f, %0.f, %0.f, %0.f)\0A\00", align 1
@CombineModeReplace = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [108 x i8] c"Expected clip bounds (%0.f, %0.f, %0.f, %0.f) to be the size of the clipping rect (%0.f, %0.f, %0.f, %0.f)\0A\00", align 1
@.str.4 = private unnamed_addr constant [116 x i8] c"Expected clip bounds (%0.f, %0.f, %0.f, %0.f) to be the size of the visible clipping rect (%0.f, %0.f, %0.f, %0.f)\0A\00", align 1
@.str.5 = private unnamed_addr constant [108 x i8] c"Expected clip bounds (%d, %d, %d, %d) to be the size of the visible clipping rect (%0.f, %0.f, %0.f, %0.f)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GdipGetVisibleClipBounds_screen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GdipGetVisibleClipBounds_screen() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca %struct.TYPE_5__, align 4
  %7 = alloca %struct.TYPE_6__, align 4
  store i32* null, i32** %2, align 8
  %8 = call i32* @GetDC(i32 0)
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @GdipCreateFromHDC(i32* %13, i32** %2)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* @Ok, align 4
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @expect(i32 %15, i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @HORZRES, align 4
  %26 = call i8* @GetDeviceCaps(i32* %24, i32 %25)
  %27 = ptrtoint i8* %26 to i32
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @VERTRES, align 4
  %31 = call i8* @GetDeviceCaps(i32* %29, i32 %30)
  %32 = ptrtoint i8* %31 to i32
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @GdipGetVisibleClipBounds(i32* %34, %struct.TYPE_5__* %4)
  store i32 %35, i32* %1, align 4
  %36 = load i32, i32* @Ok, align 4
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @expect(i32 %36, i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %58, %60
  br label %62

62:                                               ; preds = %56, %50, %44, %0
  %63 = phi i1 [ false, %50 ], [ false, %44 ], [ false, %0 ], [ %61, %56 ]
  %64 = zext i1 %63 to i32
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %68, i32 %70, i32 %72, i32 %74, i32 %76, i32 %78, i32 %80)
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 10, i32* %82, align 4
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 10, i32* %83, align 4
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i32 12, i32* %84, align 4
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 12, i32* %85, align 4
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  store i32 14, i32* %86, align 4
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  store i32 14, i32* %87, align 4
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  store i32 16, i32* %88, align 4
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  store i32 16, i32* %89, align 4
  %90 = load i32*, i32** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @CombineModeReplace, align 4
  %100 = call i32 @GdipSetClipRect(i32* %90, i32 %92, i32 %94, i32 %96, i32 %98, i32 %99)
  store i32 %100, i32* %1, align 4
  %101 = load i32, i32* @Ok, align 4
  %102 = load i32, i32* %1, align 4
  %103 = call i32 @expect(i32 %101, i32 %102)
  %104 = load i32*, i32** %2, align 8
  %105 = call i32 @GdipGetVisibleClipBounds(i32* %104, %struct.TYPE_5__* %4)
  store i32 %105, i32* %1, align 4
  %106 = load i32, i32* @Ok, align 4
  %107 = load i32, i32* %1, align 4
  %108 = call i32 @expect(i32 %106, i32 %107)
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %132

114:                                              ; preds = %62
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %128, %130
  br label %132

132:                                              ; preds = %126, %120, %114, %62
  %133 = phi i1 [ false, %120 ], [ false, %114 ], [ false, %62 ], [ %131, %126 ]
  %134 = zext i1 %133 to i32
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i32 %136, i32 %138, i32 %140, i32 %142, i32 %144, i32 %146, i32 %148, i32 %150)
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 -10, i32* %152, align 4
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i32 -12, i32* %153, align 4
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  store i32 20, i32* %154, align 4
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  store i32 24, i32* %155, align 4
  %156 = load i32*, i32** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @CombineModeReplace, align 4
  %166 = call i32 @GdipSetClipRect(i32* %156, i32 %158, i32 %160, i32 %162, i32 %164, i32 %165)
  store i32 %166, i32* %1, align 4
  %167 = load i32, i32* @Ok, align 4
  %168 = load i32, i32* %1, align 4
  %169 = call i32 @expect(i32 %167, i32 %168)
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 0, i32* %170, align 4
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 0, i32* %171, align 4
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  store i32 10, i32* %172, align 4
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  store i32 12, i32* %173, align 4
  %174 = load i32*, i32** %2, align 8
  %175 = call i32 @GdipGetVisibleClipBounds(i32* %174, %struct.TYPE_5__* %4)
  store i32 %175, i32* %1, align 4
  %176 = load i32, i32* @Ok, align 4
  %177 = load i32, i32* %1, align 4
  %178 = call i32 @expect(i32 %176, i32 %177)
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %180, %182
  br i1 %183, label %184, label %202

184:                                              ; preds = %132
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %186, %188
  br i1 %189, label %190, label %202

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %192, %194
  br i1 %195, label %196, label %202

196:                                              ; preds = %190
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %198, %200
  br label %202

202:                                              ; preds = %196, %190, %184, %132
  %203 = phi i1 [ false, %190 ], [ false, %184 ], [ false, %132 ], [ %201, %196 ]
  %204 = zext i1 %203 to i32
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = call i32 (i32, i8*, ...) @ok(i32 %204, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.4, i64 0, i64 0), i32 %206, i32 %208, i32 %210, i32 %212, i32 %214, i32 %216, i32 %218, i32 %220)
  %222 = load i32*, i32** %2, align 8
  %223 = call i32 @GdipGetVisibleClipBoundsI(i32* %222, %struct.TYPE_6__* %7)
  store i32 %223, i32* %1, align 4
  %224 = load i32, i32* @Ok, align 4
  %225 = load i32, i32* %1, align 4
  %226 = call i32 @expect(i32 %224, i32 %225)
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = icmp eq i32 %228, %230
  br i1 %231, label %232, label %250

232:                                              ; preds = %202
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = icmp eq i32 %234, %236
  br i1 %237, label %238, label %250

238:                                              ; preds = %232
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = icmp eq i32 %240, %242
  br i1 %243, label %244, label %250

244:                                              ; preds = %238
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = icmp eq i32 %246, %248
  br label %250

250:                                              ; preds = %244, %238, %232, %202
  %251 = phi i1 [ false, %238 ], [ false, %232 ], [ false, %202 ], [ %249, %244 ]
  %252 = zext i1 %251 to i32
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = call i32 (i32, i8*, ...) @ok(i32 %252, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.5, i64 0, i64 0), i32 %254, i32 %256, i32 %258, i32 %260, i32 %262, i32 %264, i32 %266, i32 %268)
  %270 = load i32*, i32** %2, align 8
  %271 = call i32 @GdipDeleteGraphics(i32* %270)
  %272 = load i32*, i32** %3, align 8
  %273 = call i32 @ReleaseDC(i32 0, i32* %272)
  ret void
}

declare dso_local i32* @GetDC(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GdipCreateFromHDC(i32*, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i8* @GetDeviceCaps(i32*, i32) #1

declare dso_local i32 @GdipGetVisibleClipBounds(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @GdipSetClipRect(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GdipGetVisibleClipBoundsI(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @GdipDeleteGraphics(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
