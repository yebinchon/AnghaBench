; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_sqlite3rbu_step.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_sqlite3rbu_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, i64, i64, i32, i32, i32, %struct.TYPE_29__*, %struct.TYPE_24__*, i32, i32, i32, i32, %struct.TYPE_28__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 (%struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_27__*, i32, i32, i32, i8**)* }
%struct.TYPE_28__ = type { i32, i32, i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"user_version\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"application_id\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"DELETE FROM %s.'rbu_tmp_%q'\00", align 1
@SQLITE_ROW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1
@SQLITE_SYNC_NORMAL = common dso_local global i32 0, align 4
@RBU_STAGE_DONE = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3rbu_step(%struct.TYPE_26__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  %10 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %11 = icmp ne %struct.TYPE_26__* %10, null
  br i1 %11, label %12, label %330

12:                                               ; preds = %1
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %325 [
    i32 128, label %16
    i32 129, label %175
    i32 130, label %189
  ]

16:                                               ; preds = %12
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 13
  store %struct.TYPE_28__* %18, %struct.TYPE_28__** %4, align 8
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %20 = call i32 @rbuIsVacuum(%struct.TYPE_26__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %16
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SQLITE_OK, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %35 = call i32 @rbuCreateTargetSchema(%struct.TYPE_26__* %34)
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %37 = call i32 @rbuCopyPragma(%struct.TYPE_26__* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %39 = call i32 @rbuCopyPragma(%struct.TYPE_26__* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %33, %27, %22, %16
  br label %41

41:                                               ; preds = %119, %40
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SQLITE_OK, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %47, %41
  %53 = phi i1 [ false, %41 ], [ %51, %47 ]
  br i1 %53, label %54, label %123

54:                                               ; preds = %52
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %54
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %61 = call i32 @rbuIsVacuum(%struct.TYPE_26__* %60)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %59
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 12
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @rbuMPrintfExec(%struct.TYPE_26__* %69, i32 %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %68, %63, %59
  br label %119

81:                                               ; preds = %54
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %84 = call i32 @rbuObjIterPrepareAll(%struct.TYPE_26__* %82, %struct.TYPE_28__* %83, i32 0)
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SQLITE_OK, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %118

90:                                               ; preds = %81
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @sqlite3_step(i32 %93)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @SQLITE_ROW, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %90
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %104, align 8
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %108 = call i32 @rbuStep(%struct.TYPE_26__* %107)
  store i32 %108, i32* %2, align 4
  br label %332

109:                                              ; preds = %90
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @sqlite3_reset(i32 %112)
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 2
  store i64 0, i64* %117, align 8
  br label %118

118:                                              ; preds = %109, %81
  br label %119

119:                                              ; preds = %118, %80
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %122 = call i32 @rbuObjIterNext(%struct.TYPE_26__* %120, %struct.TYPE_28__* %121)
  br label %41

123:                                              ; preds = %52
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @SQLITE_OK, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %174

129:                                              ; preds = %123
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 0
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %137 = call i32 @rbuSaveState(%struct.TYPE_26__* %136, i32 129)
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %139 = call i32 @rbuIncrSchemaCookie(%struct.TYPE_26__* %138)
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @SQLITE_OK, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %155

145:                                              ; preds = %129
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 11
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 9
  %151 = call i8* @sqlite3_exec(i32 %148, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0, i32* %150)
  %152 = ptrtoint i8* %151 to i32
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %145, %129
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @SQLITE_OK, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %171

161:                                              ; preds = %155
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 10
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 9
  %167 = call i8* @sqlite3_exec(i32 %164, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0, i32* %166)
  %168 = ptrtoint i8* %167 to i32
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  br label %171

171:                                              ; preds = %161, %155
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 0
  store i32 129, i32* %173, align 8
  br label %174

174:                                              ; preds = %171, %123
  br label %326

175:                                              ; preds = %12
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @SQLITE_OK, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %188

181:                                              ; preds = %175
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %183 = call i32 @rbuMoveOalFile(%struct.TYPE_26__* %182)
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 8
  br label %188

188:                                              ; preds = %181, %175
  br label %326

189:                                              ; preds = %12
  %190 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @SQLITE_OK, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %324

195:                                              ; preds = %189
  %196 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = icmp uge i64 %198, %201
  br i1 %202, label %203, label %261

203:                                              ; preds = %195
  %204 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %204, i32 0, i32 8
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_27__*, %struct.TYPE_27__** %207, align 8
  store %struct.TYPE_27__* %208, %struct.TYPE_27__** %6, align 8
  %209 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %211, i32 0, i32 0
  %213 = load i32 (%struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_27__*, i32)** %212, align 8
  %214 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %215 = load i32, i32* @SQLITE_SYNC_NORMAL, align 4
  %216 = call i32 %213(%struct.TYPE_27__* %214, i32 %215)
  %217 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 4
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @SQLITE_OK, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %247

224:                                              ; preds = %203
  %225 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i32 0, i32 1
  %229 = load i32 (%struct.TYPE_27__*, i32, i32, i32, i8**)*, i32 (%struct.TYPE_27__*, i32, i32, i32, i8**)** %228, align 8
  %230 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %231 = call i32 %229(%struct.TYPE_27__* %230, i32 0, i32 32768, i32 0, i8** %7)
  %232 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %232, i32 0, i32 1
  store i32 %231, i32* %233, align 4
  %234 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @SQLITE_OK, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %246

239:                                              ; preds = %224
  %240 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = load i8*, i8** %7, align 8
  %244 = bitcast i8* %243 to i32*
  %245 = getelementptr inbounds i32, i32* %244, i64 24
  store volatile i32 %242, i32* %245, align 4
  br label %246

246:                                              ; preds = %239, %224
  br label %247

247:                                              ; preds = %246, %203
  %248 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @SQLITE_OK, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %260

253:                                              ; preds = %247
  %254 = load i32, i32* @RBU_STAGE_DONE, align 4
  %255 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %255, i32 0, i32 0
  store i32 %254, i32* %256, align 8
  %257 = load i32, i32* @SQLITE_DONE, align 4
  %258 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %258, i32 0, i32 1
  store i32 %257, i32* %259, align 4
  br label %260

260:                                              ; preds = %253, %247
  br label %319

261:                                              ; preds = %195
  br label %262

262:                                              ; preds = %316, %261
  %263 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %263, i32 0, i32 7
  %265 = load %struct.TYPE_29__*, %struct.TYPE_29__** %264, align 8
  %266 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %266, i32 0, i32 2
  %268 = load i64, i64* %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %265, i64 %268
  store %struct.TYPE_29__* %269, %struct.TYPE_29__** %9, align 8
  %270 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = sub nsw i32 %272, 1
  %274 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %274, i32 0, i32 5
  %276 = load i32, i32* %275, align 4
  %277 = sdiv i32 %273, %276
  store i32 %277, i32* %8, align 4
  %278 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %279 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %280 = call i32 @rbuCheckpointFrame(%struct.TYPE_26__* %278, %struct.TYPE_29__* %279)
  %281 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = add i64 %283, 1
  store i64 %284, i64* %282, align 8
  br label %285

285:                                              ; preds = %262
  %286 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %286, i32 0, i32 2
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %289, i32 0, i32 3
  %291 = load i64, i64* %290, align 8
  %292 = icmp ult i64 %288, %291
  br i1 %292, label %293, label %316

293:                                              ; preds = %285
  %294 = load i32, i32* %8, align 4
  %295 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %295, i32 0, i32 7
  %297 = load %struct.TYPE_29__*, %struct.TYPE_29__** %296, align 8
  %298 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %298, i32 0, i32 2
  %300 = load i64, i64* %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %297, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = sub nsw i32 %303, 1
  %305 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %305, i32 0, i32 5
  %307 = load i32, i32* %306, align 4
  %308 = sdiv i32 %304, %307
  %309 = icmp eq i32 %294, %308
  br i1 %309, label %310, label %316

310:                                              ; preds = %293
  %311 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* @SQLITE_OK, align 4
  %315 = icmp eq i32 %313, %314
  br label %316

316:                                              ; preds = %310, %293, %285
  %317 = phi i1 [ false, %293 ], [ false, %285 ], [ %315, %310 ]
  br i1 %317, label %262, label %318

318:                                              ; preds = %316
  br label %319

319:                                              ; preds = %318, %260
  %320 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %320, i32 0, i32 6
  %322 = load i32, i32* %321, align 8
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %321, align 8
  br label %324

324:                                              ; preds = %319, %189
  br label %326

325:                                              ; preds = %12
  br label %326

326:                                              ; preds = %325, %324, %188, %174
  %327 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %328 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  store i32 %329, i32* %2, align 4
  br label %332

330:                                              ; preds = %1
  %331 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %331, i32* %2, align 4
  br label %332

332:                                              ; preds = %330, %326, %98
  %333 = load i32, i32* %2, align 4
  ret i32 %333
}

declare dso_local i32 @rbuIsVacuum(%struct.TYPE_26__*) #1

declare dso_local i32 @rbuCreateTargetSchema(%struct.TYPE_26__*) #1

declare dso_local i32 @rbuCopyPragma(%struct.TYPE_26__*, i8*) #1

declare dso_local i32 @rbuMPrintfExec(%struct.TYPE_26__*, i32, i8*, i32, i32) #1

declare dso_local i32 @rbuObjIterPrepareAll(%struct.TYPE_26__*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @sqlite3_step(i32) #1

declare dso_local i32 @rbuStep(%struct.TYPE_26__*) #1

declare dso_local i32 @sqlite3_reset(i32) #1

declare dso_local i32 @rbuObjIterNext(%struct.TYPE_26__*, %struct.TYPE_28__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rbuSaveState(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @rbuIncrSchemaCookie(%struct.TYPE_26__*) #1

declare dso_local i8* @sqlite3_exec(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @rbuMoveOalFile(%struct.TYPE_26__*) #1

declare dso_local i32 @rbuCheckpointFrame(%struct.TYPE_26__*, %struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
