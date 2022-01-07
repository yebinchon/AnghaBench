; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_CreateDIBitmap.c_Test_CreateDIBitmap_CBM_CREATDIB.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_CreateDIBitmap.c_Test_CreateDIBitmap_CBM_CREATDIB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { %struct.TYPE_19__, [4 x i32] }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_19__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32, i32 }

@__const.Test_CreateDIBitmap_CBM_CREATDIB.ajBits = private unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@__const.Test_CreateDIBitmap_CBM_CREATDIB.bmiRLE = private unnamed_addr constant %struct.anon { %struct.TYPE_19__ { i32 8, i32 8 }, [4 x i32] [i32 0, i32 1, i32 2, i32 7] }, align 4
@__const.Test_CreateDIBitmap_CBM_CREATDIB.ajBitsRLE = private unnamed_addr constant [20 x i32] [i32 4, i32 0, i32 0, i32 2, i32 0, i32 1, i32 0, i32 2, i32 3, i32 1, i32 2, i32 1, i32 2, i32 2, i32 1, i32 3, i32 1, i32 0, i32 1, i32 2], align 16
@.str = private unnamed_addr constant [44 x i8] c"CreateCompatibleDC failed. Skipping tests!\0A\00", align 1
@CBM_CREATDIB = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"CreateDIBitmap should fail.\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"CreateDIBitmap failed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Couldn't select the bitmap.\0A\00", align 1
@gpDIB32 = common dso_local global i32*** null, align 8
@ghdcDIB32 = common dso_local global i32 0, align 4
@SRCCOPY = common dso_local global i32 0, align 4
@CBM_INIT = common dso_local global i32 0, align 4
@DIB_PAL_COLORS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"CreateDIBitmap didn't return the default bitmap.\0A\00", align 1
@BI_RGB = common dso_local global i32 0, align 4
@BI_RLE8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_CreateDIBitmap_CBM_CREATDIB() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_18__, align 4
  %5 = alloca [10 x i32], align 16
  %6 = alloca %struct.TYPE_20__, align 4
  %7 = alloca %struct.anon, align 4
  %8 = alloca [20 x i32], align 16
  %9 = bitcast %struct.TYPE_18__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 68, i1 false)
  %10 = bitcast i8* %9 to %struct.TYPE_18__*
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store i32 8, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  store i32 4, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  store i32 1, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  store i32 2, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 3
  store i32 3, i32* %18, align 4
  %19 = bitcast [10 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 bitcast ([10 x i32]* @__const.Test_CreateDIBitmap_CBM_CREATDIB.ajBits to i8*), i64 40, i1 false)
  %20 = bitcast %struct.anon* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.anon* @__const.Test_CreateDIBitmap_CBM_CREATDIB.bmiRLE to i8*), i64 24, i1 false)
  %21 = bitcast [20 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([20 x i32]* @__const.Test_CreateDIBitmap_CBM_CREATDIB.ajBitsRLE to i8*), i64 80, i1 false)
  %22 = call i32* @CreateCompatibleDC(i32 0)
  store i32* %22, i32** %3, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %0
  %26 = call i32 @ok(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %292

27:                                               ; preds = %0
  %28 = call i32 @SetLastError(i32 -1160008448)
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @CBM_CREATDIB, align 4
  %31 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %32 = load i32, i32* @DIB_RGB_COLORS, align 4
  %33 = call i32* @CreateDIBitmap(i32* %29, %struct.TYPE_19__* null, i32 %30, i32* %31, %struct.TYPE_18__* null, i32 %32)
  store i32* %33, i32** %1, align 8
  %34 = load i32*, i32** %1, align 8
  %35 = icmp eq i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 (...) @GetLastError()
  %39 = call i32 @ok_int(i32 %38, i32 -1160008448)
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* @CBM_CREATDIB, align 4
  %42 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %43 = load i32, i32* @DIB_RGB_COLORS, align 4
  %44 = call i32* @CreateDIBitmap(i32* %40, %struct.TYPE_19__* null, i32 %41, i32* %42, %struct.TYPE_18__* %4, i32 %43)
  store i32* %44, i32** %1, align 8
  %45 = load i32*, i32** %1, align 8
  %46 = icmp ne i32* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32*, i32** %1, align 8
  %50 = call i32 @GetObject(i32* %49, i32 4, %struct.TYPE_20__* %6)
  %51 = call i32 @ok_long(i32 %50, i32 28)
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ok_int(i32 %53, i32 0)
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ok_int(i32 %56, i32 4)
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ok_int(i32 %59, i32 4)
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ok_int(i32 %62, i32 4)
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ok_int(i32 %65, i32 1)
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ok_int(i32 %68, i32 8)
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ok_ptr(i32 %71, i32 0)
  %73 = load i32*, i32** %3, align 8
  %74 = load i32*, i32** %1, align 8
  %75 = call i32* @SelectObject(i32* %73, i32* %74)
  store i32* %75, i32** %2, align 8
  %76 = load i32*, i32** %2, align 8
  %77 = icmp ne i32* %76, null
  %78 = zext i1 %77 to i32
  %79 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32***, i32**** @gpDIB32, align 8
  %81 = call i32 @memset(i32*** %80, i32 119, i32 8)
  %82 = load i32, i32* @ghdcDIB32, align 4
  %83 = load i32*, i32** %3, align 8
  %84 = load i32, i32* @SRCCOPY, align 4
  %85 = call i32 @BitBlt(i32 %82, i32 0, i32 0, i32 4, i32 4, i32* %83, i32 0, i32 0, i32 %84)
  %86 = call i32 @ok_long(i32 %85, i32 1)
  %87 = load i32***, i32**** @gpDIB32, align 8
  %88 = load i32**, i32*** %87, align 8
  %89 = getelementptr inbounds i32*, i32** %88, i64 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ok_long(i32 %92, i32 131328)
  %94 = load i32***, i32**** @gpDIB32, align 8
  %95 = load i32**, i32*** %94, align 8
  %96 = getelementptr inbounds i32*, i32** %95, i64 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ok_long(i32 %99, i32 131328)
  %101 = load i32***, i32**** @gpDIB32, align 8
  %102 = load i32**, i32*** %101, align 8
  %103 = getelementptr inbounds i32*, i32** %102, i64 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ok_long(i32 %106, i32 131328)
  %108 = load i32***, i32**** @gpDIB32, align 8
  %109 = load i32**, i32*** %108, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ok_long(i32 %113, i32 131328)
  %115 = load i32*, i32** %3, align 8
  %116 = load i32*, i32** %2, align 8
  %117 = call i32* @SelectObject(i32* %115, i32* %116)
  %118 = load i32*, i32** %1, align 8
  %119 = call i32 @DeleteObject(i32* %118)
  %120 = load i32*, i32** %3, align 8
  %121 = load i32, i32* @CBM_CREATDIB, align 4
  %122 = load i32, i32* @CBM_INIT, align 4
  %123 = or i32 %121, %122
  %124 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %125 = load i32, i32* @DIB_PAL_COLORS, align 4
  %126 = call i32* @CreateDIBitmap(i32* %120, %struct.TYPE_19__* null, i32 %123, i32* %124, %struct.TYPE_18__* %4, i32 %125)
  store i32* %126, i32** %1, align 8
  %127 = load i32*, i32** %1, align 8
  %128 = icmp ne i32* %127, null
  %129 = zext i1 %128 to i32
  %130 = call i32 @ok(i32 %129, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %131 = load i32*, i32** %1, align 8
  %132 = call i32 @GetObject(i32* %131, i32 4, %struct.TYPE_20__* %6)
  %133 = call i32 @ok_long(i32 %132, i32 28)
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 6
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @ok_int(i32 %135, i32 0)
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ok_int(i32 %138, i32 4)
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @ok_int(i32 %141, i32 4)
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @ok_int(i32 %144, i32 4)
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @ok_int(i32 %147, i32 1)
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @ok_int(i32 %150, i32 8)
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @ok_ptr(i32 %153, i32 0)
  %155 = load i32*, i32** %3, align 8
  %156 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  %157 = load i32, i32* @CBM_CREATDIB, align 4
  %158 = load i32, i32* @CBM_INIT, align 4
  %159 = or i32 %157, %158
  %160 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %161 = load i32, i32* @DIB_PAL_COLORS, align 4
  %162 = call i32* @CreateDIBitmap(i32* %155, %struct.TYPE_19__* %156, i32 %159, i32* %160, %struct.TYPE_18__* %4, i32 %161)
  store i32* %162, i32** %1, align 8
  %163 = load i32*, i32** %1, align 8
  %164 = icmp ne i32* %163, null
  %165 = zext i1 %164 to i32
  %166 = call i32 @ok(i32 %165, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %167 = load i32*, i32** %1, align 8
  %168 = call i32 @GetObject(i32* %167, i32 4, %struct.TYPE_20__* %6)
  %169 = call i32 @ok_long(i32 %168, i32 28)
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 6
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @ok_int(i32 %171, i32 0)
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @ok_int(i32 %174, i32 4)
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @ok_int(i32 %177, i32 4)
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @ok_int(i32 %180, i32 4)
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @ok_int(i32 %183, i32 1)
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @ok_int(i32 %186, i32 8)
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @ok_ptr(i32 %189, i32 0)
  %191 = load i32*, i32** %3, align 8
  %192 = load i32*, i32** %1, align 8
  %193 = call i32* @SelectObject(i32* %191, i32* %192)
  store i32* %193, i32** %2, align 8
  %194 = load i32*, i32** %2, align 8
  %195 = icmp ne i32* %194, null
  %196 = zext i1 %195 to i32
  %197 = call i32 @ok(i32 %196, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %198 = load i32***, i32**** @gpDIB32, align 8
  %199 = call i32 @memset(i32*** %198, i32 119, i32 8)
  %200 = load i32, i32* @ghdcDIB32, align 4
  %201 = load i32*, i32** %3, align 8
  %202 = load i32, i32* @SRCCOPY, align 4
  %203 = call i32 @BitBlt(i32 %200, i32 0, i32 0, i32 4, i32 4, i32* %201, i32 0, i32 0, i32 %202)
  %204 = call i32 @ok_long(i32 %203, i32 1)
  %205 = load i32***, i32**** @gpDIB32, align 8
  %206 = load i32**, i32*** %205, align 8
  %207 = getelementptr inbounds i32*, i32** %206, i64 0
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @ok_long(i32 %210, i32 0)
  %212 = load i32***, i32**** @gpDIB32, align 8
  %213 = load i32**, i32*** %212, align 8
  %214 = getelementptr inbounds i32*, i32** %213, i64 0
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 1
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @ok_long(i32 %217, i32 0)
  %219 = load i32***, i32**** @gpDIB32, align 8
  %220 = load i32**, i32*** %219, align 8
  %221 = getelementptr inbounds i32*, i32** %220, i64 0
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 2
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @ok_long(i32 %224, i32 0)
  %226 = load i32***, i32**** @gpDIB32, align 8
  %227 = load i32**, i32*** %226, align 8
  %228 = getelementptr inbounds i32*, i32** %227, i64 0
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 3
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @ok_long(i32 %231, i32 0)
  %233 = load i32*, i32** %3, align 8
  %234 = load i32*, i32** %2, align 8
  %235 = call i32* @SelectObject(i32* %233, i32* %234)
  %236 = load i32*, i32** %1, align 8
  %237 = call i32 @DeleteObject(i32* %236)
  %238 = load i32*, i32** %3, align 8
  %239 = load i32, i32* @CBM_CREATDIB, align 4
  %240 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %241 = bitcast %struct.anon* %7 to %struct.TYPE_18__*
  %242 = load i32, i32* @DIB_PAL_COLORS, align 4
  %243 = call i32* @CreateDIBitmap(i32* %238, %struct.TYPE_19__* null, i32 %239, i32* %240, %struct.TYPE_18__* %241, i32 %242)
  store i32* %243, i32** %1, align 8
  %244 = load i32*, i32** %1, align 8
  %245 = icmp eq i32* %244, null
  %246 = zext i1 %245 to i32
  %247 = call i32 @ok(i32 %246, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %248 = load i32*, i32** %3, align 8
  %249 = load i32, i32* @CBM_INIT, align 4
  %250 = load i32, i32* @CBM_CREATDIB, align 4
  %251 = or i32 %249, %250
  %252 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %253 = bitcast %struct.anon* %7 to %struct.TYPE_18__*
  %254 = load i32, i32* @DIB_PAL_COLORS, align 4
  %255 = call i32* @CreateDIBitmap(i32* %248, %struct.TYPE_19__* null, i32 %251, i32* %252, %struct.TYPE_18__* %253, i32 %254)
  store i32* %255, i32** %1, align 8
  %256 = load i32*, i32** %1, align 8
  %257 = icmp eq i32* %256, null
  %258 = zext i1 %257 to i32
  %259 = call i32 @ok(i32 %258, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %260, i32 0, i32 0
  store i32 0, i32* %261, align 4
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 1
  store i32 4, i32* %263, align 4
  %264 = load i32*, i32** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  %266 = load i32, i32* @CBM_CREATDIB, align 4
  %267 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %268 = load i32, i32* @DIB_PAL_COLORS, align 4
  %269 = call i32* @CreateDIBitmap(i32* %264, %struct.TYPE_19__* %265, i32 %266, i32* %267, %struct.TYPE_18__* %4, i32 %268)
  store i32* %269, i32** %1, align 8
  %270 = load i32*, i32** %1, align 8
  %271 = call i32* @GetStockObject(i32 21)
  %272 = icmp eq i32* %270, %271
  %273 = zext i1 %272 to i32
  %274 = call i32 @ok(i32 %273, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %275, i32 0, i32 0
  store i32 23, i32* %276, align 4
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %277, i32 0, i32 1
  store i32 0, i32* %278, align 4
  %279 = load i32*, i32** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  %281 = load i32, i32* @CBM_CREATDIB, align 4
  %282 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %283 = load i32, i32* @DIB_PAL_COLORS, align 4
  %284 = call i32* @CreateDIBitmap(i32* %279, %struct.TYPE_19__* %280, i32 %281, i32* %282, %struct.TYPE_18__* %4, i32 %283)
  store i32* %284, i32** %1, align 8
  %285 = load i32*, i32** %1, align 8
  %286 = call i32* @GetStockObject(i32 21)
  %287 = icmp eq i32* %285, %286
  %288 = zext i1 %287 to i32
  %289 = call i32 @ok(i32 %288, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %290 = load i32*, i32** %3, align 8
  %291 = call i32 @DeleteDC(i32* %290)
  br label %292

292:                                              ; preds = %27, %25
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @CreateCompatibleDC(i32) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32* @CreateDIBitmap(i32*, %struct.TYPE_19__*, i32, i32*, %struct.TYPE_18__*, i32) #2

declare dso_local i32 @ok_int(i32, i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @ok_long(i32, i32) #2

declare dso_local i32 @GetObject(i32*, i32, %struct.TYPE_20__*) #2

declare dso_local i32 @ok_ptr(i32, i32) #2

declare dso_local i32* @SelectObject(i32*, i32*) #2

declare dso_local i32 @memset(i32***, i32, i32) #2

declare dso_local i32 @BitBlt(i32, i32, i32, i32, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @DeleteObject(i32*) #2

declare dso_local i32* @GetStockObject(i32) #2

declare dso_local i32 @DeleteDC(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
