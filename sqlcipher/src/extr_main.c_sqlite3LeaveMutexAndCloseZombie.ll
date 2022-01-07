; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_main.c_sqlite3LeaveMutexAndCloseZombie.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_main.c_sqlite3LeaveMutexAndCloseZombie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64, i32, %struct.TYPE_27__, i32, %struct.Db*, %struct.TYPE_26__, i32, i32, i32, i32, %struct.Db* }
%struct.TYPE_27__ = type { %struct.TYPE_28__*, i64 }
%struct.TYPE_26__ = type { %struct.TYPE_28__*, %struct.TYPE_28__* }
%struct.Db = type { %struct.TYPE_29__*, i64 }
%struct.TYPE_29__ = type { i32, i32 (i32)*, i32, i32 (i32)*, %struct.TYPE_29__* }

@SQLITE_MAGIC_ZOMBIE = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_MAGIC_ERROR = common dso_local global i64 0, align 8
@SQLITE_MAGIC_CLOSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3LeaveMutexAndCloseZombie(%struct.TYPE_28__* %0) #0 {
  %2 = alloca %struct.TYPE_28__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Db*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %2, align 8
  %10 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SQLITE_MAGIC_ZOMBIE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %17 = call i64 @connectionIsBusy(%struct.TYPE_28__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15, %1
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @sqlite3_mutex_leave(i32 %22)
  br label %267

24:                                               ; preds = %15
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %26 = load i32, i32* @SQLITE_OK, align 4
  %27 = call i32 @sqlite3RollbackAll(%struct.TYPE_28__* %25, i32 %26)
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %29 = call i32 @sqlite3CloseSavepoints(%struct.TYPE_28__* %28)
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %61, %24
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %30
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 4
  %39 = load %struct.Db*, %struct.Db** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.Db, %struct.Db* %39, i64 %41
  store %struct.Db* %42, %struct.Db** %5, align 8
  %43 = load %struct.Db*, %struct.Db** %5, align 8
  %44 = getelementptr inbounds %struct.Db, %struct.Db* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %36
  %48 = load %struct.Db*, %struct.Db** %5, align 8
  %49 = getelementptr inbounds %struct.Db, %struct.Db* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @sqlite3BtreeClose(i64 %50)
  %52 = load %struct.Db*, %struct.Db** %5, align 8
  %53 = getelementptr inbounds %struct.Db, %struct.Db* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load %struct.Db*, %struct.Db** %5, align 8
  %58 = getelementptr inbounds %struct.Db, %struct.Db* %57, i32 0, i32 0
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %58, align 8
  br label %59

59:                                               ; preds = %56, %47
  br label %60

60:                                               ; preds = %59, %36
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %30

64:                                               ; preds = %30
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 4
  %67 = load %struct.Db*, %struct.Db** %66, align 8
  %68 = getelementptr inbounds %struct.Db, %struct.Db* %67, i64 1
  %69 = getelementptr inbounds %struct.Db, %struct.Db* %68, i32 0, i32 0
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %69, align 8
  %71 = icmp ne %struct.TYPE_29__* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %64
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 4
  %75 = load %struct.Db*, %struct.Db** %74, align 8
  %76 = getelementptr inbounds %struct.Db, %struct.Db* %75, i64 1
  %77 = getelementptr inbounds %struct.Db, %struct.Db* %76, i32 0, i32 0
  %78 = load %struct.TYPE_29__*, %struct.TYPE_29__** %77, align 8
  %79 = call i32 @sqlite3SchemaClear(%struct.TYPE_29__* %78)
  br label %80

80:                                               ; preds = %72, %64
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %82 = call i32 @sqlite3VtabUnlockList(%struct.TYPE_28__* %81)
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %84 = call i32 @sqlite3CollapseDatabaseArray(%struct.TYPE_28__* %83)
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp sle i32 %87, 2
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 4
  %93 = load %struct.Db*, %struct.Db** %92, align 8
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %94, i32 0, i32 10
  %96 = load %struct.Db*, %struct.Db** %95, align 8
  %97 = icmp eq %struct.Db* %93, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %101 = call i32 @sqlite3ConnectionClosed(%struct.TYPE_28__* %100)
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 9
  %104 = call i32* @sqliteHashFirst(i32* %103)
  store i32* %104, i32** %3, align 8
  br label %105

105:                                              ; preds = %126, %80
  %106 = load i32*, i32** %3, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %129

108:                                              ; preds = %105
  %109 = load i32*, i32** %3, align 8
  %110 = call %struct.TYPE_29__* @sqliteHashData(i32* %109)
  store %struct.TYPE_29__* %110, %struct.TYPE_29__** %7, align 8
  br label %111

111:                                              ; preds = %122, %108
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %114 = call i32 @functionDestroy(%struct.TYPE_28__* %112, %struct.TYPE_29__* %113)
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %115, i32 0, i32 4
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %116, align 8
  store %struct.TYPE_29__* %117, %struct.TYPE_29__** %6, align 8
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %119 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %120 = call i32 @sqlite3DbFree(%struct.TYPE_28__* %118, %struct.TYPE_29__* %119)
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  store %struct.TYPE_29__* %121, %struct.TYPE_29__** %7, align 8
  br label %122

122:                                              ; preds = %111
  %123 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %124 = icmp ne %struct.TYPE_29__* %123, null
  br i1 %124, label %111, label %125

125:                                              ; preds = %122
  br label %126

126:                                              ; preds = %125
  %127 = load i32*, i32** %3, align 8
  %128 = call i32* @sqliteHashNext(i32* %127)
  store i32* %128, i32** %3, align 8
  br label %105

129:                                              ; preds = %105
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 9
  %132 = call i32 @sqlite3HashClear(i32* %131)
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i32 0, i32 8
  %135 = call i32* @sqliteHashFirst(i32* %134)
  store i32* %135, i32** %3, align 8
  br label %136

136:                                              ; preds = %175, %129
  %137 = load i32*, i32** %3, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %178

139:                                              ; preds = %136
  %140 = load i32*, i32** %3, align 8
  %141 = call %struct.TYPE_29__* @sqliteHashData(i32* %140)
  store %struct.TYPE_29__* %141, %struct.TYPE_29__** %8, align 8
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %168, %139
  %143 = load i32, i32* %4, align 4
  %144 = icmp slt i32 %143, 3
  br i1 %144, label %145, label %171

145:                                              ; preds = %142
  %146 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %147 = load i32, i32* %4, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %149, i32 0, i32 3
  %151 = load i32 (i32)*, i32 (i32)** %150, align 8
  %152 = icmp ne i32 (i32)* %151, null
  br i1 %152, label %153, label %167

153:                                              ; preds = %145
  %154 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %155 = load i32, i32* %4, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %157, i32 0, i32 3
  %159 = load i32 (i32)*, i32 (i32)** %158, align 8
  %160 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %161 = load i32, i32* %4, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 %159(i32 %165)
  br label %167

167:                                              ; preds = %153, %145
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %4, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %4, align 4
  br label %142

171:                                              ; preds = %142
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %174 = call i32 @sqlite3DbFree(%struct.TYPE_28__* %172, %struct.TYPE_29__* %173)
  br label %175

175:                                              ; preds = %171
  %176 = load i32*, i32** %3, align 8
  %177 = call i32* @sqliteHashNext(i32* %176)
  store i32* %177, i32** %3, align 8
  br label %136

178:                                              ; preds = %136
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %179, i32 0, i32 8
  %181 = call i32 @sqlite3HashClear(i32* %180)
  %182 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %182, i32 0, i32 7
  %184 = call i32* @sqliteHashFirst(i32* %183)
  store i32* %184, i32** %3, align 8
  br label %185

185:                                              ; preds = %210, %178
  %186 = load i32*, i32** %3, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %213

188:                                              ; preds = %185
  %189 = load i32*, i32** %3, align 8
  %190 = call %struct.TYPE_29__* @sqliteHashData(i32* %189)
  store %struct.TYPE_29__* %190, %struct.TYPE_29__** %9, align 8
  %191 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %191, i32 0, i32 1
  %193 = load i32 (i32)*, i32 (i32)** %192, align 8
  %194 = icmp ne i32 (i32)* %193, null
  br i1 %194, label %195, label %203

195:                                              ; preds = %188
  %196 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %196, i32 0, i32 1
  %198 = load i32 (i32)*, i32 (i32)** %197, align 8
  %199 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 %198(i32 %201)
  br label %203

203:                                              ; preds = %195, %188
  %204 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %205 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %206 = call i32 @sqlite3VtabEponymousTableClear(%struct.TYPE_28__* %204, %struct.TYPE_29__* %205)
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %208 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %209 = call i32 @sqlite3DbFree(%struct.TYPE_28__* %207, %struct.TYPE_29__* %208)
  br label %210

210:                                              ; preds = %203
  %211 = load i32*, i32** %3, align 8
  %212 = call i32* @sqliteHashNext(i32* %211)
  store i32* %212, i32** %3, align 8
  br label %185

213:                                              ; preds = %185
  %214 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %214, i32 0, i32 7
  %216 = call i32 @sqlite3HashClear(i32* %215)
  %217 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %218 = load i32, i32* @SQLITE_OK, align 4
  %219 = call i32 @sqlite3Error(%struct.TYPE_28__* %217, i32 %218)
  %220 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %220, i32 0, i32 6
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @sqlite3ValueFree(i32 %222)
  %224 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %225 = call i32 @sqlite3CloseExtensions(%struct.TYPE_28__* %224)
  %226 = load i64, i64* @SQLITE_MAGIC_ERROR, align 8
  %227 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %228 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %227, i32 0, i32 0
  store i64 %226, i64* %228, align 8
  %229 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %230 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %230, i32 0, i32 4
  %232 = load %struct.Db*, %struct.Db** %231, align 8
  %233 = getelementptr inbounds %struct.Db, %struct.Db* %232, i64 1
  %234 = getelementptr inbounds %struct.Db, %struct.Db* %233, i32 0, i32 0
  %235 = load %struct.TYPE_29__*, %struct.TYPE_29__** %234, align 8
  %236 = call i32 @sqlite3DbFree(%struct.TYPE_28__* %229, %struct.TYPE_29__* %235)
  %237 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @sqlite3_mutex_leave(i32 %239)
  %241 = load i64, i64* @SQLITE_MAGIC_CLOSED, align 8
  %242 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %243 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %242, i32 0, i32 0
  store i64 %241, i64* %243, align 8
  %244 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @sqlite3_mutex_free(i32 %246)
  %248 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %249 = call i64 @sqlite3LookasideUsed(%struct.TYPE_28__* %248, i32 0)
  %250 = icmp eq i64 %249, 0
  %251 = zext i1 %250 to i32
  %252 = call i32 @assert(i32 %251)
  %253 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %213
  %259 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_28__*, %struct.TYPE_28__** %261, align 8
  %263 = call i32 @sqlite3_free(%struct.TYPE_28__* %262)
  br label %264

264:                                              ; preds = %258, %213
  %265 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %266 = call i32 @sqlite3_free(%struct.TYPE_28__* %265)
  br label %267

267:                                              ; preds = %264, %19
  ret void
}

declare dso_local i64 @connectionIsBusy(%struct.TYPE_28__*) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

declare dso_local i32 @sqlite3RollbackAll(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @sqlite3CloseSavepoints(%struct.TYPE_28__*) #1

declare dso_local i32 @sqlite3BtreeClose(i64) #1

declare dso_local i32 @sqlite3SchemaClear(%struct.TYPE_29__*) #1

declare dso_local i32 @sqlite3VtabUnlockList(%struct.TYPE_28__*) #1

declare dso_local i32 @sqlite3CollapseDatabaseArray(%struct.TYPE_28__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3ConnectionClosed(%struct.TYPE_28__*) #1

declare dso_local i32* @sqliteHashFirst(i32*) #1

declare dso_local %struct.TYPE_29__* @sqliteHashData(i32*) #1

declare dso_local i32 @functionDestroy(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32* @sqliteHashNext(i32*) #1

declare dso_local i32 @sqlite3HashClear(i32*) #1

declare dso_local i32 @sqlite3VtabEponymousTableClear(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @sqlite3Error(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @sqlite3ValueFree(i32) #1

declare dso_local i32 @sqlite3CloseExtensions(%struct.TYPE_28__*) #1

declare dso_local i32 @sqlite3_mutex_free(i32) #1

declare dso_local i64 @sqlite3LookasideUsed(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
