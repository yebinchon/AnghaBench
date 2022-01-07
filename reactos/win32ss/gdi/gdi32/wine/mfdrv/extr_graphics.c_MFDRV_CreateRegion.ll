; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/mfdrv/extr_graphics.c_MFDRV_CreateRegion.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/mfdrv/extr_graphics.c_MFDRV_CreateRegion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8**, i8*, i32, %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Can't alloc rgndata buffer\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Can't alloc METARECORD buffer\0A\00", align 1
@META_CREATEREGION = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"MFDRV_WriteRecord failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @MFDRV_CreateRegion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MFDRV_CreateRegion(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @GetRegionData(i32 %16, i32 0, %struct.TYPE_12__* null)
  store i32 %17, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %304

20:                                               ; preds = %2
  %21 = call i32 (...) @GetProcessHeap()
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.TYPE_12__* @HeapAlloc(i32 %21, i32 0, i32 %22)
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %8, align 8
  %24 = icmp ne %struct.TYPE_12__* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = call i32 @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %304

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %31 = call i32 @GetRegionData(i32 %28, i32 %29, %struct.TYPE_12__* %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 12
  %37 = sext i32 %36 to i64
  %38 = add i64 68, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = call i32 (...) @GetProcessHeap()
  %41 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call %struct.TYPE_12__* @HeapAlloc(i32 %40, i32 %41, i32 %42)
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %7, align 8
  %44 = icmp ne %struct.TYPE_12__* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %27
  %46 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 (...) @GetProcessHeap()
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %49 = call i32 @HeapFree(i32 %47, i32 0, %struct.TYPE_12__* %48)
  store i32 -1, i32* %3, align 4
  br label %304

50:                                               ; preds = %27
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 11
  store i8** %54, i8*** %13, align 8
  store i8** null, i8*** %14, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.TYPE_13__*
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i64 %63
  store %struct.TYPE_13__* %64, %struct.TYPE_13__** %10, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %68, %struct.TYPE_13__** %9, align 8
  br label %69

69:                                               ; preds = %156, %50
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %72 = icmp ult %struct.TYPE_13__* %70, %71
  br i1 %72, label %73, label %159

73:                                               ; preds = %69
  %74 = load i8**, i8*** %14, align 8
  %75 = icmp ne i8** %74, null
  br i1 %75, label %76, label %99

76:                                               ; preds = %73
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i8**, i8*** %14, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 1
  %82 = load i8*, i8** %81, align 8
  %83 = icmp eq i8* %79, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %76
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  %90 = load i8**, i8*** %13, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i32 1
  store i8** %91, i8*** %13, align 8
  store i8* %89, i8** %90, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = load i8**, i8*** %13, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i32 1
  store i8** %98, i8*** %13, align 8
  store i8* %96, i8** %97, align 8
  br label %155

99:                                               ; preds = %76, %73
  %100 = load i8**, i8*** %14, align 8
  %101 = icmp ne i8** %100, null
  br i1 %101, label %102, label %126

102:                                              ; preds = %99
  %103 = load i8**, i8*** %13, align 8
  %104 = load i8**, i8*** %14, align 8
  %105 = ptrtoint i8** %103 to i64
  %106 = ptrtoint i8** %104 to i64
  %107 = sub i64 %105, %106
  %108 = sdiv exact i64 %107, 8
  %109 = sub nsw i64 %108, 3
  %110 = inttoptr i64 %109 to i8*
  %111 = load i8**, i8*** %14, align 8
  store i8* %110, i8** %111, align 8
  %112 = load i8**, i8*** %14, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = load i8**, i8*** %13, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i32 1
  store i8** %115, i8*** %13, align 8
  store i8* %113, i8** %114, align 8
  %116 = load i8**, i8*** %14, align 8
  %117 = load i8*, i8** %116, align 8
  %118 = load i8*, i8** %12, align 8
  %119 = icmp ugt i8* %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %102
  %121 = load i8**, i8*** %14, align 8
  %122 = load i8*, i8** %121, align 8
  store i8* %122, i8** %12, align 8
  br label %123

123:                                              ; preds = %120, %102
  %124 = load i8*, i8** %11, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %11, align 8
  br label %126

126:                                              ; preds = %123, %99
  %127 = load i8**, i8*** %13, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i32 1
  store i8** %128, i8*** %13, align 8
  store i8** %127, i8*** %14, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load i8**, i8*** %13, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i32 1
  store i8** %133, i8*** %13, align 8
  store i8* %131, i8** %132, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = inttoptr i64 %137 to i8*
  %139 = load i8**, i8*** %13, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i32 1
  store i8** %140, i8*** %13, align 8
  store i8* %138, i8** %139, align 8
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = inttoptr i64 %144 to i8*
  %146 = load i8**, i8*** %13, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i32 1
  store i8** %147, i8*** %13, align 8
  store i8* %145, i8** %146, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = inttoptr i64 %151 to i8*
  %153 = load i8**, i8*** %13, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i32 1
  store i8** %154, i8*** %13, align 8
  store i8* %152, i8** %153, align 8
  br label %155

155:                                              ; preds = %126, %84
  br label %156

156:                                              ; preds = %155
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 1
  store %struct.TYPE_13__* %158, %struct.TYPE_13__** %9, align 8
  br label %69

159:                                              ; preds = %69
  %160 = load i8**, i8*** %14, align 8
  %161 = icmp ne i8** %160, null
  br i1 %161, label %162, label %186

162:                                              ; preds = %159
  %163 = load i8**, i8*** %13, align 8
  %164 = load i8**, i8*** %14, align 8
  %165 = ptrtoint i8** %163 to i64
  %166 = ptrtoint i8** %164 to i64
  %167 = sub i64 %165, %166
  %168 = sdiv exact i64 %167, 8
  %169 = sub nsw i64 %168, 3
  %170 = inttoptr i64 %169 to i8*
  %171 = load i8**, i8*** %14, align 8
  store i8* %170, i8** %171, align 8
  %172 = load i8**, i8*** %14, align 8
  %173 = load i8*, i8** %172, align 8
  %174 = load i8**, i8*** %13, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i32 1
  store i8** %175, i8*** %13, align 8
  store i8* %173, i8** %174, align 8
  %176 = load i8**, i8*** %14, align 8
  %177 = load i8*, i8** %176, align 8
  %178 = load i8*, i8** %12, align 8
  %179 = icmp ugt i8* %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %162
  %181 = load i8**, i8*** %14, align 8
  %182 = load i8*, i8** %181, align 8
  store i8* %182, i8** %12, align 8
  br label %183

183:                                              ; preds = %180, %162
  %184 = load i8*, i8** %11, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %11, align 8
  br label %186

186:                                              ; preds = %183, %159
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load i8**, i8*** %188, align 8
  %190 = getelementptr inbounds i8*, i8** %189, i64 0
  store i8* null, i8** %190, align 8
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = load i8**, i8*** %192, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i64 1
  store i8* inttoptr (i64 6 to i8*), i8** %194, align 8
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = load i8**, i8*** %196, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 2
  store i8* inttoptr (i64 758 to i8*), i8** %198, align 8
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = load i8**, i8*** %200, align 8
  %202 = getelementptr inbounds i8*, i8** %201, i64 3
  store i8* null, i8** %202, align 8
  %203 = load i8**, i8*** %13, align 8
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 1
  %206 = ptrtoint i8** %203 to i64
  %207 = ptrtoint i8** %205 to i64
  %208 = sub i64 %206, %207
  %209 = sdiv exact i64 %208, 8
  %210 = mul i64 %209, 8
  %211 = inttoptr i64 %210 to i8*
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = load i8**, i8*** %213, align 8
  %215 = getelementptr inbounds i8*, i8** %214, i64 4
  store i8* %211, i8** %215, align 8
  %216 = load i8*, i8** %11, align 8
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = load i8**, i8*** %218, align 8
  %220 = getelementptr inbounds i8*, i8** %219, i64 5
  store i8* %216, i8** %220, align 8
  %221 = load i8*, i8** %12, align 8
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 0
  %224 = load i8**, i8*** %223, align 8
  %225 = getelementptr inbounds i8*, i8** %224, i64 6
  store i8* %221, i8** %225, align 8
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = inttoptr i64 %231 to i8*
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  %235 = load i8**, i8*** %234, align 8
  %236 = getelementptr inbounds i8*, i8** %235, i64 7
  store i8* %232, i8** %236, align 8
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  %243 = inttoptr i64 %242 to i8*
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 0
  %246 = load i8**, i8*** %245, align 8
  %247 = getelementptr inbounds i8*, i8** %246, i64 8
  store i8* %243, i8** %247, align 8
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = sext i32 %252 to i64
  %254 = inttoptr i64 %253 to i8*
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 0
  %257 = load i8**, i8*** %256, align 8
  %258 = getelementptr inbounds i8*, i8** %257, i64 9
  store i8* %254, i8** %258, align 8
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 3
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  %265 = inttoptr i64 %264 to i8*
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 0
  %268 = load i8**, i8*** %267, align 8
  %269 = getelementptr inbounds i8*, i8** %268, i64 10
  store i8* %265, i8** %269, align 8
  %270 = load i8*, i8** @META_CREATEREGION, align 8
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 1
  store i8* %270, i8** %272, align 8
  %273 = load i8**, i8*** %13, align 8
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %275 = bitcast %struct.TYPE_12__* %274 to i8**
  %276 = ptrtoint i8** %273 to i64
  %277 = ptrtoint i8** %275 to i64
  %278 = sub i64 %276, %277
  %279 = sdiv exact i64 %278, 8
  %280 = trunc i64 %279 to i32
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 2
  store i32 %280, i32* %282, align 8
  %283 = load i32, i32* %4, align 4
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 8
  %288 = mul nsw i32 %287, 2
  %289 = call i32 @MFDRV_WriteRecord(i32 %283, %struct.TYPE_12__* %284, i32 %288)
  store i32 %289, i32* %15, align 4
  %290 = call i32 (...) @GetProcessHeap()
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %292 = call i32 @HeapFree(i32 %290, i32 0, %struct.TYPE_12__* %291)
  %293 = call i32 (...) @GetProcessHeap()
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %295 = call i32 @HeapFree(i32 %293, i32 0, %struct.TYPE_12__* %294)
  %296 = load i32, i32* %15, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %300, label %298

298:                                              ; preds = %186
  %299 = call i32 @WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %304

300:                                              ; preds = %186
  %301 = load i32, i32* %4, align 4
  %302 = load i32, i32* %5, align 4
  %303 = call i32 @MFDRV_AddHandle(i32 %301, i32 %302)
  store i32 %303, i32* %3, align 4
  br label %304

304:                                              ; preds = %300, %298, %45, %25, %19
  %305 = load i32, i32* %3, align 4
  ret i32 %305
}

declare dso_local i32 @GetRegionData(i32, i32, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @MFDRV_WriteRecord(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @MFDRV_AddHandle(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
