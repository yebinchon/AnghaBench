; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/misc/extr_misc.c_UXTHEME_DrawImageBackground.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/misc/extr_misc.c_UXTHEME_DrawImageBackground.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i64, i64, i64, i64 }
%struct.TYPE_9__ = type { i64, i64 }

@S_OK = common dso_local global i32 0, align 4
@ST_TRUESIZE = common dso_local global i32 0, align 4
@ST_STRETCH = common dso_local global i32 0, align 4
@ST_TILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_8__*, i32, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_8__*)* @UXTHEME_DrawImageBackground to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UXTHEME_DrawImageBackground(i32* %0, i32* %1, %struct.TYPE_8__* %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.TYPE_10__* %7, %struct.TYPE_8__* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca %struct.TYPE_8__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_8__, align 8
  %26 = alloca %struct.TYPE_9__, align 8
  %27 = alloca %struct.TYPE_9__, align 8
  %28 = alloca %struct.TYPE_8__, align 8
  %29 = alloca %struct.TYPE_10__, align 8
  %30 = alloca i32*, align 8
  %31 = alloca %struct.TYPE_9__, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %18, align 8
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %19, align 8
  %36 = load i32, i32* @S_OK, align 4
  store i32 %36, i32* %20, align 4
  store i32* null, i32** %21, align 8
  store i32* null, i32** %24, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %38 = bitcast %struct.TYPE_8__* %25 to i8*
  %39 = bitcast %struct.TYPE_8__* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 32, i1 false)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %41 = bitcast %struct.TYPE_8__* %28 to i8*
  %42 = bitcast %struct.TYPE_8__* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 32, i1 false)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %44 = bitcast %struct.TYPE_10__* %29 to i8*
  %45 = bitcast %struct.TYPE_10__* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 32, i1 false)
  %46 = load i32*, i32** %11, align 8
  %47 = call i32* @CreateCompatibleDC(i32* %46)
  store i32* %47, i32** %23, align 8
  %48 = load i32*, i32** %23, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %9
  %51 = call i32 (...) @GetLastError()
  %52 = call i32 @HRESULT_FROM_WIN32(i32 %51)
  store i32 %52, i32* %20, align 4
  %53 = load i32, i32* %20, align 4
  store i32 %53, i32* %10, align 4
  br label %615

54:                                               ; preds = %9
  %55 = load i32*, i32** %23, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = call i32* @SelectObject(i32* %55, i32* %56)
  store i32* %57, i32** %22, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %59, %61
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i64 %62, i64* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %65, %67
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  store i64 %68, i64* %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %71, %73
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i64 %74, i64* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %77, %79
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  store i64 %80, i64* %81, align 8
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* @ST_TRUESIZE, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %112

85:                                               ; preds = %54
  %86 = load i32*, i32** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i32*, i32** %23, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @UXTHEME_StretchBlt(i32* %86, i64 %88, i64 %90, i64 %92, i64 %94, i32* %95, i64 %97, i64 %99, i64 %101, i64 %103, i32 %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %85
  %109 = call i32 (...) @GetLastError()
  %110 = call i32 @HRESULT_FROM_WIN32(i32 %109)
  store i32 %110, i32* %20, align 4
  br label %111

111:                                              ; preds = %108, %85
  br label %593

112:                                              ; preds = %54
  store i32* null, i32** %30, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i8* @abs(i64 %114)
  %116 = ptrtoint i8* %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i64 %116, i64* %117, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i8* @abs(i64 %119)
  %121 = ptrtoint i8* %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  store i64 %121, i64* %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %124, %126
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp sgt i64 %127, %129
  br i1 %130, label %140, label %131

131:                                              ; preds = %112
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %133, %135
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp sgt i64 %136, %138
  br i1 %139, label %140, label %238

140:                                              ; preds = %131, %112
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %142, %144
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp sgt i64 %145, %147
  br i1 %148, label %149, label %168

149:                                              ; preds = %140
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = call i8* @MulDiv(i64 %151, i64 %153, i64 %155)
  %157 = ptrtoint i8* %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  store i64 %157, i64* %158, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = sub nsw i64 %160, %162
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  store i64 %163, i64* %164, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  store i64 %166, i64* %167, align 8
  br label %168

168:                                              ; preds = %149, %140
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %170, %172
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp sgt i64 %173, %175
  br i1 %176, label %177, label %196

177:                                              ; preds = %168
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = call i8* @MulDiv(i64 %179, i64 %181, i64 %183)
  %185 = ptrtoint i8* %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  store i64 %185, i64* %186, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = sub nsw i64 %188, %190
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  store i64 %191, i64* %192, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i64 %194, i64* %195, align 8
  br label %196

196:                                              ; preds = %177, %168
  %197 = load i32*, i32** %23, align 8
  store i32* %197, i32** %24, align 8
  %198 = call i32* @CreateCompatibleDC(i32* null)
  store i32* %198, i32** %23, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = call i32* @CreateBitmap(i64 %200, i64 %202, i32 1, i32 32, i32* null)
  store i32* %203, i32** %21, align 8
  %204 = load i32*, i32** %23, align 8
  %205 = load i32*, i32** %21, align 8
  %206 = call i32* @SelectObject(i32* %204, i32* %205)
  %207 = load i32*, i32** %23, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load i32*, i32** %24, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = sub nsw i64 %218, %220
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = sub nsw i64 %223, %225
  %227 = load i32, i32* %14, align 4
  %228 = load i32, i32* %15, align 4
  %229 = call i32 @UXTHEME_StretchBlt(i32* %207, i64 0, i64 0, i64 %209, i64 %211, i32* %212, i64 %214, i64 %216, i64 %221, i64 %226, i32 %227, i32 %228)
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  store i64 0, i64* %230, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  store i64 0, i64* %231, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i64 %233, i64* %234, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  store i64 %236, i64* %237, align 8
  br label %238

238:                                              ; preds = %196, %131
  %239 = load i32*, i32** %11, align 8
  store i32* %239, i32** %30, align 8
  %240 = load i32*, i32** %30, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = call i32 @OffsetViewportOrgEx(i32* %240, i64 %242, i64 %244, %struct.TYPE_9__* %31)
  %246 = load i32*, i32** %30, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i32*, i32** %23, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = load i32, i32* %14, align 4
  %257 = load i32, i32* %15, align 4
  %258 = call i32 @UXTHEME_Blt(i32* %246, i64 0, i64 0, i64 %248, i64 %250, i32* %251, i64 %253, i64 %255, i32 %256, i32 %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %263, label %260

260:                                              ; preds = %238
  %261 = call i32 (...) @GetLastError()
  %262 = call i32 @HRESULT_FROM_WIN32(i32 %261)
  store i32 %262, i32* %20, align 4
  br label %584

263:                                              ; preds = %238
  %264 = load i32*, i32** %30, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %268 = load i64, i64* %267, align 8
  %269 = sub nsw i64 %266, %268
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load i32*, i32** %23, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %278 = load i64, i64* %277, align 8
  %279 = sub nsw i64 %276, %278
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %281 = load i64, i64* %280, align 8
  %282 = load i32, i32* %14, align 4
  %283 = load i32, i32* %15, align 4
  %284 = call i32 @UXTHEME_Blt(i32* %264, i64 %269, i64 0, i64 %271, i64 %273, i32* %274, i64 %279, i64 %281, i32 %282, i32 %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %289, label %286

286:                                              ; preds = %263
  %287 = call i32 (...) @GetLastError()
  %288 = call i32 @HRESULT_FROM_WIN32(i32 %287)
  store i32 %288, i32* %20, align 4
  br label %584

289:                                              ; preds = %263
  %290 = load i32*, i32** %30, align 8
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = sub nsw i64 %292, %294
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %297 = load i64, i64* %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = load i32*, i32** %23, align 8
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %304 = load i64, i64* %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = sub nsw i64 %304, %306
  %308 = load i32, i32* %14, align 4
  %309 = load i32, i32* %15, align 4
  %310 = call i32 @UXTHEME_Blt(i32* %290, i64 0, i64 %295, i64 %297, i64 %299, i32* %300, i64 %302, i64 %307, i32 %308, i32 %309)
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %315, label %312

312:                                              ; preds = %289
  %313 = call i32 (...) @GetLastError()
  %314 = call i32 @HRESULT_FROM_WIN32(i32 %313)
  store i32 %314, i32* %20, align 4
  br label %584

315:                                              ; preds = %289
  %316 = load i32*, i32** %30, align 8
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %320 = load i64, i64* %319, align 8
  %321 = sub nsw i64 %318, %320
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = sub nsw i64 %323, %325
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %328 = load i64, i64* %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = load i32*, i32** %23, align 8
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %335 = load i64, i64* %334, align 8
  %336 = sub nsw i64 %333, %335
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %338 = load i64, i64* %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %340 = load i64, i64* %339, align 8
  %341 = sub nsw i64 %338, %340
  %342 = load i32, i32* %14, align 4
  %343 = load i32, i32* %15, align 4
  %344 = call i32 @UXTHEME_Blt(i32* %316, i64 %321, i64 %326, i64 %328, i64 %330, i32* %331, i64 %336, i64 %341, i32 %342, i32 %343)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %349, label %346

346:                                              ; preds = %315
  %347 = call i32 (...) @GetLastError()
  %348 = call i32 @HRESULT_FROM_WIN32(i32 %347)
  store i32 %348, i32* %20, align 4
  br label %584

349:                                              ; preds = %315
  %350 = load i32, i32* %17, align 4
  %351 = load i32, i32* @ST_STRETCH, align 4
  %352 = icmp eq i32 %350, %351
  br i1 %352, label %357, label %353

353:                                              ; preds = %349
  %354 = load i32, i32* %17, align 4
  %355 = load i32, i32* @ST_TILE, align 4
  %356 = icmp eq i32 %354, %355
  br i1 %356, label %357, label %583

357:                                              ; preds = %353, %349
  %358 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %361 = load i64, i64* %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %363 = load i64, i64* %362, align 8
  %364 = add nsw i64 %361, %363
  %365 = sub nsw i64 %359, %364
  %366 = trunc i64 %365 to i32
  store i32 %366, i32* %32, align 4
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %370 = load i64, i64* %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %372 = load i64, i64* %371, align 8
  %373 = add nsw i64 %370, %372
  %374 = sub nsw i64 %368, %373
  %375 = trunc i64 %374 to i32
  store i32 %375, i32* %33, align 4
  %376 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %377 = load i64, i64* %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %381 = load i64, i64* %380, align 8
  %382 = add nsw i64 %379, %381
  %383 = sub nsw i64 %377, %382
  %384 = trunc i64 %383 to i32
  store i32 %384, i32* %34, align 4
  %385 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %386 = load i64, i64* %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %388 = load i64, i64* %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %390 = load i64, i64* %389, align 8
  %391 = add nsw i64 %388, %390
  %392 = sub nsw i64 %386, %391
  %393 = trunc i64 %392 to i32
  store i32 %393, i32* %35, align 4
  %394 = load i32, i32* %32, align 4
  %395 = icmp sgt i32 %394, 0
  br i1 %395, label %396, label %466

396:                                              ; preds = %357
  %397 = load i32*, i32** %30, align 8
  %398 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %399 = load i64, i64* %398, align 8
  %400 = trunc i64 %399 to i32
  %401 = load i32, i32* %32, align 4
  %402 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %403 = load i64, i64* %402, align 8
  %404 = trunc i64 %403 to i32
  %405 = load i32*, i32** %23, align 8
  %406 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %407 = load i64, i64* %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %409 = load i64, i64* %408, align 8
  %410 = add nsw i64 %407, %409
  %411 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %412 = load i64, i64* %411, align 8
  %413 = trunc i64 %412 to i32
  %414 = load i32, i32* %33, align 4
  %415 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %416 = load i64, i64* %415, align 8
  %417 = trunc i64 %416 to i32
  %418 = load i32, i32* %17, align 4
  %419 = load i32, i32* %14, align 4
  %420 = load i32, i32* %15, align 4
  %421 = call i32 @UXTHEME_SizedBlt(i32* %397, i32 %400, i32 0, i32 %401, i32 %404, i32* %405, i64 %410, i32 %413, i32 %414, i32 %417, i32 %418, i32 %419, i32 %420)
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %426, label %423

423:                                              ; preds = %396
  %424 = call i32 (...) @GetLastError()
  %425 = call i32 @HRESULT_FROM_WIN32(i32 %424)
  store i32 %425, i32* %20, align 4
  br label %584

426:                                              ; preds = %396
  %427 = load i32*, i32** %30, align 8
  %428 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %429 = load i64, i64* %428, align 8
  %430 = trunc i64 %429 to i32
  %431 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %432 = load i64, i64* %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %434 = load i64, i64* %433, align 8
  %435 = sub nsw i64 %432, %434
  %436 = trunc i64 %435 to i32
  %437 = load i32, i32* %32, align 4
  %438 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %439 = load i64, i64* %438, align 8
  %440 = trunc i64 %439 to i32
  %441 = load i32*, i32** %23, align 8
  %442 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %443 = load i64, i64* %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %445 = load i64, i64* %444, align 8
  %446 = add nsw i64 %443, %445
  %447 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %448 = load i64, i64* %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %450 = load i64, i64* %449, align 8
  %451 = sub nsw i64 %448, %450
  %452 = trunc i64 %451 to i32
  %453 = load i32, i32* %33, align 4
  %454 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %455 = load i64, i64* %454, align 8
  %456 = trunc i64 %455 to i32
  %457 = load i32, i32* %17, align 4
  %458 = load i32, i32* %14, align 4
  %459 = load i32, i32* %15, align 4
  %460 = call i32 @UXTHEME_SizedBlt(i32* %427, i32 %430, i32 %436, i32 %437, i32 %440, i32* %441, i64 %446, i32 %452, i32 %453, i32 %456, i32 %457, i32 %458, i32 %459)
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %465, label %462

462:                                              ; preds = %426
  %463 = call i32 (...) @GetLastError()
  %464 = call i32 @HRESULT_FROM_WIN32(i32 %463)
  store i32 %464, i32* %20, align 4
  br label %584

465:                                              ; preds = %426
  br label %466

466:                                              ; preds = %465, %357
  %467 = load i32, i32* %34, align 4
  %468 = icmp sgt i32 %467, 0
  br i1 %468, label %469, label %539

469:                                              ; preds = %466
  %470 = load i32*, i32** %30, align 8
  %471 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %472 = load i64, i64* %471, align 8
  %473 = trunc i64 %472 to i32
  %474 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %475 = load i64, i64* %474, align 8
  %476 = trunc i64 %475 to i32
  %477 = load i32, i32* %34, align 4
  %478 = load i32*, i32** %23, align 8
  %479 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %480 = load i64, i64* %479, align 8
  %481 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %482 = load i64, i64* %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %484 = load i64, i64* %483, align 8
  %485 = add nsw i64 %482, %484
  %486 = trunc i64 %485 to i32
  %487 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %488 = load i64, i64* %487, align 8
  %489 = trunc i64 %488 to i32
  %490 = load i32, i32* %35, align 4
  %491 = load i32, i32* %17, align 4
  %492 = load i32, i32* %14, align 4
  %493 = load i32, i32* %15, align 4
  %494 = call i32 @UXTHEME_SizedBlt(i32* %470, i32 0, i32 %473, i32 %476, i32 %477, i32* %478, i64 %480, i32 %486, i32 %489, i32 %490, i32 %491, i32 %492, i32 %493)
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %499, label %496

496:                                              ; preds = %469
  %497 = call i32 (...) @GetLastError()
  %498 = call i32 @HRESULT_FROM_WIN32(i32 %497)
  store i32 %498, i32* %20, align 4
  br label %584

499:                                              ; preds = %469
  %500 = load i32*, i32** %30, align 8
  %501 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %502 = load i64, i64* %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %504 = load i64, i64* %503, align 8
  %505 = sub nsw i64 %502, %504
  %506 = trunc i64 %505 to i32
  %507 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %508 = load i64, i64* %507, align 8
  %509 = trunc i64 %508 to i32
  %510 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %511 = load i64, i64* %510, align 8
  %512 = trunc i64 %511 to i32
  %513 = load i32, i32* %34, align 4
  %514 = load i32*, i32** %23, align 8
  %515 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %516 = load i64, i64* %515, align 8
  %517 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %518 = load i64, i64* %517, align 8
  %519 = sub nsw i64 %516, %518
  %520 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %521 = load i64, i64* %520, align 8
  %522 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %523 = load i64, i64* %522, align 8
  %524 = add nsw i64 %521, %523
  %525 = trunc i64 %524 to i32
  %526 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %527 = load i64, i64* %526, align 8
  %528 = trunc i64 %527 to i32
  %529 = load i32, i32* %35, align 4
  %530 = load i32, i32* %17, align 4
  %531 = load i32, i32* %14, align 4
  %532 = load i32, i32* %15, align 4
  %533 = call i32 @UXTHEME_SizedBlt(i32* %500, i32 %506, i32 %509, i32 %512, i32 %513, i32* %514, i64 %519, i32 %525, i32 %528, i32 %529, i32 %530, i32 %531, i32 %532)
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %538, label %535

535:                                              ; preds = %499
  %536 = call i32 (...) @GetLastError()
  %537 = call i32 @HRESULT_FROM_WIN32(i32 %536)
  store i32 %537, i32* %20, align 4
  br label %584

538:                                              ; preds = %499
  br label %539

539:                                              ; preds = %538, %466
  %540 = load i32, i32* %34, align 4
  %541 = icmp sgt i32 %540, 0
  br i1 %541, label %542, label %582

542:                                              ; preds = %539
  %543 = load i32, i32* %32, align 4
  %544 = icmp sgt i32 %543, 0
  br i1 %544, label %545, label %582

545:                                              ; preds = %542
  %546 = load i32, i32* %16, align 4
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %581, label %548

548:                                              ; preds = %545
  %549 = load i32*, i32** %30, align 8
  %550 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %551 = load i64, i64* %550, align 8
  %552 = trunc i64 %551 to i32
  %553 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %554 = load i64, i64* %553, align 8
  %555 = trunc i64 %554 to i32
  %556 = load i32, i32* %32, align 4
  %557 = load i32, i32* %34, align 4
  %558 = load i32*, i32** %23, align 8
  %559 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %560 = load i64, i64* %559, align 8
  %561 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %562 = load i64, i64* %561, align 8
  %563 = add nsw i64 %560, %562
  %564 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %565 = load i64, i64* %564, align 8
  %566 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %567 = load i64, i64* %566, align 8
  %568 = add nsw i64 %565, %567
  %569 = trunc i64 %568 to i32
  %570 = load i32, i32* %33, align 4
  %571 = load i32, i32* %35, align 4
  %572 = load i32, i32* %17, align 4
  %573 = load i32, i32* %14, align 4
  %574 = load i32, i32* %15, align 4
  %575 = call i32 @UXTHEME_SizedBlt(i32* %549, i32 %552, i32 %555, i32 %556, i32 %557, i32* %558, i64 %563, i32 %569, i32 %570, i32 %571, i32 %572, i32 %573, i32 %574)
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %580, label %577

577:                                              ; preds = %548
  %578 = call i32 (...) @GetLastError()
  %579 = call i32 @HRESULT_FROM_WIN32(i32 %578)
  store i32 %579, i32* %20, align 4
  br label %584

580:                                              ; preds = %548
  br label %581

581:                                              ; preds = %580, %545
  br label %582

582:                                              ; preds = %581, %542, %539
  br label %583

583:                                              ; preds = %582, %353
  br label %584

584:                                              ; preds = %583, %577, %535, %496, %462, %423, %346, %312, %286, %260
  %585 = load i32*, i32** %30, align 8
  %586 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %587 = load i64, i64* %586, align 8
  %588 = trunc i64 %587 to i32
  %589 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %590 = load i64, i64* %589, align 8
  %591 = trunc i64 %590 to i32
  %592 = call i32 @SetViewportOrgEx(i32* %585, i32 %588, i32 %591, i32* null)
  br label %593

593:                                              ; preds = %584, %111
  %594 = load i32*, i32** %23, align 8
  %595 = load i32*, i32** %22, align 8
  %596 = call i32* @SelectObject(i32* %594, i32* %595)
  %597 = load i32*, i32** %23, align 8
  %598 = call i32 @DeleteDC(i32* %597)
  %599 = load i32*, i32** %21, align 8
  %600 = icmp ne i32* %599, null
  br i1 %600, label %601, label %604

601:                                              ; preds = %593
  %602 = load i32*, i32** %21, align 8
  %603 = call i32 @DeleteObject(i32* %602)
  br label %604

604:                                              ; preds = %601, %593
  %605 = load i32*, i32** %24, align 8
  %606 = icmp ne i32* %605, null
  br i1 %606, label %607, label %610

607:                                              ; preds = %604
  %608 = load i32*, i32** %24, align 8
  %609 = call i32 @DeleteDC(i32* %608)
  br label %610

610:                                              ; preds = %607, %604
  %611 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %612 = bitcast %struct.TYPE_8__* %611 to i8*
  %613 = bitcast %struct.TYPE_8__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %612, i8* align 8 %613, i64 32, i1 false)
  %614 = load i32, i32* %20, align 4
  store i32 %614, i32* %10, align 4
  br label %615

615:                                              ; preds = %610, %50
  %616 = load i32, i32* %10, align 4
  ret i32 %616
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @CreateCompatibleDC(i32*) #2

declare dso_local i32 @HRESULT_FROM_WIN32(i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32* @SelectObject(i32*, i32*) #2

declare dso_local i32 @UXTHEME_StretchBlt(i32*, i64, i64, i64, i64, i32*, i64, i64, i64, i64, i32, i32) #2

declare dso_local i8* @abs(i64) #2

declare dso_local i8* @MulDiv(i64, i64, i64) #2

declare dso_local i32* @CreateBitmap(i64, i64, i32, i32, i32*) #2

declare dso_local i32 @OffsetViewportOrgEx(i32*, i64, i64, %struct.TYPE_9__*) #2

declare dso_local i32 @UXTHEME_Blt(i32*, i64, i64, i64, i64, i32*, i64, i64, i32, i32) #2

declare dso_local i32 @UXTHEME_SizedBlt(i32*, i32, i32, i32, i32, i32*, i64, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @SetViewportOrgEx(i32*, i32, i32, i32*) #2

declare dso_local i32 @DeleteDC(i32*) #2

declare dso_local i32 @DeleteObject(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
