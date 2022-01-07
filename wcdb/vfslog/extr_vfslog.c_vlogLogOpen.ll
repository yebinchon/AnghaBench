; ModuleID = '/home/carl/AnghaBench/wcdb/vfslog/extr_vfslog.c_vlogLogOpen.c'
source_filename = "/home/carl/AnghaBench/wcdb/vfslog/extr_vfslog.c_vlogLogOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_7__**, i8*, i64, i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"-wal\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"-journal\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"-mj??????9??\00", align 1
@SQLITE_MUTEX_STATIC_MASTER = common dso_local global i32 0, align 4
@allLogs = common dso_local global %struct.TYPE_7__* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"%.*s-vfslog\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%.*s-vfslo1\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ab+\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@SQLITE_MUTEX_FAST = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@vlogDefaultLogFlags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i8*)* @vlogLogOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @vlogLogOpen(i8* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 4
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = getelementptr inbounds i8, i8* %21, i64 -4
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 %26, 4
  store i32 %27, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %28

28:                                               ; preds = %25, %17, %1
  %29 = load i32, i32* %4, align 4
  %30 = icmp sgt i32 %29, 8
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = getelementptr inbounds i8, i8* %35, i64 -8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* %4, align 4
  %41 = sub nsw i32 %40, 8
  store i32 %41, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %55

42:                                               ; preds = %31, %28
  %43 = load i32, i32* %4, align 4
  %44 = icmp sgt i32 %43, 12
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i8*, i8** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = getelementptr inbounds i8, i8* %49, i64 -12
  %51 = call i64 @sqlite3_strglob(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %288

54:                                               ; preds = %45, %42
  br label %55

55:                                               ; preds = %54, %39
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 160, %57
  %59 = add i64 %58, 60
  %60 = trunc i64 %59 to i32
  %61 = call %struct.TYPE_7__* @sqlite3_malloc(i32 %60)
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** %8, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = icmp eq %struct.TYPE_7__* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %288

65:                                               ; preds = %55
  %66 = load i32, i32* @SQLITE_MUTEX_STATIC_MASTER, align 4
  %67 = call i8* @sqlite3_mutex_alloc(i32 %66)
  %68 = bitcast i8* %67 to i32*
  store i32* %68, i32** %6, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @sqlite3_mutex_enter(i32* %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** @allLogs, align 8
  store %struct.TYPE_7__* %71, %struct.TYPE_7__** %7, align 8
  br label %72

72:                                               ; preds = %91, %65
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %74 = icmp ne %struct.TYPE_7__* %73, null
  br i1 %74, label %75, label %95

75:                                               ; preds = %72
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load i8*, i8** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @memcmp(i8* %84, i8* %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %81
  br label %95

90:                                               ; preds = %81, %75
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 5
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  store %struct.TYPE_7__* %94, %struct.TYPE_7__** %7, align 8
  br label %72

95:                                               ; preds = %89, %72
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %97 = icmp eq %struct.TYPE_7__* %96, null
  br i1 %97, label %98, label %262

98:                                               ; preds = %95
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %99, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %101 = call i32 @memset(%struct.TYPE_7__* %100, i32 0, i32 160)
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 2
  %104 = bitcast %struct.TYPE_7__* %103 to i8*
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 60
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = load i32, i32* %4, align 4
  %113 = load i8*, i8** %3, align 8
  %114 = call i32 @sqlite3_snprintf(i32 %108, i8* %111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %112, i8* %113)
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, 60
  %117 = call i8* @alloca(i32 %116)
  store i8* %117, i8** %9, align 8
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %118, 60
  %120 = load i8*, i8** %9, align 8
  %121 = load i32, i32* %4, align 4
  %122 = load i8*, i8** %3, align 8
  %123 = call i32 @sqlite3_snprintf(i32 %119, i8* %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %121, i8* %122)
  %124 = load i8*, i8** %9, align 8
  %125 = call i64 @fopen(i8* %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 9
  store i64 %125, i64* %127, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = call i64 @gzopen(i8* %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 8
  store i64 %131, i64* %133, align 8
  %134 = load i32, i32* @SQLITE_MUTEX_FAST, align 4
  %135 = call i8* @sqlite3_mutex_alloc(i32 %134)
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 7
  store i8* %135, i8** %137, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 9
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %98
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 8
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 7
  %150 = load i8*, i8** %149, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %187, label %152

152:                                              ; preds = %147, %142, %98
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 9
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 9
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @fclose(i64 %160)
  br label %162

162:                                              ; preds = %157, %152
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 8
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 8
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @gzclose(i64 %170)
  br label %172

172:                                              ; preds = %167, %162
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 7
  %175 = load i8*, i8** %174, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %182

177:                                              ; preds = %172
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 7
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @sqlite3_mutex_free(i8* %180)
  br label %182

182:                                              ; preds = %177, %172
  %183 = load i32*, i32** %6, align 8
  %184 = call i32 @sqlite3_mutex_leave(i32* %183)
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %186 = call i32 @sqlite3_free(%struct.TYPE_7__* %185)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %288

187:                                              ; preds = %147
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 9
  %190 = load i64, i64* %189, align 8
  %191 = load i32, i32* @SEEK_END, align 4
  %192 = call i64 @fseek(i64 %190, i32 0, i32 %191)
  %193 = icmp sgt i64 %192, 0
  br i1 %193, label %194, label %220

194:                                              ; preds = %187
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 9
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* @SEEK_SET, align 4
  %199 = call i64 @fseek(i64 %197, i32 0, i32 %198)
  br label %200

200:                                              ; preds = %207, %194
  %201 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 9
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @fread(i8* %201, i32 1, i32 1024, i64 %204)
  store i32 %205, i32* %11, align 4
  %206 = icmp sge i32 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %200
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 8
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %212 = load i32, i32* %11, align 4
  %213 = call i32 @gzwrite(i64 %210, i8* %211, i32 %212)
  br label %200

214:                                              ; preds = %200
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 9
  %217 = load i64, i64* %216, align 8
  %218 = load i32, i32* @SEEK_END, align 4
  %219 = call i64 @fseek(i64 %217, i32 0, i32 %218)
  br label %220

220:                                              ; preds = %214, %187
  %221 = load i32, i32* %4, align 4
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 0
  store i32 %221, i32* %223, align 8
  %224 = load i32, i32* @vlogDefaultLogFlags, align 4
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 10
  store i32 %224, i32* %226, align 8
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i64 0
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 9
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i64 1
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 9
  store i64 %230, i64* %233, align 8
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i64 0
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 8
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i64 1
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 8
  store i64 %237, i64* %240, align 8
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i64 0
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 7
  %244 = load i8*, i8** %243, align 8
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i64 1
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 7
  store i8* %244, i8** %247, align 8
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 6
  store %struct.TYPE_7__** @allLogs, %struct.TYPE_7__*** %249, align 8
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** @allLogs, align 8
  %251 = icmp ne %struct.TYPE_7__* %250, null
  br i1 %251, label %252, label %257

252:                                              ; preds = %220
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 5
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** @allLogs, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 6
  store %struct.TYPE_7__** %254, %struct.TYPE_7__*** %256, align 8
  br label %257

257:                                              ; preds = %252, %220
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** @allLogs, align 8
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 5
  store %struct.TYPE_7__* %258, %struct.TYPE_7__** %260, align 8
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %261, %struct.TYPE_7__** @allLogs, align 8
  br label %262

262:                                              ; preds = %257, %95
  %263 = load i32*, i32** %6, align 8
  %264 = call i32 @sqlite3_mutex_leave(i32* %263)
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %266 = icmp ne %struct.TYPE_7__* %265, null
  br i1 %266, label %267, label %270

267:                                              ; preds = %262
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %269 = call i32 @sqlite3_free(%struct.TYPE_7__* %268)
  br label %270

270:                                              ; preds = %267, %262
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %272 = icmp ne %struct.TYPE_7__* %271, null
  br i1 %272, label %273, label %278

273:                                              ; preds = %270
  %274 = load i32, i32* %5, align 4
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %276 = sext i32 %274 to i64
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i64 %276
  store %struct.TYPE_7__* %277, %struct.TYPE_7__** %7, align 8
  br label %278

278:                                              ; preds = %273, %270
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 8
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %280, align 8
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 2
  store i32 -1, i32* %284, align 8
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 3
  store i32 -1, i32* %286, align 4
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %287, %struct.TYPE_7__** %2, align 8
  br label %288

288:                                              ; preds = %278, %182, %64, %53
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %289
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @sqlite3_strglob(i8*, i8*) #1

declare dso_local %struct.TYPE_7__* @sqlite3_malloc(i32) #1

declare dso_local i8* @sqlite3_mutex_alloc(i32) #1

declare dso_local i32 @sqlite3_mutex_enter(i32*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i32, i8*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i64 @fopen(i8*, i8*) #1

declare dso_local i64 @gzopen(i8*, i8*) #1

declare dso_local i32 @fclose(i64) #1

declare dso_local i32 @gzclose(i64) #1

declare dso_local i32 @sqlite3_mutex_free(i8*) #1

declare dso_local i32 @sqlite3_mutex_leave(i32*) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_7__*) #1

declare dso_local i64 @fseek(i64, i32, i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i64) #1

declare dso_local i32 @gzwrite(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
