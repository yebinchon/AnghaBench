; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_bitmap.c_test_select_object.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_bitmap.c_test_select_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }

@__const.test_select_object.depths = private unnamed_addr constant [5 x i32] [i32 8, i32 15, i32 16, i32 24, i32 32], align 16
@.str = private unnamed_addr constant [17 x i8] c"GetDC(0) failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"CreateCompatibleBitmap failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"SelectObject should fail\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"SelectObject failed\0A\00", align 1
@PLANES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"CreateBitmap failed\0A\00", align 1
@BITSPIXEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [55 x i8] c"SelectObject failed, BITSPIXEL: %d, created depth: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"SelectObject should fail. BITSPIXELS: %d, created depth: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"GetObject returned %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"wrong bmType %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"wrong bmWidth %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"wrong bmHeight %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"wrong bmWidthBytes %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"wrong bmPlanes %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"wrong bmBitsPixel %d(15 bpp special)\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"wrong bmBitsPixel %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"wrong bmBits %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_select_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_select_object() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [5 x i32], align 16
  %8 = alloca %struct.TYPE_4__, align 4
  %9 = alloca i32, align 4
  %10 = bitcast [5 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([5 x i32]* @__const.test_select_object.depths to i8*), i64 20, i1 false)
  %11 = call i64 @GetDC(i32 0)
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* %1, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %16 = load i64, i64* %1, align 8
  %17 = call i64 @CreateCompatibleBitmap(i64 %16, i32 10, i32 10)
  store i64 %17, i64* %2, align 8
  %18 = load i64, i64* %2, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i64, i64* %1, align 8
  %23 = load i64, i64* %2, align 8
  %24 = call i64 @SelectObject(i64 %22, i64 %23)
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i64, i64* %2, align 8
  %30 = call i32 @DeleteObject(i64 %29)
  %31 = load i64, i64* %1, align 8
  %32 = call i32 @ReleaseDC(i32 0, i64 %31)
  %33 = call i64 @CreateCompatibleDC(i32 0)
  store i64 %33, i64* %1, align 8
  %34 = load i64, i64* %1, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %38 = load i64, i64* %1, align 8
  %39 = call i64 @CreateCompatibleBitmap(i64 %38, i32 10, i32 10)
  store i64 %39, i64* %2, align 8
  %40 = load i64, i64* %2, align 8
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i64, i64* %1, align 8
  %45 = load i64, i64* %2, align 8
  %46 = call i64 @SelectObject(i64 %44, i64 %45)
  store i64 %46, i64* %3, align 8
  %47 = load i64, i64* %3, align 8
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i64, i64* %1, align 8
  %52 = load i64, i64* %3, align 8
  %53 = call i64 @SelectObject(i64 %51, i64 %52)
  store i64 %53, i64* %3, align 8
  %54 = load i64, i64* %3, align 8
  %55 = load i64, i64* %2, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i64, i64* %2, align 8
  %60 = call i32 @DeleteObject(i64 %59)
  %61 = load i64, i64* %1, align 8
  %62 = load i32, i32* @PLANES, align 4
  %63 = call i32 @GetDeviceCaps(i64 %61, i32 %62)
  store i32 %63, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i64 @CreateBitmap(i32 10, i32 10, i32 %64, i32 %65, i32* null)
  store i64 %66, i64* %2, align 8
  %67 = load i64, i64* %2, align 8
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %71 = load i64, i64* %1, align 8
  %72 = load i64, i64* %2, align 8
  %73 = call i64 @SelectObject(i64 %71, i64 %72)
  store i64 %73, i64* %3, align 8
  %74 = load i64, i64* %3, align 8
  %75 = icmp ne i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i64, i64* %1, align 8
  %79 = load i64, i64* %3, align 8
  %80 = call i64 @SelectObject(i64 %78, i64 %79)
  store i64 %80, i64* %3, align 8
  %81 = load i64, i64* %3, align 8
  %82 = load i64, i64* %2, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %86 = load i64, i64* %2, align 8
  %87 = call i32 @DeleteObject(i64 %86)
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %237, %0
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp ult i64 %90, 5
  br i1 %91, label %92, label %240

92:                                               ; preds = %88
  %93 = load i64, i64* %1, align 8
  %94 = load i32, i32* @PLANES, align 4
  %95 = call i32 @GetDeviceCaps(i64 %93, i32 %94)
  store i32 %95, i32* %4, align 4
  %96 = load i64, i64* %1, align 8
  %97 = load i32, i32* @BITSPIXEL, align 4
  %98 = call i32 @GetDeviceCaps(i64 %96, i32 %97)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @CreateBitmap(i32 10, i32 10, i32 %99, i32 %103, i32* null)
  store i64 %104, i64* %2, align 8
  %105 = load i64, i64* %2, align 8
  %106 = icmp ne i64 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %109 = load i64, i64* %1, align 8
  %110 = load i64, i64* %2, align 8
  %111 = call i64 @SelectObject(i64 %109, i64 %110)
  store i64 %111, i64* %3, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %127, label %118

118:                                              ; preds = %92
  %119 = load i32, i32* %5, align 4
  %120 = icmp eq i32 %119, 16
  br i1 %120, label %121, label %140

121:                                              ; preds = %118
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 15
  br i1 %126, label %127, label %140

127:                                              ; preds = %121, %92
  %128 = load i64, i64* %3, align 8
  %129 = icmp ne i64 %128, 0
  %130 = zext i1 %129 to i32
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %131, i32 %135)
  %137 = load i64, i64* %1, align 8
  %138 = load i64, i64* %3, align 8
  %139 = call i64 @SelectObject(i64 %137, i64 %138)
  br label %150

140:                                              ; preds = %121, %118
  %141 = load i64, i64* %3, align 8
  %142 = icmp eq i64 %141, 0
  %143 = zext i1 %142 to i32
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i32 %144, i32 %148)
  br label %150

150:                                              ; preds = %140, %127
  %151 = call i32 @memset(%struct.TYPE_4__* %8, i32 170, i32 28)
  %152 = load i64, i64* %2, align 8
  %153 = call i32 @GetObjectW(i64 %152, i32 28, %struct.TYPE_4__* %8)
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = icmp eq i64 %155, 28
  %157 = zext i1 %156 to i32
  %158 = load i32, i32* %9, align 4
  %159 = call i32 (i32, i8*, ...) @ok(i32 %157, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %158)
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, 0
  %163 = zext i1 %162 to i32
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %165)
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %168, 10
  %170 = zext i1 %169 to i32
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 (i32, i8*, ...) @ok(i32 %170, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %172)
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 10
  %177 = zext i1 %176 to i32
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = call i32 (i32, i8*, ...) @ok(i32 %177, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %179)
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @get_bitmap_stride(i32 %184, i32 %186)
  %188 = icmp eq i32 %182, %187
  %189 = zext i1 %188 to i32
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = call i32 (i32, i8*, ...) @ok(i32 %189, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %191)
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %4, align 4
  %196 = icmp eq i32 %194, %195
  %197 = zext i1 %196 to i32
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = call i32 (i32, i8*, ...) @ok(i32 %197, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %199)
  %201 = load i32, i32* %6, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = icmp eq i32 %204, 15
  br i1 %205, label %206, label %214

206:                                              ; preds = %150
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %208 = load i32, i32* %207, align 4
  %209 = icmp eq i32 %208, 16
  %210 = zext i1 %209 to i32
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %212 = load i32, i32* %211, align 4
  %213 = call i32 (i32, i8*, ...) @ok(i32 %210, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i32 %212)
  br label %226

214:                                              ; preds = %150
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %6, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = icmp eq i32 %216, %220
  %222 = zext i1 %221 to i32
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = call i32 (i32, i8*, ...) @ok(i32 %222, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 %224)
  br label %226

226:                                              ; preds = %214, %206
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 6
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  %230 = xor i1 %229, true
  %231 = zext i1 %230 to i32
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 6
  %233 = load i32, i32* %232, align 4
  %234 = call i32 (i32, i8*, ...) @ok(i32 %231, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 %233)
  %235 = load i64, i64* %2, align 8
  %236 = call i32 @DeleteObject(i64 %235)
  br label %237

237:                                              ; preds = %226
  %238 = load i32, i32* %6, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %6, align 4
  br label %88

240:                                              ; preds = %88
  %241 = load i64, i64* %1, align 8
  %242 = call i32 @DeleteDC(i64 %241)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @GetDC(i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @CreateCompatibleBitmap(i64, i32, i32) #2

declare dso_local i64 @SelectObject(i64, i64) #2

declare dso_local i32 @DeleteObject(i64) #2

declare dso_local i32 @ReleaseDC(i32, i64) #2

declare dso_local i64 @CreateCompatibleDC(i32) #2

declare dso_local i32 @GetDeviceCaps(i64, i32) #2

declare dso_local i64 @CreateBitmap(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #2

declare dso_local i32 @GetObjectW(i64, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @get_bitmap_stride(i32, i32) #2

declare dso_local i32 @DeleteDC(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
