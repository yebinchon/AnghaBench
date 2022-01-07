; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3DropTable.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3DropTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_40__ = type { i64, %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i32, %struct.TYPE_35__*, i32, i64 }
%struct.TYPE_35__ = type { i8* }
%struct.TYPE_39__ = type { i32, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_38__ = type { i8*, i64, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i8* }

@LOCATE_VIEW = common dso_local global i32 0, align 4
@SQLITE_DELETE = common dso_local global i32 0, align 4
@OMIT_TEMPDB = common dso_local global i32 0, align 4
@SQLITE_DROP_TEMP_VIEW = common dso_local global i32 0, align 4
@SQLITE_DROP_VIEW = common dso_local global i32 0, align 4
@SQLITE_DROP_VTABLE = common dso_local global i32 0, align 4
@SQLITE_DROP_TEMP_TABLE = common dso_local global i32 0, align 4
@SQLITE_DROP_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"sqlite_\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"sqlite_stat\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"table %s may not be dropped\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"use DROP TABLE to delete table %s\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"use DROP VIEW to delete view %s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"tbl\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3DropTable(%struct.TYPE_40__* %0, %struct.TYPE_39__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_40__*, align 8
  %6 = alloca %struct.TYPE_39__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_38__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_37__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_40__* %0, %struct.TYPE_40__** %5, align 8
  store %struct.TYPE_39__* %1, %struct.TYPE_39__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  store %struct.TYPE_37__* %19, %struct.TYPE_37__** %11, align 8
  %20 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %271

25:                                               ; preds = %4
  %26 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 1
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %39 = call i64 @sqlite3ReadSchema(%struct.TYPE_40__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %25
  br label %271

42:                                               ; preds = %25
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %45, %42
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @LOCATE_VIEW, align 4
  %56 = icmp eq i32 %54, %55
  br label %57

57:                                               ; preds = %53, %50
  %58 = phi i1 [ true, %50 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_33__*, %struct.TYPE_33__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %65, i64 0
  %67 = call %struct.TYPE_38__* @sqlite3LocateTableItem(%struct.TYPE_40__* %61, i32 %62, %struct.TYPE_33__* %66)
  store %struct.TYPE_38__* %67, %struct.TYPE_38__** %9, align 8
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %57
  %71 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %70, %57
  %76 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %77 = icmp eq %struct.TYPE_38__* %76, null
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %83 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_33__*, %struct.TYPE_33__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @sqlite3CodeVerifyNamedSchema(%struct.TYPE_40__* %82, i32 %88)
  br label %90

90:                                               ; preds = %81, %78
  br label %271

91:                                               ; preds = %75
  %92 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %93 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @sqlite3SchemaToIndex(%struct.TYPE_37__* %92, i32 %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %91
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br label %105

105:                                              ; preds = %99, %91
  %106 = phi i1 [ false, %91 ], [ %104, %99 ]
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %110 = call i64 @IsVirtual(%struct.TYPE_38__* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %105
  %113 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %114 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %115 = call i64 @sqlite3ViewGetColumnNames(%struct.TYPE_40__* %113, %struct.TYPE_38__* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %271

118:                                              ; preds = %112, %105
  %119 = load i32, i32* %12, align 4
  %120 = call i8* @SCHEMA_TABLE(i32 %119)
  store i8* %120, i8** %14, align 8
  %121 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_35__*, %struct.TYPE_35__** %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  store i8* %128, i8** %15, align 8
  store i8* null, i8** %16, align 8
  %129 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %130 = load i32, i32* @SQLITE_DELETE, align 4
  %131 = load i8*, i8** %14, align 8
  %132 = load i8*, i8** %15, align 8
  %133 = call i64 @sqlite3AuthCheck(%struct.TYPE_40__* %129, i32 %130, i8* %131, i8* null, i8* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %118
  br label %271

136:                                              ; preds = %118
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %136
  %140 = load i32, i32* @OMIT_TEMPDB, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %139
  %143 = load i32, i32* %12, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = load i32, i32* @SQLITE_DROP_TEMP_VIEW, align 4
  store i32 %146, i32* %13, align 4
  br label %149

147:                                              ; preds = %142, %139
  %148 = load i32, i32* @SQLITE_DROP_VIEW, align 4
  store i32 %148, i32* %13, align 4
  br label %149

149:                                              ; preds = %147, %145
  br label %175

150:                                              ; preds = %136
  %151 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %152 = call i64 @IsVirtual(%struct.TYPE_38__* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %150
  %155 = load i32, i32* @SQLITE_DROP_VTABLE, align 4
  store i32 %155, i32* %13, align 4
  %156 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %157 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %158 = call %struct.TYPE_34__* @sqlite3GetVTable(%struct.TYPE_37__* %156, %struct.TYPE_38__* %157)
  %159 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_36__*, %struct.TYPE_36__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  store i8* %162, i8** %16, align 8
  br label %174

163:                                              ; preds = %150
  %164 = load i32, i32* @OMIT_TEMPDB, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %12, align 4
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = load i32, i32* @SQLITE_DROP_TEMP_TABLE, align 4
  store i32 %170, i32* %13, align 4
  br label %173

171:                                              ; preds = %166, %163
  %172 = load i32, i32* @SQLITE_DROP_TABLE, align 4
  store i32 %172, i32* %13, align 4
  br label %173

173:                                              ; preds = %171, %169
  br label %174

174:                                              ; preds = %173, %154
  br label %175

175:                                              ; preds = %174, %149
  %176 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %177 = load i32, i32* %13, align 4
  %178 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = load i8*, i8** %16, align 8
  %182 = load i8*, i8** %15, align 8
  %183 = call i64 @sqlite3AuthCheck(%struct.TYPE_40__* %176, i32 %177, i8* %180, i8* %181, i8* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %175
  br label %271

186:                                              ; preds = %175
  %187 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %188 = load i32, i32* @SQLITE_DELETE, align 4
  %189 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = load i8*, i8** %15, align 8
  %193 = call i64 @sqlite3AuthCheck(%struct.TYPE_40__* %187, i32 %188, i8* %191, i8* null, i8* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %186
  br label %271

196:                                              ; preds = %186
  %197 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = call i64 @sqlite3StrNICmp(i8* %199, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %214

202:                                              ; preds = %196
  %203 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %203, i32 0, i32 0
  %205 = load i8*, i8** %204, align 8
  %206 = call i64 @sqlite3StrNICmp(i8* %205, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 11)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %202
  %209 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %210 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @sqlite3ErrorMsg(%struct.TYPE_40__* %209, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %212)
  br label %271

214:                                              ; preds = %202, %196
  %215 = load i32, i32* %7, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %228

217:                                              ; preds = %214
  %218 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %217
  %223 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %224 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @sqlite3ErrorMsg(%struct.TYPE_40__* %223, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %226)
  br label %271

228:                                              ; preds = %217, %214
  %229 = load i32, i32* %7, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %242, label %231

231:                                              ; preds = %228
  %232 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %242

236:                                              ; preds = %231
  %237 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %238 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %238, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 @sqlite3ErrorMsg(%struct.TYPE_40__* %237, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %240)
  br label %271

242:                                              ; preds = %231, %228
  %243 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %244 = call i32* @sqlite3GetVdbe(%struct.TYPE_40__* %243)
  store i32* %244, i32** %10, align 8
  %245 = load i32*, i32** %10, align 8
  %246 = icmp ne i32* %245, null
  br i1 %246, label %247, label %270

247:                                              ; preds = %242
  %248 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %249 = load i32, i32* %12, align 4
  %250 = call i32 @sqlite3BeginWriteOperation(%struct.TYPE_40__* %248, i32 1, i32 %249)
  %251 = load i32, i32* %7, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %264, label %253

253:                                              ; preds = %247
  %254 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %255 = load i32, i32* %12, align 4
  %256 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %257 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %256, i32 0, i32 0
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 @sqlite3ClearStatTables(%struct.TYPE_40__* %254, i32 %255, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %258)
  %260 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %261 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %262 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %263 = call i32 @sqlite3FkDropTable(%struct.TYPE_40__* %260, %struct.TYPE_39__* %261, %struct.TYPE_38__* %262)
  br label %264

264:                                              ; preds = %253, %247
  %265 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %266 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %267 = load i32, i32* %12, align 4
  %268 = load i32, i32* %7, align 4
  %269 = call i32 @sqlite3CodeDropTable(%struct.TYPE_40__* %265, %struct.TYPE_38__* %266, i32 %267, i32 %268)
  br label %270

270:                                              ; preds = %264, %242
  br label %271

271:                                              ; preds = %270, %236, %222, %208, %195, %185, %135, %117, %90, %41, %24
  %272 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %273 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %274 = call i32 @sqlite3SrcListDelete(%struct.TYPE_37__* %272, %struct.TYPE_39__* %273)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3ReadSchema(%struct.TYPE_40__*) #1

declare dso_local %struct.TYPE_38__* @sqlite3LocateTableItem(%struct.TYPE_40__*, i32, %struct.TYPE_33__*) #1

declare dso_local i32 @sqlite3CodeVerifyNamedSchema(%struct.TYPE_40__*, i32) #1

declare dso_local i32 @sqlite3SchemaToIndex(%struct.TYPE_37__*, i32) #1

declare dso_local i64 @IsVirtual(%struct.TYPE_38__*) #1

declare dso_local i64 @sqlite3ViewGetColumnNames(%struct.TYPE_40__*, %struct.TYPE_38__*) #1

declare dso_local i8* @SCHEMA_TABLE(i32) #1

declare dso_local i64 @sqlite3AuthCheck(%struct.TYPE_40__*, i32, i8*, i8*, i8*) #1

declare dso_local %struct.TYPE_34__* @sqlite3GetVTable(%struct.TYPE_37__*, %struct.TYPE_38__*) #1

declare dso_local i64 @sqlite3StrNICmp(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_40__*, i8*, i8*) #1

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_40__*) #1

declare dso_local i32 @sqlite3BeginWriteOperation(%struct.TYPE_40__*, i32, i32) #1

declare dso_local i32 @sqlite3ClearStatTables(%struct.TYPE_40__*, i32, i8*, i8*) #1

declare dso_local i32 @sqlite3FkDropTable(%struct.TYPE_40__*, %struct.TYPE_39__*, %struct.TYPE_38__*) #1

declare dso_local i32 @sqlite3CodeDropTable(%struct.TYPE_40__*, %struct.TYPE_38__*, i32, i32) #1

declare dso_local i32 @sqlite3SrcListDelete(%struct.TYPE_37__*, %struct.TYPE_39__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
