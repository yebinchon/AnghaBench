; ModuleID = '/home/carl/AnghaBench/wcdb/repair/extr_sqliterk_pager.c_sqliterkPagerParseHeader.c'
source_filename = "/home/carl/AnghaBench/wcdb/repair/extr_sqliterk_pager.c_sqliterkPagerParseHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i64, i32, i64 }

@SQLITERK_MISUSE = common dso_local global i32 0, align 4
@SQLITERK_OK = common dso_local global i32 0, align 4
@SQLITERK_NOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Not enough memory, required %zu bytes.\00", align 1
@SQLITERK_SHORT_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"File truncated.\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Cannot read file '%s': %s\00", align 1
@errno = common dso_local global i32 0, align 4
@SQLITERK_INTEGRITY_HEADER = common dso_local global i32 0, align 4
@SQLITERK_DAMAGED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Failed to decode page 1, header corrupted.\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"SQLite format 3\00\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Invalid page size: %d expected, %d returned.\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"Page size field is corrupted. Default page size %d is used\00", align 1
@SQLITRK_CONFIG_DEFAULT_PAGESIZE = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [62 x i8] c"Reserved bytes field doesn't match. %d expected, %d returned.\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"The [reserved bytes] field is corrupted. 0 is used\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"SQLite format magic corrupted.\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Failed to get size of file '%s': %s\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"The [free page count] field is corrupted. 0 is used\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @sqliterkPagerParseHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqliterkPagerParseHeader(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @SQLITERK_MISUSE, align 4
  store i32 %15, i32* %3, align 4
  br label %338

16:                                               ; preds = %2
  %17 = load i32, i32* @SQLITERK_OK, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 7
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  br label %34

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i32 [ %32, %29 ], [ 100, %33 ]
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i8* @sqliterkOSMalloc(i64 %37)
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @SQLITERK_NOMEM, align 4
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i64, i64* %7, align 8
  %45 = call i32 (i32, i8*, ...) @sqliterkOSError(i32 %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %44)
  br label %330

46:                                               ; preds = %34
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @sqliterkOSRead(i32 %49, i32 0, i8* %50, i64* %7)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @SQLITERK_OK, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %46
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @SQLITERK_SHORT_READ, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = call i32 (i32, i8*, ...) @sqliterkOSError(i32 %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %71

62:                                               ; preds = %55
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @sqliterkOSGetFilePath(i32 %66)
  %68 = load i32, i32* @errno, align 4
  %69 = call i32 @strerror(i32 %68)
  %70 = call i32 (i32, i8*, ...) @sqliterkOSError(i32 %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %69)
  br label %71

71:                                               ; preds = %62, %59
  %72 = load i32, i32* @SQLITERK_INTEGRITY_HEADER, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %330

78:                                               ; preds = %46
  %79 = load i32, i32* @SQLITERK_INTEGRITY_HEADER, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 7
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %78
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 7
  %91 = load i64, i64* %90, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @sqliterkCryptoDecode(i64 %91, i32 1, i8* %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @SQLITERK_OK, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %88
  %98 = load i32, i32* @SQLITERK_DAMAGED, align 4
  %99 = call i32 (i32, i8*, ...) @sqliterkOSWarning(i32 %98, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %100 = load i32, i32* @SQLITERK_INTEGRITY_HEADER, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %97, %88
  br label %107

107:                                              ; preds = %106, %78
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @SQLITERK_INTEGRITY_HEADER, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %254

114:                                              ; preds = %107
  %115 = load i8*, i8** %8, align 8
  %116 = call i64 @memcmp(i8* %115, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 16)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %230

118:                                              ; preds = %114
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 @sqliterkParseInt(i8* %119, i32 16, i32 2, i32* %9)
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 7
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %118
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %148

128:                                              ; preds = %125, %118
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %129, %132
  br i1 %133, label %134, label %147

134:                                              ; preds = %128
  %135 = load i32, i32* @SQLITERK_DAMAGED, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = call i32 (i32, i8*, ...) @sqliterkOSWarning(i32 %135, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %138, i32 %139)
  %141 = load i32, i32* @SQLITERK_INTEGRITY_HEADER, align 4
  %142 = xor i32 %141, -1
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, %142
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %134, %128
  br label %176

148:                                              ; preds = %125
  %149 = load i32, i32* %9, align 4
  %150 = sub nsw i32 %149, 1
  %151 = load i32, i32* %9, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %148
  %155 = load i32, i32* %9, align 4
  %156 = icmp slt i32 %155, 512
  br i1 %156, label %157, label %171

157:                                              ; preds = %154, %148
  %158 = load i32, i32* @SQLITERK_DAMAGED, align 4
  %159 = load i8*, i8** @SQLITRK_CONFIG_DEFAULT_PAGESIZE, align 8
  %160 = call i32 (i32, i8*, ...) @sqliterkOSWarning(i32 %158, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i8* %159)
  %161 = load i8*, i8** @SQLITRK_CONFIG_DEFAULT_PAGESIZE, align 8
  %162 = ptrtoint i8* %161 to i32
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load i32, i32* @SQLITERK_INTEGRITY_HEADER, align 4
  %166 = xor i32 %165, -1
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %169, %166
  store i32 %170, i32* %168, align 4
  br label %175

171:                                              ; preds = %154
  %172 = load i32, i32* %9, align 4
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  br label %175

175:                                              ; preds = %171, %157
  br label %176

176:                                              ; preds = %175, %147
  %177 = load i8*, i8** %8, align 8
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 2
  %180 = call i32 @sqliterkParseInt(i8* %177, i32 36, i32 4, i32* %179)
  %181 = load i8*, i8** %8, align 8
  %182 = call i32 @sqliterkParseInt(i8* %181, i32 20, i32 1, i32* %10)
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 7
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %207

187:                                              ; preds = %176
  %188 = load i32, i32* %10, align 4
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %188, %191
  br i1 %192, label %193, label %206

193:                                              ; preds = %187
  %194 = load i32, i32* @SQLITERK_DAMAGED, align 4
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %10, align 4
  %199 = call i32 (i32, i8*, ...) @sqliterkOSWarning(i32 %194, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i32 %197, i32 %198)
  %200 = load i32, i32* @SQLITERK_INTEGRITY_HEADER, align 4
  %201 = xor i32 %200, -1
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = and i32 %204, %201
  store i32 %205, i32* %203, align 4
  br label %206

206:                                              ; preds = %193, %187
  br label %229

207:                                              ; preds = %176
  %208 = load i32, i32* %10, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %207
  %211 = load i32, i32* %10, align 4
  %212 = icmp sgt i32 %211, 255
  br i1 %212, label %213, label %224

213:                                              ; preds = %210, %207
  %214 = load i32, i32* @SQLITERK_DAMAGED, align 4
  %215 = call i32 (i32, i8*, ...) @sqliterkOSWarning(i32 %214, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0))
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 3
  store i32 0, i32* %217, align 4
  %218 = load i32, i32* @SQLITERK_INTEGRITY_HEADER, align 4
  %219 = xor i32 %218, -1
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = and i32 %222, %219
  store i32 %223, i32* %221, align 4
  br label %228

224:                                              ; preds = %210
  %225 = load i32, i32* %10, align 4
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 3
  store i32 %225, i32* %227, align 4
  br label %228

228:                                              ; preds = %224, %213
  br label %229

229:                                              ; preds = %228, %206
  br label %253

230:                                              ; preds = %114
  %231 = load i32, i32* @SQLITERK_DAMAGED, align 4
  %232 = call i32 (i32, i8*, ...) @sqliterkOSWarning(i32 %231, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 7
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %244, label %237

237:                                              ; preds = %230
  %238 = load i8*, i8** @SQLITRK_CONFIG_DEFAULT_PAGESIZE, align 8
  %239 = ptrtoint i8* %238 to i32
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 0
  store i32 %239, i32* %241, align 8
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 3
  store i32 0, i32* %243, align 4
  br label %244

244:                                              ; preds = %237, %230
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 2
  store i32 0, i32* %246, align 8
  %247 = load i32, i32* @SQLITERK_INTEGRITY_HEADER, align 4
  %248 = xor i32 %247, -1
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = and i32 %251, %248
  store i32 %252, i32* %250, align 4
  br label %253

253:                                              ; preds = %244, %229
  br label %254

254:                                              ; preds = %253, %107
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 6
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @sqliterkOSFileSize(i32 %257, i64* %11)
  store i32 %258, i32* %6, align 4
  %259 = load i32, i32* %6, align 4
  %260 = load i32, i32* @SQLITERK_OK, align 4
  %261 = icmp ne i32 %259, %260
  br i1 %261, label %262, label %271

262:                                              ; preds = %254
  %263 = load i32, i32* %6, align 4
  %264 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 6
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @sqliterkOSGetFilePath(i32 %266)
  %268 = load i32, i32* @errno, align 4
  %269 = call i32 @strerror(i32 %268)
  %270 = call i32 (i32, i8*, ...) @sqliterkOSError(i32 %263, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %267, i32 %269)
  br label %330

271:                                              ; preds = %254
  %272 = load i64, i64* %11, align 8
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = sext i32 %275 to i64
  %277 = add i64 %272, %276
  %278 = sub i64 %277, 1
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = sext i32 %281 to i64
  %283 = udiv i64 %278, %282
  %284 = trunc i64 %283 to i32
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 4
  store i32 %284, i32* %286, align 8
  %287 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 8
  %290 = icmp slt i32 %289, 1
  br i1 %290, label %291, label %295

291:                                              ; preds = %271
  %292 = load i32, i32* @SQLITERK_DAMAGED, align 4
  store i32 %292, i32* %6, align 4
  %293 = load i32, i32* %6, align 4
  %294 = call i32 (i32, i8*, ...) @sqliterkOSError(i32 %293, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %330

295:                                              ; preds = %271
  %296 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %308, label %300

300:                                              ; preds = %295
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 4
  %306 = load i32, i32* %305, align 8
  %307 = icmp sgt i32 %303, %306
  br i1 %307, label %308, label %319

308:                                              ; preds = %300, %295
  %309 = load i32, i32* @SQLITERK_DAMAGED, align 4
  %310 = call i32 (i32, i8*, ...) @sqliterkOSWarning(i32 %309, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0))
  %311 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %311, i32 0, i32 2
  store i32 0, i32* %312, align 8
  %313 = load i32, i32* @SQLITERK_INTEGRITY_HEADER, align 4
  %314 = xor i32 %313, -1
  %315 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = and i32 %317, %314
  store i32 %318, i32* %316, align 4
  br label %319

319:                                              ; preds = %308, %300
  %320 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = sub nsw i32 %322, %325
  %327 = sext i32 %326 to i64
  %328 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %328, i32 0, i32 5
  store i64 %327, i64* %329, align 8
  br label %330

330:                                              ; preds = %319, %291, %262, %71, %41
  %331 = load i8*, i8** %8, align 8
  %332 = icmp ne i8* %331, null
  br i1 %332, label %333, label %336

333:                                              ; preds = %330
  %334 = load i8*, i8** %8, align 8
  %335 = call i32 @sqliterkOSFree(i8* %334)
  br label %336

336:                                              ; preds = %333, %330
  %337 = load i32, i32* %6, align 4
  store i32 %337, i32* %3, align 4
  br label %338

338:                                              ; preds = %336, %14
  %339 = load i32, i32* %3, align 4
  ret i32 %339
}

declare dso_local i8* @sqliterkOSMalloc(i64) #1

declare dso_local i32 @sqliterkOSError(i32, i8*, ...) #1

declare dso_local i32 @sqliterkOSRead(i32, i32, i8*, i64*) #1

declare dso_local i32 @sqliterkOSGetFilePath(i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @sqliterkCryptoDecode(i64, i32, i8*) #1

declare dso_local i32 @sqliterkOSWarning(i32, i8*, ...) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @sqliterkParseInt(i8*, i32, i32, i32*) #1

declare dso_local i32 @sqliterkOSFileSize(i32, i64*) #1

declare dso_local i32 @sqliterkOSFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
