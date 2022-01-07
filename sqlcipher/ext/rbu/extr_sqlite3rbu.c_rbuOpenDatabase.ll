; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuOpenDatabase.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuOpenDatabase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i64, i64, i8*, i64, i32, i64, i8*, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_14__ = type { i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"main\00", align 1
@SQLITE_FCNTL_RBUCNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"file://%s-vacuum?modeof=%s\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"ATTACH %Q AS stat\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@RBU_CREATE_STATE = common dso_local global i32 0, align 4
@SQLITE_NOTFOUND = common dso_local global i32 0, align 4
@RBU_STAGE_MOVE = common dso_local global i64 0, align 8
@SQLITE_ERROR = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"cannot vacuum wal mode database\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"file:\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"file:%s-vactmp?rbu_memory=1%s%s\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"rbu_tmp_insert\00", align 1
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@rbuTmpInsertFunc = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"rbu_fossil_delta\00", align 1
@rbuFossilDeltaFunc = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"rbu_target_name\00", align 1
@rbuTargetNameFunc = common dso_local global i32 0, align 4
@SQLITE_FCNTL_RBU = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [28 x i8] c"SELECT * FROM sqlite_master\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"rbu vfs not found\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32*)* @rbuOpenDatabase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbuOpenDatabase(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi i1 [ false, %15 ], [ %24, %20 ]
  br label %27

27:                                               ; preds = %25, %2
  %28 = phi i1 [ true, %2 ], [ %26, %25 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %27
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %37 = call i64 @rbuIsVacuum(%struct.TYPE_13__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %39, %35, %27
  %45 = phi i1 [ true, %35 ], [ true, %27 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 4
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @rbuOpenDbhandle(%struct.TYPE_13__* %48, i8* %51, i32 1)
  %53 = ptrtoint i8* %52 to i64
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SQLITE_OK, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %89

61:                                               ; preds = %44
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = call i64 @rbuIsVacuum(%struct.TYPE_13__* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %89

65:                                               ; preds = %61
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* @SQLITE_FCNTL_RBUCNT, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %71 = bitcast %struct.TYPE_13__* %70 to i8*
  %72 = call i8* @sqlite3_file_control(i64 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %69, i8* %71)
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %65
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i8* @sqlite3_db_filename(i64 %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %81, i8** %5, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = call i64 @rbuMPrintf(%struct.TYPE_13__* %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %83, i8* %84)
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 5
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %77, %65
  br label %89

89:                                               ; preds = %88, %61, %44
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %89
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = call i32 (%struct.TYPE_13__*, i64, i8*, ...) @rbuMPrintfExec(%struct.TYPE_13__* %95, i64 %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %101)
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 10
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @memcpy(i32 %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  br label %112

107:                                              ; preds = %89
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 10
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @memcpy(i32 %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %112

112:                                              ; preds = %107, %94
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* @RBU_CREATE_STATE, align 4
  %118 = sext i32 %117 to i64
  %119 = inttoptr i64 %118 to i8*
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 10
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (%struct.TYPE_13__*, i64, i8*, ...) @rbuMPrintfExec(%struct.TYPE_13__* %113, i64 %116, i8* %119, i32 %122)
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @SQLITE_OK, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %193

129:                                              ; preds = %112
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %131 = call i64 @rbuIsVacuum(%struct.TYPE_13__* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %193

133:                                              ; preds = %129
  store i32 0, i32* %6, align 4
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 6
  store i32 0, i32* %135, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 9
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %137, align 8
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* @SQLITE_FCNTL_RBUCNT, align 4
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %143 = bitcast %struct.TYPE_13__* %142 to i8*
  %144 = call i8* @sqlite3_file_control(i64 %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %141, i8* %143)
  %145 = ptrtoint i8* %144 to i32
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @SQLITE_NOTFOUND, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %133
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  br label %153

153:                                              ; preds = %149, %133
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 7
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @RBU_STAGE_MOVE, align 8
  %158 = icmp sge i64 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  store i32 1, i32* %6, align 4
  br label %175

160:                                              ; preds = %153
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %162 = call %struct.TYPE_14__* @rbuLoadState(%struct.TYPE_13__* %161)
  store %struct.TYPE_14__* %162, %struct.TYPE_14__** %8, align 8
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %164 = icmp ne %struct.TYPE_14__* %163, null
  br i1 %164, label %165, label %174

165:                                              ; preds = %160
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @RBU_STAGE_MOVE, align 8
  %170 = icmp sge i64 %168, %169
  %171 = zext i1 %170 to i32
  store i32 %171, i32* %6, align 4
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %173 = call i32 @rbuFreeState(%struct.TYPE_14__* %172)
  br label %174

174:                                              ; preds = %165, %160
  br label %175

175:                                              ; preds = %174, %159
  %176 = load i32, i32* %6, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %192

178:                                              ; preds = %175
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 4
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 8
  %186 = icmp sle i32 %185, 1
  %187 = zext i1 %186 to i32
  %188 = call i8* @rbuOpenDbhandle(%struct.TYPE_13__* %179, i8* %182, i32 %187)
  %189 = ptrtoint i8* %188 to i64
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 1
  store i64 %189, i64* %191, align 8
  br label %192

192:                                              ; preds = %178, %175
  br label %193

193:                                              ; preds = %192, %129, %112
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 7
  store i64 0, i64* %195, align 8
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @SQLITE_OK, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %331

201:                                              ; preds = %193
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %331

206:                                              ; preds = %201
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %208 = call i64 @rbuIsVacuum(%struct.TYPE_13__* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %220, label %210

210:                                              ; preds = %206
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = inttoptr i64 %214 to i8*
  %216 = call i8* @rbuOpenDbhandle(%struct.TYPE_13__* %211, i8* %215, i32 1)
  %217 = ptrtoint i8* %216 to i64
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 1
  store i64 %217, i64* %219, align 8
  br label %330

220:                                              ; preds = %206
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 9
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %256

227:                                              ; preds = %220
  %228 = load i32*, i32** %4, align 8
  %229 = icmp ne i32* %228, null
  br i1 %229, label %230, label %248

230:                                              ; preds = %227
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 9
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  store i64 0, i64* %234, align 8
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @sqlite3_close(i64 %237)
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = call i32 @sqlite3_close(i64 %241)
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 1
  store i64 0, i64* %244, align 8
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 2
  store i64 0, i64* %246, align 8
  %247 = load i32*, i32** %4, align 8
  store i32 1, i32* %247, align 4
  br label %436

248:                                              ; preds = %227
  %249 = load i8*, i8** @SQLITE_ERROR, align 8
  %250 = ptrtoint i8* %249 to i32
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 0
  store i32 %250, i32* %252, align 8
  %253 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 8
  store i8* %253, i8** %255, align 8
  br label %329

256:                                              ; preds = %220
  store i8* null, i8** %10, align 8
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 4
  %259 = load i8*, i8** %258, align 8
  %260 = call i32 @strlen(i8* %259)
  %261 = icmp sge i32 %260, 5
  br i1 %261, label %262, label %292

262:                                              ; preds = %256
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 4
  %265 = load i8*, i8** %264, align 8
  %266 = call i64 @memcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %265, i32 5)
  %267 = icmp eq i64 0, %266
  br i1 %267, label %268, label %292

268:                                              ; preds = %262
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 4
  %271 = load i8*, i8** %270, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 5
  store i8* %272, i8** %10, align 8
  br label %273

273:                                              ; preds = %284, %268
  %274 = load i8*, i8** %10, align 8
  %275 = load i8, i8* %274, align 1
  %276 = icmp ne i8 %275, 0
  br i1 %276, label %277, label %285

277:                                              ; preds = %273
  %278 = load i8*, i8** %10, align 8
  %279 = getelementptr inbounds i8, i8* %278, i32 1
  store i8* %279, i8** %10, align 8
  %280 = load i8, i8* %278, align 1
  %281 = sext i8 %280 to i32
  %282 = icmp eq i32 %281, 63
  br i1 %282, label %283, label %284

283:                                              ; preds = %277
  br label %285

284:                                              ; preds = %277
  br label %273

285:                                              ; preds = %283, %273
  %286 = load i8*, i8** %10, align 8
  %287 = load i8, i8* %286, align 1
  %288 = sext i8 %287 to i32
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %285
  store i8* null, i8** %10, align 8
  br label %291

291:                                              ; preds = %290, %285
  br label %292

292:                                              ; preds = %291, %262, %256
  %293 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i32 0, i32 2
  %295 = load i64, i64* %294, align 8
  %296 = call i8* @sqlite3_db_filename(i64 %295, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %297 = load i8*, i8** %10, align 8
  %298 = icmp eq i8* %297, null
  %299 = zext i1 %298 to i64
  %300 = select i1 %298, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)
  %301 = load i8*, i8** %10, align 8
  %302 = icmp eq i8* %301, null
  br i1 %302, label %303, label %304

303:                                              ; preds = %292
  br label %306

304:                                              ; preds = %292
  %305 = load i8*, i8** %10, align 8
  br label %306

306:                                              ; preds = %304, %303
  %307 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %303 ], [ %305, %304 ]
  %308 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %296, i8* %300, i8* %307)
  store i8* %308, i8** %9, align 8
  %309 = load i8*, i8** %9, align 8
  %310 = icmp eq i8* %309, null
  br i1 %310, label %311, label %315

311:                                              ; preds = %306
  %312 = load i32, i32* @SQLITE_NOMEM, align 4
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 0
  store i32 %312, i32* %314, align 8
  br label %436

315:                                              ; preds = %306
  %316 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %317 = load i8*, i8** %9, align 8
  %318 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i32 0, i32 6
  %320 = load i32, i32* %319, align 8
  %321 = icmp sle i32 %320, 1
  %322 = zext i1 %321 to i32
  %323 = call i8* @rbuOpenDbhandle(%struct.TYPE_13__* %316, i8* %317, i32 %322)
  %324 = ptrtoint i8* %323 to i64
  %325 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %325, i32 0, i32 1
  store i64 %324, i64* %326, align 8
  %327 = load i8*, i8** %9, align 8
  %328 = call i32 @sqlite3_free(i8* %327)
  br label %329

329:                                              ; preds = %315, %248
  br label %330

330:                                              ; preds = %329, %210
  br label %331

331:                                              ; preds = %330, %201, %193
  %332 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @SQLITE_OK, align 4
  %336 = icmp eq i32 %334, %335
  br i1 %336, label %337, label %349

337:                                              ; preds = %331
  %338 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %339 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %338, i32 0, i32 1
  %340 = load i64, i64* %339, align 8
  %341 = load i32, i32* @SQLITE_UTF8, align 4
  %342 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %343 = bitcast %struct.TYPE_13__* %342 to i8*
  %344 = load i32, i32* @rbuTmpInsertFunc, align 4
  %345 = call i8* @sqlite3_create_function(i64 %340, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 -1, i32 %341, i8* %343, i32 %344, i32 0, i32 0)
  %346 = ptrtoint i8* %345 to i32
  %347 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %348 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %347, i32 0, i32 0
  store i32 %346, i32* %348, align 8
  br label %349

349:                                              ; preds = %337, %331
  %350 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %351 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = load i32, i32* @SQLITE_OK, align 4
  %354 = icmp eq i32 %352, %353
  br i1 %354, label %355, label %365

355:                                              ; preds = %349
  %356 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %356, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = load i32, i32* @SQLITE_UTF8, align 4
  %360 = load i32, i32* @rbuFossilDeltaFunc, align 4
  %361 = call i8* @sqlite3_create_function(i64 %358, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 2, i32 %359, i8* null, i32 %360, i32 0, i32 0)
  %362 = ptrtoint i8* %361 to i32
  %363 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %364 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %363, i32 0, i32 0
  store i32 %362, i32* %364, align 8
  br label %365

365:                                              ; preds = %355, %349
  %366 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* @SQLITE_OK, align 4
  %370 = icmp eq i32 %368, %369
  br i1 %370, label %371, label %383

371:                                              ; preds = %365
  %372 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %373 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %372, i32 0, i32 2
  %374 = load i64, i64* %373, align 8
  %375 = load i32, i32* @SQLITE_UTF8, align 4
  %376 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %377 = bitcast %struct.TYPE_13__* %376 to i8*
  %378 = load i32, i32* @rbuTargetNameFunc, align 4
  %379 = call i8* @sqlite3_create_function(i64 %374, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 -1, i32 %375, i8* %377, i32 %378, i32 0, i32 0)
  %380 = ptrtoint i8* %379 to i32
  %381 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %382 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %381, i32 0, i32 0
  store i32 %380, i32* %382, align 8
  br label %383

383:                                              ; preds = %371, %365
  %384 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %385 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = load i32, i32* @SQLITE_OK, align 4
  %388 = icmp eq i32 %386, %387
  br i1 %388, label %389, label %400

389:                                              ; preds = %383
  %390 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %391 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %390, i32 0, i32 1
  %392 = load i64, i64* %391, align 8
  %393 = load i32, i32* @SQLITE_FCNTL_RBU, align 4
  %394 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %395 = bitcast %struct.TYPE_13__* %394 to i8*
  %396 = call i8* @sqlite3_file_control(i64 %392, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %393, i8* %395)
  %397 = ptrtoint i8* %396 to i32
  %398 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %399 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %398, i32 0, i32 0
  store i32 %397, i32* %399, align 8
  br label %400

400:                                              ; preds = %389, %383
  %401 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %402 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %403 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %402, i32 0, i32 1
  %404 = load i64, i64* %403, align 8
  %405 = call i32 (%struct.TYPE_13__*, i64, i8*, ...) @rbuMPrintfExec(%struct.TYPE_13__* %401, i64 %404, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  %406 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %407 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = load i32, i32* @SQLITE_OK, align 4
  %410 = icmp eq i32 %408, %409
  br i1 %410, label %411, label %422

411:                                              ; preds = %400
  %412 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %413 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %412, i32 0, i32 1
  %414 = load i64, i64* %413, align 8
  %415 = load i32, i32* @SQLITE_FCNTL_RBU, align 4
  %416 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %417 = bitcast %struct.TYPE_13__* %416 to i8*
  %418 = call i8* @sqlite3_file_control(i64 %414, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %415, i8* %417)
  %419 = ptrtoint i8* %418 to i32
  %420 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %421 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %420, i32 0, i32 0
  store i32 %419, i32* %421, align 8
  br label %422

422:                                              ; preds = %411, %400
  %423 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %424 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = load i32, i32* @SQLITE_NOTFOUND, align 4
  %427 = icmp eq i32 %425, %426
  br i1 %427, label %428, label %436

428:                                              ; preds = %422
  %429 = load i8*, i8** @SQLITE_ERROR, align 8
  %430 = ptrtoint i8* %429 to i32
  %431 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %432 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %431, i32 0, i32 0
  store i32 %430, i32* %432, align 8
  %433 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %434 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %435 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %434, i32 0, i32 8
  store i8* %433, i8** %435, align 8
  br label %436

436:                                              ; preds = %230, %311, %428, %422
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @rbuIsVacuum(%struct.TYPE_13__*) #1

declare dso_local i8* @rbuOpenDbhandle(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i8* @sqlite3_file_control(i64, i8*, i32, i8*) #1

declare dso_local i8* @sqlite3_db_filename(i64, i8*) #1

declare dso_local i64 @rbuMPrintf(%struct.TYPE_13__*, i8*, i8*, i8*) #1

declare dso_local i32 @rbuMPrintfExec(%struct.TYPE_13__*, i64, i8*, ...) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local %struct.TYPE_14__* @rbuLoadState(%struct.TYPE_13__*) #1

declare dso_local i32 @rbuFreeState(%struct.TYPE_14__*) #1

declare dso_local i32 @sqlite3_close(i64) #1

declare dso_local i8* @sqlite3_mprintf(i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i8* @sqlite3_create_function(i64, i8*, i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
