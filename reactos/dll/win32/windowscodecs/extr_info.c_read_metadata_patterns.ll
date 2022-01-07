; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_info.c_read_metadata_patterns.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_info.c_read_metadata_patterns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.metadata_container = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@read_metadata_patterns.uintformatW = internal constant [3 x i8] c"%u\00", align 1
@read_metadata_patterns.patternW = internal constant [8 x i8] c"Pattern\00", align 1
@read_metadata_patterns.positionW = internal constant [9 x i8] c"Position\00", align 1
@read_metadata_patterns.maskW = internal constant [5 x i8] c"Mask\00", align 1
@read_metadata_patterns.dataoffsetW = internal constant [11 x i8] c"DataOffset\00", align 1
@containers_keyname = common dso_local global i8* null, align 8
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@RRF_RT_REG_BINARY = common dso_local global i32 0, align 4
@RRF_RT_DWORD = common dso_local global i32 0, align 4
@RRF_RT_QWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32*, %struct.metadata_container*)* @read_metadata_patterns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_metadata_patterns(%struct.TYPE_11__* %0, i32* %1, %struct.metadata_container* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.metadata_container*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [11 x i8], align 1
  %10 = alloca [39 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.metadata_container* %2, %struct.metadata_container** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** @containers_keyname, align 8
  %24 = load i32, i32* @KEY_READ, align 4
  %25 = call i64 @RegOpenKeyExW(i32 %22, i8* %23, i32 0, i32 %24, i32* %12)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @ERROR_SUCCESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %268

30:                                               ; preds = %3
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds [39 x i8], [39 x i8]* %10, i64 0, i64 0
  %33 = call i32 @StringFromGUID2(i32* %31, i8* %32, i32 39)
  %34 = load i32, i32* %12, align 4
  %35 = getelementptr inbounds [39 x i8], [39 x i8]* %10, i64 0, i64 0
  %36 = load i32, i32* @KEY_READ, align 4
  %37 = call i64 @RegOpenKeyExW(i32 %34, i8* %35, i32 0, i32 %36, i32* %13)
  store i64 %37, i64* %11, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @RegCloseKey(i32 %38)
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* @ERROR_SUCCESS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %268

44:                                               ; preds = %30
  %45 = load i32, i32* %13, align 4
  %46 = call i64 @RegQueryInfoKeyW(i32 %45, i32* null, i32* null, i32* null, i32* %7, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null)
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* @ERROR_SUCCESS, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @RegCloseKey(i32 %51)
  br label %268

53:                                               ; preds = %44
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 40
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call %struct.TYPE_10__* @heap_alloc(i32 %58)
  store %struct.TYPE_10__* %59, %struct.TYPE_10__** %16, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %61 = icmp ne %struct.TYPE_10__* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @RegCloseKey(i32 %63)
  br label %268

65:                                               ; preds = %53
  store i32 0, i32* %15, align 4
  br label %66

66:                                               ; preds = %145, %65
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* @ERROR_SUCCESS, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %71, %72
  br label %74

74:                                               ; preds = %70, %66
  %75 = phi i1 [ false, %66 ], [ %73, %70 ]
  br i1 %75, label %76, label %148

76:                                               ; preds = %74
  %77 = getelementptr inbounds [11 x i8], [11 x i8]* %9, i64 0, i64 0
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @snprintfW(i8* %77, i32 11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @read_metadata_patterns.uintformatW, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %13, align 4
  %81 = getelementptr inbounds [11 x i8], [11 x i8]* %9, i64 0, i64 0
  %82 = load i32, i32* @KEY_READ, align 4
  %83 = call i64 @RegOpenKeyExW(i32 %80, i8* %81, i32 0, i32 %82, i32* %14)
  store i64 %83, i64* %11, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* @ERROR_SUCCESS, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  br label %148

88:                                               ; preds = %76
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* @RRF_RT_REG_BINARY, align 4
  %91 = call i64 @RegGetValueW(i32 %89, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @read_metadata_patterns.patternW, i64 0, i64 0), i32 %90, i32* null, %struct.TYPE_12__* null, i32* %18)
  store i64 %91, i64* %11, align 8
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* @ERROR_SUCCESS, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %142

95:                                               ; preds = %88
  %96 = load i32, i32* %18, align 4
  %97 = mul nsw i32 %96, 2
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %18, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %102 = load i32, i32* %15, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  store i32 %100, i32* %105, align 8
  store i32 4, i32* %19, align 4
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* @RRF_RT_DWORD, align 4
  %108 = load i32, i32* @RRF_RT_QWORD, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 4
  %115 = call i64 @RegGetValueW(i32 %106, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @read_metadata_patterns.dataoffsetW, i64 0, i64 0), i32 %109, i32* null, %struct.TYPE_12__* %114, i32* %19)
  store i64 %115, i64* %11, align 8
  %116 = load i64, i64* %11, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %95
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  store i64 0, i64* %124, align 8
  br label %125

125:                                              ; preds = %118, %95
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %127 = load i32, i32* %15, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  store i64 0, i64* %131, align 8
  store i32 4, i32* %19, align 4
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* @RRF_RT_DWORD, align 4
  %134 = load i32, i32* @RRF_RT_QWORD, align 4
  %135 = or i32 %133, %134
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %137 = load i32, i32* %15, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 3
  %141 = call i64 @RegGetValueW(i32 %132, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @read_metadata_patterns.positionW, i64 0, i64 0), i32 %135, i32* null, %struct.TYPE_12__* %140, i32* %19)
  store i64 %141, i64* %11, align 8
  br label %142

142:                                              ; preds = %125, %88
  %143 = load i32, i32* %14, align 4
  %144 = call i32 @RegCloseKey(i32 %143)
  br label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %15, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %15, align 4
  br label %66

148:                                              ; preds = %87, %74
  %149 = load i64, i64* %11, align 8
  %150 = load i64, i64* @ERROR_SUCCESS, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %157, label %152

152:                                              ; preds = %148
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %154 = load i32, i32* %8, align 4
  %155 = call %struct.TYPE_12__* @heap_realloc(%struct.TYPE_10__* %153, i32 %154)
  store %struct.TYPE_12__* %155, %struct.TYPE_12__** %17, align 8
  %156 = icmp ne %struct.TYPE_12__* %155, null
  br i1 %156, label %162, label %157

157:                                              ; preds = %152, %148
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %159 = call i32 @heap_free(%struct.TYPE_10__* %158)
  %160 = load i32, i32* %13, align 4
  %161 = call i32 @RegCloseKey(i32 %160)
  br label %268

162:                                              ; preds = %152
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %164 = bitcast %struct.TYPE_12__* %163 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %164, %struct.TYPE_10__** %16, align 8
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = mul i64 %166, 40
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i64 %167
  store %struct.TYPE_12__* %169, %struct.TYPE_12__** %17, align 8
  store i32 0, i32* %15, align 4
  br label %170

170:                                              ; preds = %246, %162
  %171 = load i64, i64* %11, align 8
  %172 = load i64, i64* @ERROR_SUCCESS, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* %7, align 4
  %177 = icmp slt i32 %175, %176
  br label %178

178:                                              ; preds = %174, %170
  %179 = phi i1 [ false, %170 ], [ %177, %174 ]
  br i1 %179, label %180, label %249

180:                                              ; preds = %178
  %181 = getelementptr inbounds [11 x i8], [11 x i8]* %9, i64 0, i64 0
  %182 = load i32, i32* %15, align 4
  %183 = call i32 @snprintfW(i8* %181, i32 11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @read_metadata_patterns.uintformatW, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* %13, align 4
  %185 = getelementptr inbounds [11 x i8], [11 x i8]* %9, i64 0, i64 0
  %186 = load i32, i32* @KEY_READ, align 4
  %187 = call i64 @RegOpenKeyExW(i32 %184, i8* %185, i32 0, i32 %186, i32* %14)
  store i64 %187, i64* %11, align 8
  %188 = load i64, i64* %11, align 8
  %189 = load i64, i64* @ERROR_SUCCESS, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %180
  br label %249

192:                                              ; preds = %180
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %194 = load i32, i32* %15, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  store i32 %198, i32* %18, align 4
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %201 = load i32, i32* %15, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 2
  store %struct.TYPE_12__* %199, %struct.TYPE_12__** %204, align 8
  %205 = load i32, i32* %18, align 4
  store i32 %205, i32* %19, align 4
  %206 = load i32, i32* %14, align 4
  %207 = load i32, i32* @RRF_RT_REG_BINARY, align 4
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %209 = load i32, i32* %15, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %212, align 8
  %214 = call i64 @RegGetValueW(i32 %206, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @read_metadata_patterns.patternW, i64 0, i64 0), i32 %207, i32* null, %struct.TYPE_12__* %213, i32* %19)
  store i64 %214, i64* %11, align 8
  %215 = load i32, i32* %18, align 4
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i64 %217
  store %struct.TYPE_12__* %218, %struct.TYPE_12__** %17, align 8
  %219 = load i64, i64* %11, align 8
  %220 = load i64, i64* @ERROR_SUCCESS, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %243

222:                                              ; preds = %192
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %225 = load i32, i32* %15, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 1
  store %struct.TYPE_12__* %223, %struct.TYPE_12__** %228, align 8
  %229 = load i32, i32* %18, align 4
  store i32 %229, i32* %19, align 4
  %230 = load i32, i32* %14, align 4
  %231 = load i32, i32* @RRF_RT_REG_BINARY, align 4
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %233 = load i32, i32* %15, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %236, align 8
  %238 = call i64 @RegGetValueW(i32 %230, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @read_metadata_patterns.maskW, i64 0, i64 0), i32 %231, i32* null, %struct.TYPE_12__* %237, i32* %19)
  store i64 %238, i64* %11, align 8
  %239 = load i32, i32* %18, align 4
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %241 = sext i32 %239 to i64
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i64 %241
  store %struct.TYPE_12__* %242, %struct.TYPE_12__** %17, align 8
  br label %243

243:                                              ; preds = %222, %192
  %244 = load i32, i32* %14, align 4
  %245 = call i32 @RegCloseKey(i32 %244)
  br label %246

246:                                              ; preds = %243
  %247 = load i32, i32* %15, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %15, align 4
  br label %170

249:                                              ; preds = %191, %178
  %250 = load i32, i32* %13, align 4
  %251 = call i32 @RegCloseKey(i32 %250)
  %252 = load i64, i64* %11, align 8
  %253 = load i64, i64* @ERROR_SUCCESS, align 8
  %254 = icmp ne i64 %252, %253
  br i1 %254, label %255, label %258

255:                                              ; preds = %249
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %257 = call i32 @heap_free(%struct.TYPE_10__* %256)
  br label %268

258:                                              ; preds = %249
  %259 = load i32, i32* %7, align 4
  %260 = load %struct.metadata_container*, %struct.metadata_container** %6, align 8
  %261 = getelementptr inbounds %struct.metadata_container, %struct.metadata_container* %260, i32 0, i32 0
  store i32 %259, i32* %261, align 8
  %262 = load i32, i32* %8, align 4
  %263 = load %struct.metadata_container*, %struct.metadata_container** %6, align 8
  %264 = getelementptr inbounds %struct.metadata_container, %struct.metadata_container* %263, i32 0, i32 1
  store i32 %262, i32* %264, align 4
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %266 = load %struct.metadata_container*, %struct.metadata_container** %6, align 8
  %267 = getelementptr inbounds %struct.metadata_container, %struct.metadata_container* %266, i32 0, i32 2
  store %struct.TYPE_10__* %265, %struct.TYPE_10__** %267, align 8
  br label %268

268:                                              ; preds = %258, %255, %157, %62, %50, %43, %29
  ret void
}

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @StringFromGUID2(i32*, i8*, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i64 @RegQueryInfoKeyW(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @heap_alloc(i32) #1

declare dso_local i32 @snprintfW(i8*, i32, i8*, i32) #1

declare dso_local i64 @RegGetValueW(i32, i32*, i8*, i32, i32*, %struct.TYPE_12__*, i32*) #1

declare dso_local %struct.TYPE_12__* @heap_realloc(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @heap_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
