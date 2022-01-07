; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_zipfile.c_zipfileStep.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_zipfile.c_zipfileStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_11__, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i64, i32, i8*, i8*, i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"wrong number of arguments to function zipfile()\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"first argument to zipfile() must be non-NULL\00", align 1
@SQLITE_NULL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"illegal method value: %d\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"non-directory name must not end with /\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@ZIPFILE_NEWENTRY_MADEBY = common dso_local global i32 0, align 4
@ZIPFILE_NEWENTRY_REQUIRED = common dso_local global i32 0, align 4
@ZIPFILE_NEWENTRY_FLAGS = common dso_local global i32 0, align 4
@ZIPFILE_LFH_FIXED_SZ = common dso_local global i32 0, align 4
@ZIPFILE_CDS_FIXED_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zipfileStep(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %29 = load i32, i32* @SQLITE_OK, align 4
  store i32 %29, i32* %16, align 4
  store i8* null, i8** %17, align 8
  store i32 -1, i32* %18, align 4
  store i8* null, i8** %19, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i8* null, i8** %22, align 8
  store i32 0, i32* %23, align 4
  store i8* null, i8** %24, align 8
  store i32 0, i32* %25, align 4
  store i8* null, i8** %26, align 8
  %30 = call i32 @memset(%struct.TYPE_8__* %8, i32 0, i32 72)
  %31 = load i32*, i32** %4, align 8
  %32 = call i64 @sqlite3_aggregate_context(i32* %31, i32 40)
  %33 = inttoptr i64 %32 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %7, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = icmp eq %struct.TYPE_9__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  br label %374

37:                                               ; preds = %3
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 2
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 4
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 5
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i8* %47, i8** %17, align 8
  %48 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %48, i32* %16, align 4
  br label %352

49:                                               ; preds = %43, %40, %37
  %50 = load i32**, i32*** %6, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 0
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %9, align 8
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32**, i32*** %6, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 1
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %12, align 8
  br label %76

59:                                               ; preds = %49
  %60 = load i32**, i32*** %6, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 1
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %10, align 8
  %63 = load i32**, i32*** %6, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 2
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %11, align 8
  %66 = load i32**, i32*** %6, align 8
  %67 = getelementptr inbounds i32*, i32** %66, i64 3
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %12, align 8
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 %69, 5
  br i1 %70, label %71, label %75

71:                                               ; preds = %59
  %72 = load i32**, i32*** %6, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 4
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %13, align 8
  br label %75

75:                                               ; preds = %71, %59
  br label %76

76:                                               ; preds = %75, %55
  %77 = load i32*, i32** %9, align 8
  %78 = call i64 @sqlite3_value_text(i32* %77)
  %79 = inttoptr i64 %78 to i8*
  store i8* %79, i8** %24, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @sqlite3_value_bytes(i32* %80)
  store i32 %81, i32* %25, align 4
  %82 = load i8*, i8** %24, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i8* %85, i8** %17, align 8
  %86 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %86, i32* %16, align 4
  br label %352

87:                                               ; preds = %76
  %88 = load i32*, i32** %13, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %109

90:                                               ; preds = %87
  %91 = load i64, i64* @SQLITE_NULL, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = call i64 @sqlite3_value_type(i32* %92)
  %94 = icmp ne i64 %91, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %90
  %96 = load i32*, i32** %13, align 8
  %97 = call i64 @sqlite3_value_int64(i32* %96)
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %18, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = load i32, i32* %18, align 4
  %103 = icmp ne i32 %102, 8
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i32, i32* %18, align 4
  %106 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  store i8* %106, i8** %17, align 8
  %107 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %107, i32* %16, align 4
  br label %352

108:                                              ; preds = %101, %95
  br label %109

109:                                              ; preds = %108, %90, %87
  %110 = load i32*, i32** %12, align 8
  %111 = call i64 @sqlite3_value_type(i32* %110)
  %112 = load i64, i64* @SQLITE_NULL, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  store i32 1, i32* %14, align 4
  store i32 0, i32* %18, align 4
  br label %149

115:                                              ; preds = %109
  %116 = load i32*, i32** %12, align 8
  %117 = call i8* @sqlite3_value_blob(i32* %116)
  store i8* %117, i8** %19, align 8
  %118 = load i32*, i32** %12, align 8
  %119 = call i32 @sqlite3_value_bytes(i32* %118)
  store i32 %119, i32* %20, align 4
  store i32 %119, i32* %21, align 4
  %120 = load i8*, i8** %19, align 8
  %121 = load i32, i32* %20, align 4
  %122 = call i32 @crc32(i32 0, i8* %120, i32 %121)
  store i32 %122, i32* %23, align 4
  %123 = load i32, i32* %18, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %115
  %126 = load i32, i32* %18, align 4
  %127 = icmp eq i32 %126, 8
  br i1 %127, label %128, label %148

128:                                              ; preds = %125, %115
  store i32 0, i32* %28, align 4
  %129 = load i8*, i8** %19, align 8
  %130 = load i32, i32* %20, align 4
  %131 = call i32 @zipfileDeflate(i8* %129, i32 %130, i8** %22, i32* %28, i8** %17)
  store i32 %131, i32* %16, align 4
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* @SQLITE_OK, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %352

136:                                              ; preds = %128
  %137 = load i32, i32* %18, align 4
  %138 = icmp eq i32 %137, 8
  br i1 %138, label %143, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %28, align 4
  %141 = load i32, i32* %20, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %139, %136
  %144 = load i8*, i8** %22, align 8
  store i8* %144, i8** %19, align 8
  %145 = load i32, i32* %28, align 4
  store i32 %145, i32* %20, align 4
  store i32 8, i32* %18, align 4
  br label %147

146:                                              ; preds = %139
  store i32 0, i32* %18, align 4
  br label %147

147:                                              ; preds = %146, %143
  br label %148

148:                                              ; preds = %147, %125
  br label %149

149:                                              ; preds = %148, %114
  %150 = load i32*, i32** %10, align 8
  %151 = load i32, i32* %14, align 4
  %152 = call i32 @zipfileGetMode(i32* %150, i32 %151, i32* %15, i8** %17)
  store i32 %152, i32* %16, align 4
  %153 = load i32, i32* %16, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %149
  br label %352

156:                                              ; preds = %149
  %157 = load i32*, i32** %11, align 8
  %158 = call i64 @zipfileGetTime(i32* %157)
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i64 %158, i64* %159, align 8
  %160 = load i32, i32* %14, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %175

162:                                              ; preds = %156
  %163 = load i8*, i8** %24, align 8
  %164 = load i32, i32* %25, align 4
  %165 = sub nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %163, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 47
  br i1 %170, label %171, label %174

171:                                              ; preds = %162
  %172 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  store i8* %172, i8** %17, align 8
  %173 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %173, i32* %16, align 4
  br label %352

174:                                              ; preds = %162
  br label %214

175:                                              ; preds = %156
  %176 = load i8*, i8** %24, align 8
  %177 = load i32, i32* %25, align 4
  %178 = sub nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %176, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp ne i32 %182, 47
  br i1 %183, label %184, label %194

184:                                              ; preds = %175
  %185 = load i8*, i8** %24, align 8
  %186 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %185)
  store i8* %186, i8** %26, align 8
  store i8* %186, i8** %24, align 8
  %187 = load i32, i32* %25, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %25, align 4
  %189 = load i8*, i8** %24, align 8
  %190 = icmp eq i8* %189, null
  br i1 %190, label %191, label %193

191:                                              ; preds = %184
  %192 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %192, i32* %16, align 4
  br label %352

193:                                              ; preds = %184
  br label %213

194:                                              ; preds = %175
  br label %195

195:                                              ; preds = %209, %194
  %196 = load i32, i32* %25, align 4
  %197 = icmp sgt i32 %196, 1
  br i1 %197, label %198, label %207

198:                                              ; preds = %195
  %199 = load i8*, i8** %24, align 8
  %200 = load i32, i32* %25, align 4
  %201 = sub nsw i32 %200, 2
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, i8* %199, i64 %202
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp eq i32 %205, 47
  br label %207

207:                                              ; preds = %198, %195
  %208 = phi i1 [ false, %195 ], [ %206, %198 ]
  br i1 %208, label %209, label %212

209:                                              ; preds = %207
  %210 = load i32, i32* %25, align 4
  %211 = add nsw i32 %210, -1
  store i32 %211, i32* %25, align 4
  br label %195

212:                                              ; preds = %207
  br label %213

213:                                              ; preds = %212, %193
  br label %214

214:                                              ; preds = %213, %174
  %215 = load i32, i32* @ZIPFILE_NEWENTRY_MADEBY, align 4
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 10
  store i32 %215, i32* %217, align 8
  %218 = load i32, i32* @ZIPFILE_NEWENTRY_REQUIRED, align 4
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 9
  store i32 %218, i32* %220, align 4
  %221 = load i32, i32* @ZIPFILE_NEWENTRY_FLAGS, align 4
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 8
  store i32 %221, i32* %223, align 8
  %224 = load i32, i32* %18, align 4
  %225 = sext i32 %224 to i64
  %226 = inttoptr i64 %225 to i8*
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 7
  store i8* %226, i8** %228, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = trunc i64 %231 to i32
  %233 = call i32 @zipfileMtimeToDos(%struct.TYPE_10__* %229, i32 %232)
  %234 = load i32, i32* %23, align 4
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 0
  store i32 %234, i32* %236, align 8
  %237 = load i32, i32* %20, align 4
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 4
  %240 = load i32, i32* %21, align 4
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 2
  store i32 %240, i32* %242, align 8
  %243 = load i32, i32* %15, align 4
  %244 = shl i32 %243, 16
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 3
  store i32 %244, i32* %246, align 4
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 4
  store i64 %250, i64* %252, align 8
  %253 = load i32, i32* %25, align 4
  %254 = sext i32 %253 to i64
  %255 = inttoptr i64 %254 to i8*
  %256 = ptrtoint i8* %255 to i32
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 5
  store i32 %256, i32* %258, align 8
  %259 = load i8*, i8** %24, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 6
  store i8* %259, i8** %261, align 8
  %262 = load i32, i32* @ZIPFILE_LFH_FIXED_SZ, align 4
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 8
  %266 = add nsw i32 %262, %265
  %267 = add nsw i32 %266, 9
  store i32 %267, i32* %27, align 4
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 2
  %270 = load i32, i32* %27, align 4
  %271 = call i32 @zipfileBufferGrow(%struct.TYPE_11__* %269, i32 %270)
  store i32 %271, i32* %16, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %214
  br label %352

274:                                              ; preds = %214
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = getelementptr inbounds i32, i32* %278, i64 %282
  %284 = call i64 @zipfileSerializeLFH(%struct.TYPE_8__* %8, i32* %283)
  %285 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = add i64 %288, %284
  store i64 %289, i64* %287, align 8
  %290 = load i32, i32* %20, align 4
  %291 = icmp sgt i32 %290, 0
  br i1 %291, label %292, label %319

292:                                              ; preds = %274
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 2
  %295 = load i32, i32* %20, align 4
  %296 = call i32 @zipfileBufferGrow(%struct.TYPE_11__* %294, i32 %295)
  store i32 %296, i32* %16, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %292
  br label %352

299:                                              ; preds = %292
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 2
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 1
  %303 = load i32*, i32** %302, align 8
  %304 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 2
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = getelementptr inbounds i32, i32* %303, i64 %307
  %309 = load i8*, i8** %19, align 8
  %310 = load i32, i32* %20, align 4
  %311 = call i32 @memcpy(i32* %308, i8* %309, i32 %310)
  %312 = load i32, i32* %20, align 4
  %313 = sext i32 %312 to i64
  %314 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = add i64 %317, %313
  store i64 %318, i64* %316, align 8
  br label %319

319:                                              ; preds = %299, %274
  %320 = load i32, i32* @ZIPFILE_CDS_FIXED_SZ, align 4
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i32 0, i32 5
  %323 = load i32, i32* %322, align 8
  %324 = add nsw i32 %320, %323
  %325 = add nsw i32 %324, 9
  store i32 %325, i32* %27, align 4
  %326 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i32 0, i32 1
  %328 = load i32, i32* %27, align 4
  %329 = call i32 @zipfileBufferGrow(%struct.TYPE_11__* %327, i32 %328)
  store i32 %329, i32* %16, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %319
  br label %352

332:                                              ; preds = %319
  %333 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 1
  %335 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %334, i32 0, i32 1
  %336 = load i32*, i32** %335, align 8
  %337 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = getelementptr inbounds i32, i32* %336, i64 %340
  %342 = call i64 @zipfileSerializeCDS(%struct.TYPE_8__* %8, i32* %341)
  %343 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %344 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = add i64 %346, %342
  store i64 %347, i64* %345, align 8
  %348 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %349, align 8
  br label %352

352:                                              ; preds = %332, %331, %298, %273, %191, %171, %155, %135, %104, %84, %46
  %353 = load i8*, i8** %22, align 8
  %354 = call i32 @sqlite3_free(i8* %353)
  %355 = load i8*, i8** %26, align 8
  %356 = call i32 @sqlite3_free(i8* %355)
  %357 = load i32, i32* %16, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %371

359:                                              ; preds = %352
  %360 = load i8*, i8** %17, align 8
  %361 = icmp ne i8* %360, null
  br i1 %361, label %362, label %366

362:                                              ; preds = %359
  %363 = load i32*, i32** %4, align 8
  %364 = load i8*, i8** %17, align 8
  %365 = call i32 @sqlite3_result_error(i32* %363, i8* %364, i32 -1)
  br label %370

366:                                              ; preds = %359
  %367 = load i32*, i32** %4, align 8
  %368 = load i32, i32* %16, align 4
  %369 = call i32 @sqlite3_result_error_code(i32* %367, i32 %368)
  br label %370

370:                                              ; preds = %366, %362
  br label %371

371:                                              ; preds = %370, %352
  %372 = load i8*, i8** %17, align 8
  %373 = call i32 @sqlite3_free(i8* %372)
  br label %374

374:                                              ; preds = %371, %36
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @sqlite3_aggregate_context(i32*, i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, ...) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i64 @sqlite3_value_int64(i32*) #1

declare dso_local i8* @sqlite3_value_blob(i32*) #1

declare dso_local i32 @crc32(i32, i8*, i32) #1

declare dso_local i32 @zipfileDeflate(i8*, i32, i8**, i32*, i8**) #1

declare dso_local i32 @zipfileGetMode(i32*, i32, i32*, i8**) #1

declare dso_local i64 @zipfileGetTime(i32*) #1

declare dso_local i32 @zipfileMtimeToDos(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @zipfileBufferGrow(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @zipfileSerializeLFH(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i64 @zipfileSerializeCDS(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3_result_error_code(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
