; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_onefile.c_fsOpen.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_onefile.c_fsOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, {}* }
%struct.TYPE_26__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 (%struct.TYPE_26__*, i64*)*, i32 (%struct.TYPE_26__*, i8*, i32, i32)*, i32 (%struct.TYPE_26__*, i8*, i32, i32)*, i32 (%struct.TYPE_26__*)* }
%struct.TYPE_27__ = type { %struct.TYPE_24__*, %struct.TYPE_25__* }
%struct.TYPE_24__ = type { i8*, i32, i8, i32, %struct.TYPE_26__*, i32, %struct.TYPE_24__**, %struct.TYPE_24__*, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_24__*, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_OPEN_MAIN_DB = common dso_local global i32 0, align 4
@SQLITE_OPEN_MAIN_JOURNAL = common dso_local global i32 0, align 4
@tmp_io_methods = common dso_local global i32 0, align 4
@DATABASE_FILE = common dso_local global i32 0, align 4
@JOURNAL_FILE = common dso_local global i32 0, align 4
@fs_io_methods = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"-journal\00", align 1
@SQLITE_OPEN_TEMP_DB = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@BLOBSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, i8*, %struct.TYPE_26__*, i32, i32*)* @fsOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsOpen(%struct.TYPE_25__* %0, i8* %1, %struct.TYPE_26__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_24__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_26__*, align 8
  %22 = alloca %struct.TYPE_25__*, align 8
  %23 = alloca [4 x i8], align 1
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %25 = bitcast %struct.TYPE_25__* %24 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %25, %struct.TYPE_27__** %12, align 8
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %27 = bitcast %struct.TYPE_26__* %26 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %27, %struct.TYPE_28__** %13, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %14, align 8
  %28 = load i32, i32* @SQLITE_OK, align 4
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @SQLITE_OPEN_MAIN_DB, align 4
  %31 = load i32, i32* @SQLITE_OPEN_MAIN_JOURNAL, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp eq i32 0, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %5
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %37 = bitcast %struct.TYPE_26__* %36 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %37, %struct.TYPE_24__** %18, align 8
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %39 = call i32 @memset(%struct.TYPE_24__* %38, i32 0, i32 64)
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  store i32* @tmp_io_methods, i32** %42, align 8
  %43 = load i32, i32* @SQLITE_OK, align 4
  store i32 %43, i32* %6, align 4
  br label %336

44:                                               ; preds = %5
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @SQLITE_OPEN_MAIN_DB, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @DATABASE_FILE, align 4
  br label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @JOURNAL_FILE, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  store i32 %54, i32* %15, align 4
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  store i32* @fs_io_methods, i32** %57, align 8
  %58 = load i32, i32* %15, align 4
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %62 = icmp eq i32 %61, 8
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* @JOURNAL_FILE, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 8, i32 0
  %72 = sub nsw i32 %66, %71
  store i32 %72, i32* %16, align 4
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %74, align 8
  store %struct.TYPE_24__* %75, %struct.TYPE_24__** %14, align 8
  br label %76

76:                                               ; preds = %90, %53
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %78 = icmp ne %struct.TYPE_24__* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = load i32, i32* %16, align 4
  %85 = call i64 @strncmp(i8* %82, i8* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br label %87

87:                                               ; preds = %79, %76
  %88 = phi i1 [ false, %76 ], [ %86, %79 ]
  br i1 %88, label %89, label %94

89:                                               ; preds = %87
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 7
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %92, align 8
  store %struct.TYPE_24__* %93, %struct.TYPE_24__** %14, align 8
  br label %76

94:                                               ; preds = %87
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %96 = icmp ne %struct.TYPE_24__* %95, null
  br i1 %96, label %295, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @SQLITE_OPEN_MAIN_DB, align 4
  %100 = xor i32 %99, -1
  %101 = and i32 %98, %100
  %102 = load i32, i32* @SQLITE_OPEN_TEMP_DB, align 4
  %103 = or i32 %101, %102
  store i32 %103, i32* %19, align 4
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %105, align 8
  store %struct.TYPE_25__* %106, %struct.TYPE_25__** %22, align 8
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* @DATABASE_FILE, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = add i64 64, %115
  %117 = trunc i64 %116 to i32
  %118 = call i64 @sqlite3_malloc(i32 %117)
  %119 = inttoptr i64 %118 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %119, %struct.TYPE_24__** %14, align 8
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %121 = icmp ne %struct.TYPE_24__* %120, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %97
  %123 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %123, i32* %17, align 4
  br label %296

124:                                              ; preds = %97
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = add i64 64, %129
  %131 = trunc i64 %130 to i32
  %132 = call i32 @memset(%struct.TYPE_24__* %125, i32 0, i32 %131)
  %133 = load i8*, i8** %8, align 8
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 0
  store i8* %133, i8** %135, align 8
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i64 1
  %138 = bitcast %struct.TYPE_24__* %137 to %struct.TYPE_26__*
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 4
  store %struct.TYPE_26__* %138, %struct.TYPE_26__** %140, align 8
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 1
  %143 = bitcast {}** %142 to i32 (%struct.TYPE_25__*, i8*, %struct.TYPE_26__*, i32, i32*)**
  %144 = load i32 (%struct.TYPE_25__*, i8*, %struct.TYPE_26__*, i32, i32*)*, i32 (%struct.TYPE_25__*, i8*, %struct.TYPE_26__*, i32, i32*)** %143, align 8
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 4
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %148, align 8
  %150 = load i32, i32* %19, align 4
  %151 = load i32*, i32** %11, align 8
  %152 = call i32 %144(%struct.TYPE_25__* %145, i8* %146, %struct.TYPE_26__* %149, i32 %150, i32* %151)
  store i32 %152, i32* %17, align 4
  %153 = load i32, i32* %17, align 4
  %154 = load i32, i32* @SQLITE_OK, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %124
  br label %296

157:                                              ; preds = %124
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 4
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %159, align 8
  store %struct.TYPE_26__* %160, %struct.TYPE_26__** %21, align 8
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 0
  %165 = load i32 (%struct.TYPE_26__*, i64*)*, i32 (%struct.TYPE_26__*, i64*)** %164, align 8
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %167 = call i32 %165(%struct.TYPE_26__* %166, i64* %20)
  store i32 %167, i32* %17, align 4
  %168 = load i32, i32* %17, align 4
  %169 = load i32, i32* @SQLITE_OK, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %157
  br label %296

172:                                              ; preds = %157
  %173 = load i64, i64* %20, align 8
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %188

175:                                              ; preds = %172
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 1
  %180 = load i32 (%struct.TYPE_26__*, i8*, i32, i32)*, i32 (%struct.TYPE_26__*, i8*, i32, i32)** %179, align 8
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %182 = load i32, i32* @BLOBSIZE, align 4
  %183 = sub nsw i32 %182, 1
  %184 = call i32 %180(%struct.TYPE_26__* %181, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 %183)
  store i32 %184, i32* %17, align 4
  %185 = load i32, i32* @BLOBSIZE, align 4
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 8
  br label %265

188:                                              ; preds = %172
  %189 = load i64, i64* %20, align 8
  %190 = trunc i64 %189 to i32
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 8
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 2
  %197 = load i32 (%struct.TYPE_26__*, i8*, i32, i32)*, i32 (%struct.TYPE_26__*, i8*, i32, i32)** %196, align 8
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %199 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 0
  %200 = call i32 %197(%struct.TYPE_26__* %198, i8* %199, i32 4, i32 0)
  store i32 %200, i32* %17, align 4
  %201 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 0
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = shl i32 %203, 24
  %205 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 1
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  %208 = shl i32 %207, 16
  %209 = add nsw i32 %204, %208
  %210 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 2
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i32
  %213 = shl i32 %212, 8
  %214 = add nsw i32 %209, %213
  %215 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 3
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i32
  %218 = add nsw i32 %214, %217
  %219 = trunc i32 %218 to i8
  %220 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i32 0, i32 2
  store i8 %219, i8* %221, align 4
  %222 = load i32, i32* %17, align 4
  %223 = load i32, i32* @SQLITE_OK, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %264

225:                                              ; preds = %188
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %227 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %228, i32 0, i32 2
  %230 = load i32 (%struct.TYPE_26__*, i8*, i32, i32)*, i32 (%struct.TYPE_26__*, i8*, i32, i32)** %229, align 8
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %232 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 0
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = sub nsw i32 %235, 4
  %237 = call i32 %230(%struct.TYPE_26__* %231, i8* %232, i32 4, i32 %236)
  store i32 %237, i32* %17, align 4
  %238 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 0
  %239 = load i8, i8* %238, align 1
  %240 = zext i8 %239 to i32
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %257, label %242

242:                                              ; preds = %225
  %243 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 1
  %244 = load i8, i8* %243, align 1
  %245 = zext i8 %244 to i32
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %257, label %247

247:                                              ; preds = %242
  %248 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 2
  %249 = load i8, i8* %248, align 1
  %250 = zext i8 %249 to i32
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %257, label %252

252:                                              ; preds = %247
  %253 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 3
  %254 = load i8, i8* %253, align 1
  %255 = zext i8 %254 to i32
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %252, %247, %242, %225
  %258 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %259 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %261, i32 0, i32 3
  store i32 %260, i32* %262, align 8
  br label %263

263:                                              ; preds = %257, %252
  br label %264

264:                                              ; preds = %263, %188
  br label %265

265:                                              ; preds = %264, %175
  %266 = load i32, i32* %17, align 4
  %267 = load i32, i32* @SQLITE_OK, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %294

269:                                              ; preds = %265
  %270 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %271 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_24__*, %struct.TYPE_24__** %271, align 8
  %273 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %274 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %273, i32 0, i32 7
  store %struct.TYPE_24__* %272, %struct.TYPE_24__** %274, align 8
  %275 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %276 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %275, i32 0, i32 7
  %277 = load %struct.TYPE_24__*, %struct.TYPE_24__** %276, align 8
  %278 = icmp ne %struct.TYPE_24__* %277, null
  br i1 %278, label %279, label %286

279:                                              ; preds = %269
  %280 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %281 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %280, i32 0, i32 7
  %282 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %283 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %282, i32 0, i32 7
  %284 = load %struct.TYPE_24__*, %struct.TYPE_24__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %284, i32 0, i32 6
  store %struct.TYPE_24__** %281, %struct.TYPE_24__*** %285, align 8
  br label %286

286:                                              ; preds = %279, %269
  %287 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %288 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %290 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %289, i32 0, i32 6
  store %struct.TYPE_24__** %288, %struct.TYPE_24__*** %290, align 8
  %291 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %292 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %293 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %292, i32 0, i32 0
  store %struct.TYPE_24__* %291, %struct.TYPE_24__** %293, align 8
  br label %294

294:                                              ; preds = %286, %265
  br label %295

295:                                              ; preds = %294, %94
  br label %296

296:                                              ; preds = %295, %171, %156, %122
  %297 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %298 = icmp ne %struct.TYPE_24__* %297, null
  br i1 %298, label %299, label %334

299:                                              ; preds = %296
  %300 = load i32, i32* %17, align 4
  %301 = load i32, i32* @SQLITE_OK, align 4
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %303, label %311

303:                                              ; preds = %299
  %304 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %305 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %306 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %305, i32 0, i32 1
  store %struct.TYPE_24__* %304, %struct.TYPE_24__** %306, align 8
  %307 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %308 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %307, i32 0, i32 5
  %309 = load i32, i32* %308, align 8
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %308, align 8
  br label %333

311:                                              ; preds = %299
  %312 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %313 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %312, i32 0, i32 4
  %314 = load %struct.TYPE_26__*, %struct.TYPE_26__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %314, i32 0, i32 0
  %316 = load %struct.TYPE_23__*, %struct.TYPE_23__** %315, align 8
  %317 = icmp ne %struct.TYPE_23__* %316, null
  br i1 %317, label %318, label %330

318:                                              ; preds = %311
  %319 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %320 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %319, i32 0, i32 4
  %321 = load %struct.TYPE_26__*, %struct.TYPE_26__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %321, i32 0, i32 0
  %323 = load %struct.TYPE_23__*, %struct.TYPE_23__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %323, i32 0, i32 3
  %325 = load i32 (%struct.TYPE_26__*)*, i32 (%struct.TYPE_26__*)** %324, align 8
  %326 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %327 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %326, i32 0, i32 4
  %328 = load %struct.TYPE_26__*, %struct.TYPE_26__** %327, align 8
  %329 = call i32 %325(%struct.TYPE_26__* %328)
  br label %330

330:                                              ; preds = %318, %311
  %331 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %332 = call i32 @sqlite3_free(%struct.TYPE_24__* %331)
  br label %333

333:                                              ; preds = %330, %303
  br label %334

334:                                              ; preds = %333, %296
  %335 = load i32, i32* %17, align 4
  store i32 %335, i32* %6, align 4
  br label %336

336:                                              ; preds = %334, %35
  %337 = load i32, i32* %6, align 4
  ret i32 %337
}

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @sqlite3_malloc(i32) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
