; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mpr/extr_wnet.c__enumeratorRememberedW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mpr/extr_wnet.c__enumeratorRememberedW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i8*, i8*, i8*, i32*, i32, i32, i32 }

@WN_SUCCESS = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@ERROR_NO_MORE_ITEMS = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@connectionType = common dso_local global i32 0, align 4
@RESOURCETYPE_ANY = common dso_local global i32 0, align 4
@RESOURCE_REMEMBERED = common dso_local global i32 0, align 4
@RESOURCEDISPLAYTYPE_GENERIC = common dso_local global i32 0, align 4
@RESOURCEUSAGE_CONNECTABLE = common dso_local global i32 0, align 4
@WN_MORE_DATA = common dso_local global i32 0, align 4
@providerName = common dso_local global i32 0, align 4
@remotePath = common dso_local global i32 0, align 4
@WN_NO_MORE_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i8*, i32*)* @_enumeratorRememberedW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_enumeratorRememberedW(%struct.TYPE_8__* %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [255 x i8], align 16
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_9__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %19, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %21, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %12, align 8
  store i32 0, i32* %20, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %15, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = ptrtoint i8* %37 to i64
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %38, %41
  %43 = sub i64 %42, 1
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %22, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %234, %4
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %66

59:                                               ; preds = %50
  %60 = load i32, i32* %20, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @WN_SUCCESS, align 4
  store i32 %65, i32* %14, align 4
  br label %237

66:                                               ; preds = %59, %50
  %67 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %68 = call i32 @ARRAY_SIZE(i8* %67)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %13, align 4
  %71 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %72 = call i32 @RegEnumKeyExW(i32 %69, i32 %70, i8* %71, i32* %16, i32* null, i32* null, i32* null, i32* null)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* @ERROR_SUCCESS, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %66
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* @ERROR_NO_MORE_ITEMS, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @WN_SUCCESS, align 4
  store i32 %81, i32* %14, align 4
  br label %82

82:                                               ; preds = %80, %76
  br label %237

83:                                               ; preds = %66
  %84 = load i32, i32* %9, align 4
  %85 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %86 = load i32, i32* @KEY_READ, align 4
  %87 = call i32 @RegOpenKeyExW(i32 %84, i8* %85, i32 0, i32 %86, i32* %10)
  %88 = load i32, i32* @ERROR_SUCCESS, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %234

91:                                               ; preds = %83
  store i32 56, i32* %19, align 4
  %92 = load i64, i64* %12, align 8
  %93 = sub i64 %92, 56
  store i64 %93, i64* %12, align 8
  %94 = load i64, i64* %12, align 8
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %126

96:                                               ; preds = %91
  store i32 4, i32* %17, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @connectionType, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = call i32 @RegQueryValueExW(i32 %97, i32 %98, i32* null, i32* null, i32* %100, i32* %17)
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* @RESOURCETYPE_ANY, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %96
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load i64, i64* %12, align 8
  %113 = add i64 %112, 56
  store i64 %113, i64* %12, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @RegCloseKey(i32 %114)
  br label %234

116:                                              ; preds = %105, %96
  %117 = load i32, i32* @RESOURCE_REMEMBERED, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 7
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* @RESOURCEDISPLAYTYPE_GENERIC, align 4
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 6
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @RESOURCEUSAGE_CONNECTABLE, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 8
  br label %128

126:                                              ; preds = %91
  %127 = load i32, i32* @WN_MORE_DATA, align 4
  store i32 %127, i32* %14, align 4
  br label %128

128:                                              ; preds = %126, %116
  %129 = load i32, i32* %19, align 4
  %130 = sext i32 %129 to i64
  %131 = add i64 %130, 3
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %19, align 4
  %133 = load i64, i64* %12, align 8
  %134 = sub i64 %133, 3
  store i64 %134, i64* %12, align 8
  %135 = load i64, i64* %12, align 8
  %136 = icmp sgt i64 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %128
  %138 = load i8*, i8** %22, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 -3
  store i8* %139, i8** %22, align 8
  %140 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %141 = load i8, i8* %140, align 16
  %142 = load i8*, i8** %22, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 0
  store i8 %141, i8* %143, align 1
  %144 = load i8*, i8** %22, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  store i8 58, i8* %145, align 1
  %146 = load i8*, i8** %22, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 2
  store i8 0, i8* %147, align 1
  %148 = load i8*, i8** %22, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  store i8* %148, i8** %150, align 8
  br label %151

151:                                              ; preds = %137, %128
  store i32 0, i32* %18, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* @providerName, align 4
  %154 = call i8* @get_reg_str(i32 %152, i32 %153, i32* %18)
  store i8* %154, i8** %23, align 8
  %155 = load i8*, i8** %23, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %186

157:                                              ; preds = %151
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* %19, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %19, align 4
  %161 = load i32, i32* %18, align 4
  %162 = sext i32 %161 to i64
  %163 = load i64, i64* %12, align 8
  %164 = sub nsw i64 %163, %162
  store i64 %164, i64* %12, align 8
  %165 = load i64, i64* %12, align 8
  %166 = icmp sgt i64 %165, 0
  br i1 %166, label %167, label %180

167:                                              ; preds = %157
  %168 = load i32, i32* %18, align 4
  %169 = sext i32 %168 to i64
  %170 = udiv i64 %169, 1
  %171 = load i8*, i8** %22, align 8
  %172 = sub i64 0, %170
  %173 = getelementptr inbounds i8, i8* %171, i64 %172
  store i8* %173, i8** %22, align 8
  %174 = load i8*, i8** %22, align 8
  %175 = load i8*, i8** %23, align 8
  %176 = call i32 @lstrcpyW(i8* %174, i8* %175)
  %177 = load i8*, i8** %22, align 8
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 2
  store i8* %177, i8** %179, align 8
  br label %182

180:                                              ; preds = %157
  %181 = load i32, i32* @WN_MORE_DATA, align 4
  store i32 %181, i32* %14, align 4
  br label %182

182:                                              ; preds = %180, %167
  %183 = call i32 (...) @GetProcessHeap()
  %184 = load i8*, i8** %23, align 8
  %185 = call i32 @HeapFree(i32 %183, i32 0, i8* %184)
  br label %186

186:                                              ; preds = %182, %151
  store i32 0, i32* %18, align 4
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* @remotePath, align 4
  %189 = call i8* @get_reg_str(i32 %187, i32 %188, i32* %18)
  store i8* %189, i8** %23, align 8
  %190 = load i8*, i8** %23, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %221

192:                                              ; preds = %186
  %193 = load i32, i32* %18, align 4
  %194 = load i32, i32* %19, align 4
  %195 = add nsw i32 %194, %193
  store i32 %195, i32* %19, align 4
  %196 = load i32, i32* %18, align 4
  %197 = sext i32 %196 to i64
  %198 = load i64, i64* %12, align 8
  %199 = sub nsw i64 %198, %197
  store i64 %199, i64* %12, align 8
  %200 = load i64, i64* %12, align 8
  %201 = icmp sgt i64 %200, 0
  br i1 %201, label %202, label %215

202:                                              ; preds = %192
  %203 = load i32, i32* %18, align 4
  %204 = sext i32 %203 to i64
  %205 = udiv i64 %204, 1
  %206 = load i8*, i8** %22, align 8
  %207 = sub i64 0, %205
  %208 = getelementptr inbounds i8, i8* %206, i64 %207
  store i8* %208, i8** %22, align 8
  %209 = load i8*, i8** %22, align 8
  %210 = load i8*, i8** %23, align 8
  %211 = call i32 @lstrcpyW(i8* %209, i8* %210)
  %212 = load i8*, i8** %22, align 8
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 3
  store i8* %212, i8** %214, align 8
  br label %217

215:                                              ; preds = %192
  %216 = load i32, i32* @WN_MORE_DATA, align 4
  store i32 %216, i32* %14, align 4
  br label %217

217:                                              ; preds = %215, %202
  %218 = call i32 (...) @GetProcessHeap()
  %219 = load i8*, i8** %23, align 8
  %220 = call i32 @HeapFree(i32 %218, i32 0, i8* %219)
  br label %221

221:                                              ; preds = %217, %186
  %222 = load i32, i32* %10, align 4
  %223 = call i32 @RegCloseKey(i32 %222)
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 4
  store i32* null, i32** %225, align 8
  %226 = load i64, i64* %12, align 8
  %227 = icmp slt i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %221
  br label %237

229:                                              ; preds = %221
  %230 = load i32, i32* %20, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %20, align 4
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 1
  store %struct.TYPE_9__* %233, %struct.TYPE_9__** %21, align 8
  br label %234

234:                                              ; preds = %229, %111, %90
  %235 = load i32, i32* %13, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %13, align 4
  br label %50

237:                                              ; preds = %228, %82, %64
  %238 = load i32, i32* %20, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %237
  %241 = load i32, i32* @WN_NO_MORE_ENTRIES, align 4
  store i32 %241, i32* %14, align 4
  br label %242

242:                                              ; preds = %240, %237
  %243 = load i32, i32* %20, align 4
  %244 = load i32*, i32** %6, align 8
  store i32 %243, i32* %244, align 4
  %245 = load i32, i32* %14, align 4
  %246 = load i32, i32* @WN_MORE_DATA, align 4
  %247 = icmp ne i32 %245, %246
  br i1 %247, label %248, label %254

248:                                              ; preds = %242
  %249 = load i32, i32* %14, align 4
  %250 = load i32, i32* @WN_NO_MORE_ENTRIES, align 4
  %251 = icmp ne i32 %249, %250
  br i1 %251, label %252, label %254

252:                                              ; preds = %248
  %253 = load i32, i32* @WN_SUCCESS, align 4
  store i32 %253, i32* %14, align 4
  br label %254

254:                                              ; preds = %252, %248, %242
  %255 = load i32, i32* %14, align 4
  %256 = load i32, i32* @WN_MORE_DATA, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %264

258:                                              ; preds = %254
  %259 = load i32*, i32** %8, align 8
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %19, align 4
  %262 = add nsw i32 %260, %261
  %263 = load i32*, i32** %8, align 8
  store i32 %262, i32* %263, align 4
  br label %264

264:                                              ; preds = %258, %254
  %265 = load i32, i32* %14, align 4
  ret i32 %265
}

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @RegEnumKeyExW(i32, i32, i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @RegQueryValueExW(i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i8* @get_reg_str(i32, i32, i32*) #1

declare dso_local i32 @lstrcpyW(i8*, i8*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
