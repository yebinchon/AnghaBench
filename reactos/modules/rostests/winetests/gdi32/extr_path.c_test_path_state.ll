; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_path.c_test_path_state.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_path.c_test_path_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@BI_RGB = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"WidenPath succeeded\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"EndPath failed error %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"WidenPath failed error %u\0A\00", align 1
@ERROR_CAN_NOT_COMPLETE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"wrong error %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"FlattenPath succeeded\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"StrokePath succeeded\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"FillPath succeeded\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"StrokeAndFillPath succeeded\0A\00", align 1
@RGN_OR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"SelectClipPath succeeded\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"PathToRegion succeeded\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"CloseFigure succeeded\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"CloseFigure failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"WidenPath failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"path deleted\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"FlattenPath failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"StrokePath failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"path not deleted\0A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"FillPath failed\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"StrokeAndFillPath failed\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"SelectClipPath failed\0A\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"SelectClipPath succeeded on empty path\0A\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"PathToRegion failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"PathToRegion succeeded on empty path\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"EndPath succeeded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_path_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_path_state() #0 {
  %1 = alloca [1048 x i32], align 16
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds [1048 x i32], [1048 x i32]* %1, i64 0, i64 0
  %10 = bitcast i32* %9 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %2, align 8
  %11 = call i32 @CreateCompatibleDC(i32 0)
  store i32 %11, i32* %3, align 4
  %12 = getelementptr inbounds [1048 x i32], [1048 x i32]* %1, i64 0, i64 0
  %13 = call i32 @memset(i32* %12, i32 0, i32 4192)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 24, i32* %16, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i32 256, i32* %19, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store i32 256, i32* %22, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  store i32 32, i32* %25, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  store i32 1, i32* %28, align 4
  %29 = load i32, i32* @BI_RGB, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 5
  store i32 %29, i32* %32, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %34 = load i32, i32* @DIB_RGB_COLORS, align 4
  %35 = call i64 @CreateDIBSection(i32 0, %struct.TYPE_5__* %33, i32 %34, i8** %7, i32* null, i32 0)
  store i64 %35, i64* %6, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @SelectObject(i32 %36, i64 %37)
  store i64 %38, i64* %5, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @BeginPath(i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @LineTo(i32 %41, i32 100, i32 100)
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @WidenPath(i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* %3, align 4
  %51 = load i64, i64* %5, align 8
  %52 = call i64 @SelectObject(i32 %50, i64 %51)
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @WidenPath(i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* %3, align 4
  %61 = load i64, i64* %6, align 8
  %62 = call i64 @SelectObject(i32 %60, i64 %61)
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @WidenPath(i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @EndPath(i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 (...) @GetLastError()
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @WidenPath(i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 (...) @GetLastError()
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %3, align 4
  %81 = load i64, i64* %5, align 8
  %82 = call i64 @SelectObject(i32 %80, i64 %81)
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @WidenPath(i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 (...) @GetLastError()
  %87 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @BeginPath(i32 %88)
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @LineTo(i32 %90, i32 100, i32 100)
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @WidenPath(i32 %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @SaveDC(i32 %99)
  %101 = load i32, i32* %3, align 4
  %102 = load i64, i64* %6, align 8
  %103 = call i64 @SelectObject(i32 %101, i64 %102)
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @EndPath(i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 (...) @GetLastError()
  %108 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @WidenPath(i32 %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 (...) @GetLastError()
  %113 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @RestoreDC(i32 %114, i32 -1)
  %116 = load i32, i32* %3, align 4
  %117 = call i32 @WidenPath(i32 %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %123 = load i32, i32* %3, align 4
  %124 = call i32 @EndPath(i32 %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i32 (...) @GetLastError()
  %127 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %3, align 4
  %129 = call i32 @SaveDC(i32 %128)
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @BeginPath(i32 %130)
  %132 = load i32, i32* %3, align 4
  %133 = call i32 @RestoreDC(i32 %132, i32 -1)
  %134 = load i32, i32* %3, align 4
  %135 = call i32 @WidenPath(i32 %134)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i32 (...) @GetLastError()
  %138 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %3, align 4
  %140 = call i32 @AbortPath(i32 %139)
  %141 = call i32 @SetLastError(i32 -559038737)
  %142 = load i32, i32* %3, align 4
  %143 = call i32 @WidenPath(i32 %142)
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %149 = call i32 (...) @GetLastError()
  %150 = load i32, i32* @ERROR_CAN_NOT_COMPLETE, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %158, label %152

152:                                              ; preds = %0
  %153 = call i32 (...) @GetLastError()
  %154 = icmp eq i32 %153, -559038737
  %155 = zext i1 %154 to i32
  %156 = call i64 @broken(i32 %155)
  %157 = icmp ne i64 %156, 0
  br label %158

158:                                              ; preds = %152, %0
  %159 = phi i1 [ true, %0 ], [ %157, %152 ]
  %160 = zext i1 %159 to i32
  %161 = call i32 (...) @GetLastError()
  %162 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %161)
  %163 = call i32 @SetLastError(i32 -559038737)
  %164 = load i32, i32* %3, align 4
  %165 = call i32 @FlattenPath(i32 %164)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  %168 = xor i1 %167, true
  %169 = zext i1 %168 to i32
  %170 = call i32 (i32, i8*, ...) @ok(i32 %169, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %171 = call i32 (...) @GetLastError()
  %172 = load i32, i32* @ERROR_CAN_NOT_COMPLETE, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %180, label %174

174:                                              ; preds = %158
  %175 = call i32 (...) @GetLastError()
  %176 = icmp eq i32 %175, -559038737
  %177 = zext i1 %176 to i32
  %178 = call i64 @broken(i32 %177)
  %179 = icmp ne i64 %178, 0
  br label %180

180:                                              ; preds = %174, %158
  %181 = phi i1 [ true, %158 ], [ %179, %174 ]
  %182 = zext i1 %181 to i32
  %183 = call i32 (...) @GetLastError()
  %184 = call i32 (i32, i8*, ...) @ok(i32 %182, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %183)
  %185 = call i32 @SetLastError(i32 -559038737)
  %186 = load i32, i32* %3, align 4
  %187 = call i32 @StrokePath(i32 %186)
  store i32 %187, i32* %8, align 4
  %188 = load i32, i32* %8, align 4
  %189 = icmp ne i32 %188, 0
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = call i32 (i32, i8*, ...) @ok(i32 %191, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %193 = call i32 (...) @GetLastError()
  %194 = load i32, i32* @ERROR_CAN_NOT_COMPLETE, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %202, label %196

196:                                              ; preds = %180
  %197 = call i32 (...) @GetLastError()
  %198 = icmp eq i32 %197, -559038737
  %199 = zext i1 %198 to i32
  %200 = call i64 @broken(i32 %199)
  %201 = icmp ne i64 %200, 0
  br label %202

202:                                              ; preds = %196, %180
  %203 = phi i1 [ true, %180 ], [ %201, %196 ]
  %204 = zext i1 %203 to i32
  %205 = call i32 (...) @GetLastError()
  %206 = call i32 (i32, i8*, ...) @ok(i32 %204, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %205)
  %207 = call i32 @SetLastError(i32 -559038737)
  %208 = load i32, i32* %3, align 4
  %209 = call i32 @FillPath(i32 %208)
  store i32 %209, i32* %8, align 4
  %210 = load i32, i32* %8, align 4
  %211 = icmp ne i32 %210, 0
  %212 = xor i1 %211, true
  %213 = zext i1 %212 to i32
  %214 = call i32 (i32, i8*, ...) @ok(i32 %213, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %215 = call i32 (...) @GetLastError()
  %216 = load i32, i32* @ERROR_CAN_NOT_COMPLETE, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %224, label %218

218:                                              ; preds = %202
  %219 = call i32 (...) @GetLastError()
  %220 = icmp eq i32 %219, -559038737
  %221 = zext i1 %220 to i32
  %222 = call i64 @broken(i32 %221)
  %223 = icmp ne i64 %222, 0
  br label %224

224:                                              ; preds = %218, %202
  %225 = phi i1 [ true, %202 ], [ %223, %218 ]
  %226 = zext i1 %225 to i32
  %227 = call i32 (...) @GetLastError()
  %228 = call i32 (i32, i8*, ...) @ok(i32 %226, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %227)
  %229 = call i32 @SetLastError(i32 -559038737)
  %230 = load i32, i32* %3, align 4
  %231 = call i32 @StrokeAndFillPath(i32 %230)
  store i32 %231, i32* %8, align 4
  %232 = load i32, i32* %8, align 4
  %233 = icmp ne i32 %232, 0
  %234 = xor i1 %233, true
  %235 = zext i1 %234 to i32
  %236 = call i32 (i32, i8*, ...) @ok(i32 %235, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %237 = call i32 (...) @GetLastError()
  %238 = load i32, i32* @ERROR_CAN_NOT_COMPLETE, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %246, label %240

240:                                              ; preds = %224
  %241 = call i32 (...) @GetLastError()
  %242 = icmp eq i32 %241, -559038737
  %243 = zext i1 %242 to i32
  %244 = call i64 @broken(i32 %243)
  %245 = icmp ne i64 %244, 0
  br label %246

246:                                              ; preds = %240, %224
  %247 = phi i1 [ true, %224 ], [ %245, %240 ]
  %248 = zext i1 %247 to i32
  %249 = call i32 (...) @GetLastError()
  %250 = call i32 (i32, i8*, ...) @ok(i32 %248, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %249)
  %251 = call i32 @SetLastError(i32 -559038737)
  %252 = load i32, i32* %3, align 4
  %253 = load i32, i32* @RGN_OR, align 4
  %254 = call i32 @SelectClipPath(i32 %252, i32 %253)
  store i32 %254, i32* %8, align 4
  %255 = load i32, i32* %8, align 4
  %256 = icmp ne i32 %255, 0
  %257 = xor i1 %256, true
  %258 = zext i1 %257 to i32
  %259 = call i32 (i32, i8*, ...) @ok(i32 %258, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %260 = call i32 (...) @GetLastError()
  %261 = load i32, i32* @ERROR_CAN_NOT_COMPLETE, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %269, label %263

263:                                              ; preds = %246
  %264 = call i32 (...) @GetLastError()
  %265 = icmp eq i32 %264, -559038737
  %266 = zext i1 %265 to i32
  %267 = call i64 @broken(i32 %266)
  %268 = icmp ne i64 %267, 0
  br label %269

269:                                              ; preds = %263, %246
  %270 = phi i1 [ true, %246 ], [ %268, %263 ]
  %271 = zext i1 %270 to i32
  %272 = call i32 (...) @GetLastError()
  %273 = call i32 (i32, i8*, ...) @ok(i32 %271, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %272)
  %274 = call i32 @SetLastError(i32 -559038737)
  %275 = load i32, i32* %3, align 4
  %276 = call i64 @PathToRegion(i32 %275)
  store i64 %276, i64* %4, align 8
  %277 = load i64, i64* %4, align 8
  %278 = icmp ne i64 %277, 0
  %279 = xor i1 %278, true
  %280 = zext i1 %279 to i32
  %281 = call i32 (i32, i8*, ...) @ok(i32 %280, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %282 = call i32 (...) @GetLastError()
  %283 = load i32, i32* @ERROR_CAN_NOT_COMPLETE, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %291, label %285

285:                                              ; preds = %269
  %286 = call i32 (...) @GetLastError()
  %287 = icmp eq i32 %286, -559038737
  %288 = zext i1 %287 to i32
  %289 = call i64 @broken(i32 %288)
  %290 = icmp ne i64 %289, 0
  br label %291

291:                                              ; preds = %285, %269
  %292 = phi i1 [ true, %269 ], [ %290, %285 ]
  %293 = zext i1 %292 to i32
  %294 = call i32 (...) @GetLastError()
  %295 = call i32 (i32, i8*, ...) @ok(i32 %293, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %294)
  %296 = call i32 @SetLastError(i32 -559038737)
  %297 = load i32, i32* %3, align 4
  %298 = call i32 @EndPath(i32 %297)
  store i32 %298, i32* %8, align 4
  %299 = load i32, i32* %8, align 4
  %300 = icmp ne i32 %299, 0
  %301 = xor i1 %300, true
  %302 = zext i1 %301 to i32
  %303 = call i32 (i32, i8*, ...) @ok(i32 %302, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %304 = call i32 (...) @GetLastError()
  %305 = load i32, i32* @ERROR_CAN_NOT_COMPLETE, align 4
  %306 = icmp eq i32 %304, %305
  br i1 %306, label %313, label %307

307:                                              ; preds = %291
  %308 = call i32 (...) @GetLastError()
  %309 = icmp eq i32 %308, -559038737
  %310 = zext i1 %309 to i32
  %311 = call i64 @broken(i32 %310)
  %312 = icmp ne i64 %311, 0
  br label %313

313:                                              ; preds = %307, %291
  %314 = phi i1 [ true, %291 ], [ %312, %307 ]
  %315 = zext i1 %314 to i32
  %316 = call i32 (...) @GetLastError()
  %317 = call i32 (i32, i8*, ...) @ok(i32 %315, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %316)
  %318 = call i32 @SetLastError(i32 -559038737)
  %319 = load i32, i32* %3, align 4
  %320 = call i32 @CloseFigure(i32 %319)
  store i32 %320, i32* %8, align 4
  %321 = load i32, i32* %8, align 4
  %322 = icmp ne i32 %321, 0
  %323 = xor i1 %322, true
  %324 = zext i1 %323 to i32
  %325 = call i32 (i32, i8*, ...) @ok(i32 %324, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %326 = call i32 (...) @GetLastError()
  %327 = load i32, i32* @ERROR_CAN_NOT_COMPLETE, align 4
  %328 = icmp eq i32 %326, %327
  br i1 %328, label %335, label %329

329:                                              ; preds = %313
  %330 = call i32 (...) @GetLastError()
  %331 = icmp eq i32 %330, -559038737
  %332 = zext i1 %331 to i32
  %333 = call i64 @broken(i32 %332)
  %334 = icmp ne i64 %333, 0
  br label %335

335:                                              ; preds = %329, %313
  %336 = phi i1 [ true, %313 ], [ %334, %329 ]
  %337 = zext i1 %336 to i32
  %338 = call i32 (...) @GetLastError()
  %339 = call i32 (i32, i8*, ...) @ok(i32 %337, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %338)
  %340 = load i32, i32* %3, align 4
  %341 = call i32 @AbortPath(i32 %340)
  %342 = load i32, i32* %3, align 4
  %343 = call i32 @BeginPath(i32 %342)
  %344 = call i32 @SetLastError(i32 -559038737)
  %345 = load i32, i32* %3, align 4
  %346 = call i32 @WidenPath(i32 %345)
  store i32 %346, i32* %8, align 4
  %347 = load i32, i32* %8, align 4
  %348 = icmp ne i32 %347, 0
  %349 = xor i1 %348, true
  %350 = zext i1 %349 to i32
  %351 = call i32 (i32, i8*, ...) @ok(i32 %350, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %352 = call i32 (...) @GetLastError()
  %353 = load i32, i32* @ERROR_CAN_NOT_COMPLETE, align 4
  %354 = icmp eq i32 %352, %353
  br i1 %354, label %361, label %355

355:                                              ; preds = %335
  %356 = call i32 (...) @GetLastError()
  %357 = icmp eq i32 %356, -559038737
  %358 = zext i1 %357 to i32
  %359 = call i64 @broken(i32 %358)
  %360 = icmp ne i64 %359, 0
  br label %361

361:                                              ; preds = %355, %335
  %362 = phi i1 [ true, %335 ], [ %360, %355 ]
  %363 = zext i1 %362 to i32
  %364 = call i32 (...) @GetLastError()
  %365 = call i32 (i32, i8*, ...) @ok(i32 %363, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %364)
  %366 = load i32, i32* %3, align 4
  %367 = call i32 @AbortPath(i32 %366)
  %368 = load i32, i32* %3, align 4
  %369 = call i32 @BeginPath(i32 %368)
  %370 = call i32 @SetLastError(i32 -559038737)
  %371 = load i32, i32* %3, align 4
  %372 = call i32 @FlattenPath(i32 %371)
  store i32 %372, i32* %8, align 4
  %373 = load i32, i32* %8, align 4
  %374 = icmp ne i32 %373, 0
  %375 = xor i1 %374, true
  %376 = zext i1 %375 to i32
  %377 = call i32 (i32, i8*, ...) @ok(i32 %376, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %378 = call i32 (...) @GetLastError()
  %379 = load i32, i32* @ERROR_CAN_NOT_COMPLETE, align 4
  %380 = icmp eq i32 %378, %379
  br i1 %380, label %387, label %381

381:                                              ; preds = %361
  %382 = call i32 (...) @GetLastError()
  %383 = icmp eq i32 %382, -559038737
  %384 = zext i1 %383 to i32
  %385 = call i64 @broken(i32 %384)
  %386 = icmp ne i64 %385, 0
  br label %387

387:                                              ; preds = %381, %361
  %388 = phi i1 [ true, %361 ], [ %386, %381 ]
  %389 = zext i1 %388 to i32
  %390 = call i32 (...) @GetLastError()
  %391 = call i32 (i32, i8*, ...) @ok(i32 %389, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %390)
  %392 = load i32, i32* %3, align 4
  %393 = call i32 @AbortPath(i32 %392)
  %394 = load i32, i32* %3, align 4
  %395 = call i32 @BeginPath(i32 %394)
  %396 = call i32 @SetLastError(i32 -559038737)
  %397 = load i32, i32* %3, align 4
  %398 = call i32 @StrokePath(i32 %397)
  store i32 %398, i32* %8, align 4
  %399 = load i32, i32* %8, align 4
  %400 = icmp ne i32 %399, 0
  %401 = xor i1 %400, true
  %402 = zext i1 %401 to i32
  %403 = call i32 (i32, i8*, ...) @ok(i32 %402, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %404 = call i32 (...) @GetLastError()
  %405 = load i32, i32* @ERROR_CAN_NOT_COMPLETE, align 4
  %406 = icmp eq i32 %404, %405
  br i1 %406, label %413, label %407

407:                                              ; preds = %387
  %408 = call i32 (...) @GetLastError()
  %409 = icmp eq i32 %408, -559038737
  %410 = zext i1 %409 to i32
  %411 = call i64 @broken(i32 %410)
  %412 = icmp ne i64 %411, 0
  br label %413

413:                                              ; preds = %407, %387
  %414 = phi i1 [ true, %387 ], [ %412, %407 ]
  %415 = zext i1 %414 to i32
  %416 = call i32 (...) @GetLastError()
  %417 = call i32 (i32, i8*, ...) @ok(i32 %415, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %416)
  %418 = load i32, i32* %3, align 4
  %419 = call i32 @AbortPath(i32 %418)
  %420 = load i32, i32* %3, align 4
  %421 = call i32 @BeginPath(i32 %420)
  %422 = call i32 @SetLastError(i32 -559038737)
  %423 = load i32, i32* %3, align 4
  %424 = call i32 @FillPath(i32 %423)
  store i32 %424, i32* %8, align 4
  %425 = load i32, i32* %8, align 4
  %426 = icmp ne i32 %425, 0
  %427 = xor i1 %426, true
  %428 = zext i1 %427 to i32
  %429 = call i32 (i32, i8*, ...) @ok(i32 %428, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %430 = call i32 (...) @GetLastError()
  %431 = load i32, i32* @ERROR_CAN_NOT_COMPLETE, align 4
  %432 = icmp eq i32 %430, %431
  br i1 %432, label %439, label %433

433:                                              ; preds = %413
  %434 = call i32 (...) @GetLastError()
  %435 = icmp eq i32 %434, -559038737
  %436 = zext i1 %435 to i32
  %437 = call i64 @broken(i32 %436)
  %438 = icmp ne i64 %437, 0
  br label %439

439:                                              ; preds = %433, %413
  %440 = phi i1 [ true, %413 ], [ %438, %433 ]
  %441 = zext i1 %440 to i32
  %442 = call i32 (...) @GetLastError()
  %443 = call i32 (i32, i8*, ...) @ok(i32 %441, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %442)
  %444 = load i32, i32* %3, align 4
  %445 = call i32 @AbortPath(i32 %444)
  %446 = load i32, i32* %3, align 4
  %447 = call i32 @BeginPath(i32 %446)
  %448 = call i32 @SetLastError(i32 -559038737)
  %449 = load i32, i32* %3, align 4
  %450 = call i32 @StrokeAndFillPath(i32 %449)
  store i32 %450, i32* %8, align 4
  %451 = load i32, i32* %8, align 4
  %452 = icmp ne i32 %451, 0
  %453 = xor i1 %452, true
  %454 = zext i1 %453 to i32
  %455 = call i32 (i32, i8*, ...) @ok(i32 %454, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %456 = call i32 (...) @GetLastError()
  %457 = load i32, i32* @ERROR_CAN_NOT_COMPLETE, align 4
  %458 = icmp eq i32 %456, %457
  br i1 %458, label %465, label %459

459:                                              ; preds = %439
  %460 = call i32 (...) @GetLastError()
  %461 = icmp eq i32 %460, -559038737
  %462 = zext i1 %461 to i32
  %463 = call i64 @broken(i32 %462)
  %464 = icmp ne i64 %463, 0
  br label %465

465:                                              ; preds = %459, %439
  %466 = phi i1 [ true, %439 ], [ %464, %459 ]
  %467 = zext i1 %466 to i32
  %468 = call i32 (...) @GetLastError()
  %469 = call i32 (i32, i8*, ...) @ok(i32 %467, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %468)
  %470 = load i32, i32* %3, align 4
  %471 = call i32 @AbortPath(i32 %470)
  %472 = load i32, i32* %3, align 4
  %473 = call i32 @BeginPath(i32 %472)
  %474 = load i32, i32* %3, align 4
  %475 = call i32 @Rectangle(i32 %474, i32 1, i32 1, i32 10, i32 10)
  %476 = call i32 @SetLastError(i32 -559038737)
  %477 = load i32, i32* %3, align 4
  %478 = load i32, i32* @RGN_OR, align 4
  %479 = call i32 @SelectClipPath(i32 %477, i32 %478)
  store i32 %479, i32* %8, align 4
  %480 = load i32, i32* %8, align 4
  %481 = icmp ne i32 %480, 0
  %482 = xor i1 %481, true
  %483 = zext i1 %482 to i32
  %484 = call i32 (i32, i8*, ...) @ok(i32 %483, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %485 = call i32 (...) @GetLastError()
  %486 = load i32, i32* @ERROR_CAN_NOT_COMPLETE, align 4
  %487 = icmp eq i32 %485, %486
  br i1 %487, label %494, label %488

488:                                              ; preds = %465
  %489 = call i32 (...) @GetLastError()
  %490 = icmp eq i32 %489, -559038737
  %491 = zext i1 %490 to i32
  %492 = call i64 @broken(i32 %491)
  %493 = icmp ne i64 %492, 0
  br label %494

494:                                              ; preds = %488, %465
  %495 = phi i1 [ true, %465 ], [ %493, %488 ]
  %496 = zext i1 %495 to i32
  %497 = call i32 (...) @GetLastError()
  %498 = call i32 (i32, i8*, ...) @ok(i32 %496, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %497)
  %499 = load i32, i32* %3, align 4
  %500 = call i32 @AbortPath(i32 %499)
  %501 = load i32, i32* %3, align 4
  %502 = call i32 @BeginPath(i32 %501)
  %503 = load i32, i32* %3, align 4
  %504 = call i32 @Rectangle(i32 %503, i32 1, i32 1, i32 10, i32 10)
  %505 = call i32 @SetLastError(i32 -559038737)
  %506 = load i32, i32* %3, align 4
  %507 = call i64 @PathToRegion(i32 %506)
  store i64 %507, i64* %4, align 8
  %508 = load i64, i64* %4, align 8
  %509 = icmp ne i64 %508, 0
  %510 = xor i1 %509, true
  %511 = zext i1 %510 to i32
  %512 = call i32 (i32, i8*, ...) @ok(i32 %511, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %513 = call i32 (...) @GetLastError()
  %514 = load i32, i32* @ERROR_CAN_NOT_COMPLETE, align 4
  %515 = icmp eq i32 %513, %514
  br i1 %515, label %522, label %516

516:                                              ; preds = %494
  %517 = call i32 (...) @GetLastError()
  %518 = icmp eq i32 %517, -559038737
  %519 = zext i1 %518 to i32
  %520 = call i64 @broken(i32 %519)
  %521 = icmp ne i64 %520, 0
  br label %522

522:                                              ; preds = %516, %494
  %523 = phi i1 [ true, %494 ], [ %521, %516 ]
  %524 = zext i1 %523 to i32
  %525 = call i32 (...) @GetLastError()
  %526 = call i32 (i32, i8*, ...) @ok(i32 %524, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %525)
  %527 = load i32, i32* %3, align 4
  %528 = call i32 @AbortPath(i32 %527)
  %529 = load i32, i32* %3, align 4
  %530 = call i32 @BeginPath(i32 %529)
  %531 = load i32, i32* %3, align 4
  %532 = call i32 @CloseFigure(i32 %531)
  store i32 %532, i32* %8, align 4
  %533 = load i32, i32* %8, align 4
  %534 = call i32 (i32, i8*, ...) @ok(i32 %533, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %535 = load i32, i32* %3, align 4
  %536 = call i32 @AbortPath(i32 %535)
  %537 = load i32, i32* %3, align 4
  %538 = call i32 @BeginPath(i32 %537)
  %539 = load i32, i32* %3, align 4
  %540 = call i32 @EndPath(i32 %539)
  %541 = load i32, i32* %3, align 4
  %542 = call i32 @WidenPath(i32 %541)
  store i32 %542, i32* %8, align 4
  %543 = load i32, i32* %8, align 4
  %544 = call i32 (i32, i8*, ...) @ok(i32 %543, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %545 = load i32, i32* %3, align 4
  %546 = call i32 @GetPath(i32 %545, i32* null, i32* null, i32 0)
  %547 = icmp ne i32 %546, -1
  %548 = zext i1 %547 to i32
  %549 = call i32 (i32, i8*, ...) @ok(i32 %548, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %550 = load i32, i32* %3, align 4
  %551 = call i32 @AbortPath(i32 %550)
  %552 = load i32, i32* %3, align 4
  %553 = call i32 @BeginPath(i32 %552)
  %554 = load i32, i32* %3, align 4
  %555 = call i32 @EndPath(i32 %554)
  %556 = load i32, i32* %3, align 4
  %557 = call i32 @FlattenPath(i32 %556)
  store i32 %557, i32* %8, align 4
  %558 = load i32, i32* %8, align 4
  %559 = call i32 (i32, i8*, ...) @ok(i32 %558, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  %560 = load i32, i32* %3, align 4
  %561 = call i32 @GetPath(i32 %560, i32* null, i32* null, i32 0)
  %562 = icmp ne i32 %561, -1
  %563 = zext i1 %562 to i32
  %564 = call i32 (i32, i8*, ...) @ok(i32 %563, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %565 = load i32, i32* %3, align 4
  %566 = call i32 @AbortPath(i32 %565)
  %567 = load i32, i32* %3, align 4
  %568 = call i32 @BeginPath(i32 %567)
  %569 = load i32, i32* %3, align 4
  %570 = call i32 @EndPath(i32 %569)
  %571 = load i32, i32* %3, align 4
  %572 = call i32 @StrokePath(i32 %571)
  store i32 %572, i32* %8, align 4
  %573 = load i32, i32* %8, align 4
  %574 = call i32 (i32, i8*, ...) @ok(i32 %573, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %575 = load i32, i32* %3, align 4
  %576 = call i32 @GetPath(i32 %575, i32* null, i32* null, i32 0)
  %577 = icmp eq i32 %576, -1
  %578 = zext i1 %577 to i32
  %579 = call i32 (i32, i8*, ...) @ok(i32 %578, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  %580 = load i32, i32* %3, align 4
  %581 = call i32 @BeginPath(i32 %580)
  %582 = load i32, i32* %3, align 4
  %583 = call i32 @EndPath(i32 %582)
  %584 = load i32, i32* %3, align 4
  %585 = call i32 @FillPath(i32 %584)
  store i32 %585, i32* %8, align 4
  %586 = load i32, i32* %8, align 4
  %587 = call i32 (i32, i8*, ...) @ok(i32 %586, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  %588 = load i32, i32* %3, align 4
  %589 = call i32 @GetPath(i32 %588, i32* null, i32* null, i32 0)
  %590 = icmp eq i32 %589, -1
  %591 = zext i1 %590 to i32
  %592 = call i32 (i32, i8*, ...) @ok(i32 %591, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  %593 = load i32, i32* %3, align 4
  %594 = call i32 @BeginPath(i32 %593)
  %595 = load i32, i32* %3, align 4
  %596 = call i32 @EndPath(i32 %595)
  %597 = load i32, i32* %3, align 4
  %598 = call i32 @StrokeAndFillPath(i32 %597)
  store i32 %598, i32* %8, align 4
  %599 = load i32, i32* %8, align 4
  %600 = call i32 (i32, i8*, ...) @ok(i32 %599, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0))
  %601 = load i32, i32* %3, align 4
  %602 = call i32 @GetPath(i32 %601, i32* null, i32* null, i32 0)
  %603 = icmp eq i32 %602, -1
  %604 = zext i1 %603 to i32
  %605 = call i32 (i32, i8*, ...) @ok(i32 %604, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  %606 = load i32, i32* %3, align 4
  %607 = call i32 @BeginPath(i32 %606)
  %608 = load i32, i32* %3, align 4
  %609 = call i32 @Rectangle(i32 %608, i32 1, i32 1, i32 10, i32 10)
  %610 = load i32, i32* %3, align 4
  %611 = call i32 @EndPath(i32 %610)
  %612 = load i32, i32* %3, align 4
  %613 = load i32, i32* @RGN_OR, align 4
  %614 = call i32 @SelectClipPath(i32 %612, i32 %613)
  store i32 %614, i32* %8, align 4
  %615 = load i32, i32* %8, align 4
  %616 = call i32 (i32, i8*, ...) @ok(i32 %615, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %617 = load i32, i32* %3, align 4
  %618 = call i32 @GetPath(i32 %617, i32* null, i32* null, i32 0)
  %619 = icmp eq i32 %618, -1
  %620 = zext i1 %619 to i32
  %621 = call i32 (i32, i8*, ...) @ok(i32 %620, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  %622 = load i32, i32* %3, align 4
  %623 = call i32 @BeginPath(i32 %622)
  %624 = load i32, i32* %3, align 4
  %625 = call i32 @EndPath(i32 %624)
  %626 = call i32 @SetLastError(i32 -559038737)
  %627 = load i32, i32* %3, align 4
  %628 = load i32, i32* @RGN_OR, align 4
  %629 = call i32 @SelectClipPath(i32 %627, i32 %628)
  store i32 %629, i32* %8, align 4
  %630 = load i32, i32* %8, align 4
  %631 = icmp ne i32 %630, 0
  %632 = xor i1 %631, true
  %633 = zext i1 %632 to i32
  %634 = call i32 (i32, i8*, ...) @ok(i32 %633, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i64 0, i64 0))
  %635 = call i32 (...) @GetLastError()
  %636 = icmp eq i32 %635, -559038737
  %637 = zext i1 %636 to i32
  %638 = call i32 (...) @GetLastError()
  %639 = call i32 (i32, i8*, ...) @ok(i32 %637, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %638)
  %640 = load i32, i32* %3, align 4
  %641 = call i32 @GetPath(i32 %640, i32* null, i32* null, i32 0)
  %642 = icmp eq i32 %641, -1
  %643 = zext i1 %642 to i32
  %644 = call i32 (i32, i8*, ...) @ok(i32 %643, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  %645 = load i32, i32* %3, align 4
  %646 = call i32 @BeginPath(i32 %645)
  %647 = load i32, i32* %3, align 4
  %648 = call i32 @Rectangle(i32 %647, i32 1, i32 1, i32 10, i32 10)
  %649 = load i32, i32* %3, align 4
  %650 = call i32 @EndPath(i32 %649)
  %651 = load i32, i32* %3, align 4
  %652 = call i64 @PathToRegion(i32 %651)
  store i64 %652, i64* %4, align 8
  %653 = load i64, i64* %4, align 8
  %654 = icmp ne i64 %653, 0
  %655 = zext i1 %654 to i32
  %656 = call i32 (i32, i8*, ...) @ok(i32 %655, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0))
  %657 = load i64, i64* %4, align 8
  %658 = call i32 @DeleteObject(i64 %657)
  %659 = load i32, i32* %3, align 4
  %660 = call i32 @GetPath(i32 %659, i32* null, i32* null, i32 0)
  %661 = icmp eq i32 %660, -1
  %662 = zext i1 %661 to i32
  %663 = call i32 (i32, i8*, ...) @ok(i32 %662, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  %664 = load i32, i32* %3, align 4
  %665 = call i32 @BeginPath(i32 %664)
  %666 = load i32, i32* %3, align 4
  %667 = call i32 @EndPath(i32 %666)
  %668 = call i32 @SetLastError(i32 -559038737)
  %669 = load i32, i32* %3, align 4
  %670 = call i64 @PathToRegion(i32 %669)
  store i64 %670, i64* %4, align 8
  %671 = load i64, i64* %4, align 8
  %672 = icmp ne i64 %671, 0
  %673 = xor i1 %672, true
  %674 = zext i1 %673 to i32
  %675 = call i32 (i32, i8*, ...) @ok(i32 %674, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0))
  %676 = call i32 (...) @GetLastError()
  %677 = icmp eq i32 %676, -559038737
  %678 = zext i1 %677 to i32
  %679 = call i32 (...) @GetLastError()
  %680 = call i32 (i32, i8*, ...) @ok(i32 %678, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %679)
  %681 = load i64, i64* %4, align 8
  %682 = call i32 @DeleteObject(i64 %681)
  %683 = load i32, i32* %3, align 4
  %684 = call i32 @GetPath(i32 %683, i32* null, i32* null, i32 0)
  %685 = icmp eq i32 %684, -1
  %686 = zext i1 %685 to i32
  %687 = call i32 (i32, i8*, ...) @ok(i32 %686, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  %688 = load i32, i32* %3, align 4
  %689 = call i32 @BeginPath(i32 %688)
  %690 = load i32, i32* %3, align 4
  %691 = call i32 @EndPath(i32 %690)
  %692 = call i32 @SetLastError(i32 -559038737)
  %693 = load i32, i32* %3, align 4
  %694 = call i32 @CloseFigure(i32 %693)
  store i32 %694, i32* %8, align 4
  %695 = load i32, i32* %8, align 4
  %696 = icmp ne i32 %695, 0
  %697 = xor i1 %696, true
  %698 = zext i1 %697 to i32
  %699 = call i32 (i32, i8*, ...) @ok(i32 %698, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %700 = call i32 (...) @GetLastError()
  %701 = load i32, i32* @ERROR_CAN_NOT_COMPLETE, align 4
  %702 = icmp eq i32 %700, %701
  br i1 %702, label %709, label %703

703:                                              ; preds = %522
  %704 = call i32 (...) @GetLastError()
  %705 = icmp eq i32 %704, -559038737
  %706 = zext i1 %705 to i32
  %707 = call i64 @broken(i32 %706)
  %708 = icmp ne i64 %707, 0
  br label %709

709:                                              ; preds = %703, %522
  %710 = phi i1 [ true, %522 ], [ %708, %703 ]
  %711 = zext i1 %710 to i32
  %712 = call i32 (...) @GetLastError()
  %713 = call i32 (i32, i8*, ...) @ok(i32 %711, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %712)
  %714 = load i32, i32* %3, align 4
  %715 = call i32 @AbortPath(i32 %714)
  %716 = load i32, i32* %3, align 4
  %717 = call i32 @BeginPath(i32 %716)
  %718 = load i32, i32* %3, align 4
  %719 = call i32 @EndPath(i32 %718)
  %720 = call i32 @SetLastError(i32 -559038737)
  %721 = load i32, i32* %3, align 4
  %722 = call i32 @EndPath(i32 %721)
  store i32 %722, i32* %8, align 4
  %723 = load i32, i32* %8, align 4
  %724 = icmp ne i32 %723, 0
  %725 = xor i1 %724, true
  %726 = zext i1 %725 to i32
  %727 = call i32 (i32, i8*, ...) @ok(i32 %726, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0))
  %728 = call i32 (...) @GetLastError()
  %729 = load i32, i32* @ERROR_CAN_NOT_COMPLETE, align 4
  %730 = icmp eq i32 %728, %729
  br i1 %730, label %737, label %731

731:                                              ; preds = %709
  %732 = call i32 (...) @GetLastError()
  %733 = icmp eq i32 %732, -559038737
  %734 = zext i1 %733 to i32
  %735 = call i64 @broken(i32 %734)
  %736 = icmp ne i64 %735, 0
  br label %737

737:                                              ; preds = %731, %709
  %738 = phi i1 [ true, %709 ], [ %736, %731 ]
  %739 = zext i1 %738 to i32
  %740 = call i32 (...) @GetLastError()
  %741 = call i32 (i32, i8*, ...) @ok(i32 %739, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %740)
  %742 = load i32, i32* %3, align 4
  %743 = call i32 @DeleteDC(i32 %742)
  %744 = load i64, i64* %6, align 8
  %745 = call i32 @DeleteObject(i64 %744)
  ret void
}

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @CreateDIBSection(i32, %struct.TYPE_5__*, i32, i8**, i32*, i32) #1

declare dso_local i64 @SelectObject(i32, i64) #1

declare dso_local i32 @BeginPath(i32) #1

declare dso_local i32 @LineTo(i32, i32, i32) #1

declare dso_local i32 @WidenPath(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @EndPath(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @SaveDC(i32) #1

declare dso_local i32 @RestoreDC(i32, i32) #1

declare dso_local i32 @AbortPath(i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @FlattenPath(i32) #1

declare dso_local i32 @StrokePath(i32) #1

declare dso_local i32 @FillPath(i32) #1

declare dso_local i32 @StrokeAndFillPath(i32) #1

declare dso_local i32 @SelectClipPath(i32, i32) #1

declare dso_local i64 @PathToRegion(i32) #1

declare dso_local i32 @CloseFigure(i32) #1

declare dso_local i32 @Rectangle(i32, i32, i32, i32, i32) #1

declare dso_local i32 @GetPath(i32, i32*, i32*, i32) #1

declare dso_local i32 @DeleteObject(i64) #1

declare dso_local i32 @DeleteDC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
