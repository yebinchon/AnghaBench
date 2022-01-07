; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_trigger.c_sqlite3BeginTrigger.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_trigger.c_sqlite3BeginTrigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_54__ = type { %struct.TYPE_50__*, %struct.TYPE_49__* }
%struct.TYPE_50__ = type { i8*, i32*, i32*, i32, i32, i64, %struct.TYPE_46__*, %struct.TYPE_46__* }
%struct.TYPE_46__ = type { i32 }
%struct.TYPE_49__ = type { %struct.TYPE_48__*, %struct.TYPE_45__, i64 }
%struct.TYPE_48__ = type { i8*, %struct.TYPE_46__* }
%struct.TYPE_45__ = type { i64, i32, i32 }
%struct.TYPE_51__ = type { i64 }
%struct.TYPE_53__ = type { i32, %struct.TYPE_47__* }
%struct.TYPE_47__ = type { i8*, i32 }
%struct.TYPE_52__ = type { %struct.TYPE_46__*, i32, i64 }

@TK_INSERT = common dso_local global i32 0, align 4
@TK_UPDATE = common dso_local global i32 0, align 4
@TK_DELETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"temporary trigger may not have qualified name\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"trigger\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"cannot create triggers on virtual tables\00", align 1
@SQLITE_OK = common dso_local global i64 0, align 8
@IN_RENAME_OBJECT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"trigger %T already exists\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"sqlite_\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"cannot create trigger on system table\00", align 1
@TK_INSTEAD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"cannot create %s trigger on view: %S\00", align 1
@TK_BEFORE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"BEFORE\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"AFTER\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"cannot create INSTEAD OF trigger on table: %S\00", align 1
@SQLITE_CREATE_TRIGGER = common dso_local global i32 0, align 4
@SQLITE_CREATE_TEMP_TRIGGER = common dso_local global i32 0, align 4
@SQLITE_INSERT = common dso_local global i32 0, align 4
@TRIGGER_BEFORE = common dso_local global i32 0, align 4
@TRIGGER_AFTER = common dso_local global i32 0, align 4
@EXPRDUP_REDUCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3BeginTrigger(%struct.TYPE_54__* %0, %struct.TYPE_51__* %1, %struct.TYPE_51__* %2, i32 %3, i32 %4, i32* %5, %struct.TYPE_53__* %6, i32* %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_54__*, align 8
  %12 = alloca %struct.TYPE_51__*, align 8
  %13 = alloca %struct.TYPE_51__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_53__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_50__*, align 8
  %22 = alloca %struct.TYPE_52__*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.TYPE_49__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_51__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  store %struct.TYPE_54__* %0, %struct.TYPE_54__** %11, align 8
  store %struct.TYPE_51__* %1, %struct.TYPE_51__** %12, align 8
  store %struct.TYPE_51__* %2, %struct.TYPE_51__** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store %struct.TYPE_53__* %6, %struct.TYPE_53__** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  store %struct.TYPE_50__* null, %struct.TYPE_50__** %21, align 8
  store i8* null, i8** %23, align 8
  %32 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_49__*, %struct.TYPE_49__** %33, align 8
  store %struct.TYPE_49__* %34, %struct.TYPE_49__** %24, align 8
  %35 = load %struct.TYPE_51__*, %struct.TYPE_51__** %12, align 8
  %36 = icmp ne %struct.TYPE_51__* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %40 = icmp ne %struct.TYPE_51__* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* @TK_INSERT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %10
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* @TK_UPDATE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* @TK_DELETE, align 4
  %53 = icmp eq i32 %51, %52
  br label %54

54:                                               ; preds = %50, %46, %10
  %55 = phi i1 [ true, %46 ], [ true, %10 ], [ %53, %50 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i32, i32* %15, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* %15, align 4
  %62 = icmp slt i32 %61, 255
  br label %63

63:                                               ; preds = %60, %54
  %64 = phi i1 [ false, %54 ], [ %62, %60 ]
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i32, i32* %19, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %63
  %70 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %76 = call i32 (%struct.TYPE_54__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_54__* %75, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %441

77:                                               ; preds = %69
  store i32 1, i32* %25, align 4
  %78 = load %struct.TYPE_51__*, %struct.TYPE_51__** %12, align 8
  store %struct.TYPE_51__* %78, %struct.TYPE_51__** %26, align 8
  br label %88

79:                                               ; preds = %63
  %80 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %81 = load %struct.TYPE_51__*, %struct.TYPE_51__** %12, align 8
  %82 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %83 = call i32 @sqlite3TwoPartName(%struct.TYPE_54__* %80, %struct.TYPE_51__* %81, %struct.TYPE_51__* %82, %struct.TYPE_51__** %26)
  store i32 %83, i32* %25, align 4
  %84 = load i32, i32* %25, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %441

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87, %77
  %89 = load %struct.TYPE_53__*, %struct.TYPE_53__** %17, align 8
  %90 = icmp ne %struct.TYPE_53__* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load %struct.TYPE_49__*, %struct.TYPE_49__** %24, align 8
  %93 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91, %88
  br label %441

97:                                               ; preds = %91
  %98 = load %struct.TYPE_49__*, %struct.TYPE_49__** %24, align 8
  %99 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %97
  %104 = load i32, i32* %25, align 4
  %105 = icmp ne i32 %104, 1
  br i1 %105, label %106, label %120

106:                                              ; preds = %103
  %107 = load %struct.TYPE_49__*, %struct.TYPE_49__** %24, align 8
  %108 = load %struct.TYPE_53__*, %struct.TYPE_53__** %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_47__*, %struct.TYPE_47__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @sqlite3DbFree(%struct.TYPE_49__* %107, i8* %113)
  %115 = load %struct.TYPE_53__*, %struct.TYPE_53__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_47__*, %struct.TYPE_47__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %118, i32 0, i32 0
  store i8* null, i8** %119, align 8
  br label %120

120:                                              ; preds = %106, %103, %97
  %121 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %122 = load %struct.TYPE_53__*, %struct.TYPE_53__** %17, align 8
  %123 = call %struct.TYPE_52__* @sqlite3SrcListLookup(%struct.TYPE_54__* %121, %struct.TYPE_53__* %122)
  store %struct.TYPE_52__* %123, %struct.TYPE_52__** %22, align 8
  %124 = load %struct.TYPE_49__*, %struct.TYPE_49__** %24, align 8
  %125 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %149

129:                                              ; preds = %120
  %130 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %149

134:                                              ; preds = %129
  %135 = load %struct.TYPE_52__*, %struct.TYPE_52__** %22, align 8
  %136 = icmp ne %struct.TYPE_52__* %135, null
  br i1 %136, label %137, label %149

137:                                              ; preds = %134
  %138 = load %struct.TYPE_52__*, %struct.TYPE_52__** %22, align 8
  %139 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_46__*, %struct.TYPE_46__** %139, align 8
  %141 = load %struct.TYPE_49__*, %struct.TYPE_49__** %24, align 8
  %142 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_48__*, %struct.TYPE_48__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %143, i64 1
  %145 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_46__*, %struct.TYPE_46__** %145, align 8
  %147 = icmp eq %struct.TYPE_46__* %140, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %137
  store i32 1, i32* %25, align 4
  br label %149

149:                                              ; preds = %148, %137, %134, %129, %120
  %150 = load %struct.TYPE_49__*, %struct.TYPE_49__** %24, align 8
  %151 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  br label %441

155:                                              ; preds = %149
  %156 = load %struct.TYPE_53__*, %struct.TYPE_53__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp eq i32 %158, 1
  %160 = zext i1 %159 to i32
  %161 = call i32 @assert(i32 %160)
  %162 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %163 = load i32, i32* %25, align 4
  %164 = load %struct.TYPE_51__*, %struct.TYPE_51__** %26, align 8
  %165 = call i32 @sqlite3FixInit(i32* %27, %struct.TYPE_54__* %162, i32 %163, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_51__* %164)
  %166 = load %struct.TYPE_53__*, %struct.TYPE_53__** %17, align 8
  %167 = call i64 @sqlite3FixSrcList(i32* %27, %struct.TYPE_53__* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %155
  br label %441

170:                                              ; preds = %155
  %171 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %172 = load %struct.TYPE_53__*, %struct.TYPE_53__** %17, align 8
  %173 = call %struct.TYPE_52__* @sqlite3SrcListLookup(%struct.TYPE_54__* %171, %struct.TYPE_53__* %172)
  store %struct.TYPE_52__* %173, %struct.TYPE_52__** %22, align 8
  %174 = load %struct.TYPE_52__*, %struct.TYPE_52__** %22, align 8
  %175 = icmp ne %struct.TYPE_52__* %174, null
  br i1 %175, label %187, label %176

176:                                              ; preds = %170
  %177 = load %struct.TYPE_49__*, %struct.TYPE_49__** %24, align 8
  %178 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %186

182:                                              ; preds = %176
  %183 = load %struct.TYPE_49__*, %struct.TYPE_49__** %24, align 8
  %184 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %184, i32 0, i32 2
  store i32 1, i32* %185, align 4
  br label %186

186:                                              ; preds = %182, %176
  br label %441

187:                                              ; preds = %170
  %188 = load %struct.TYPE_52__*, %struct.TYPE_52__** %22, align 8
  %189 = call i64 @IsVirtual(%struct.TYPE_52__* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %187
  %192 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %193 = call i32 (%struct.TYPE_54__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_54__* %192, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %441

194:                                              ; preds = %187
  %195 = load %struct.TYPE_49__*, %struct.TYPE_49__** %24, align 8
  %196 = load %struct.TYPE_51__*, %struct.TYPE_51__** %26, align 8
  %197 = call i8* @sqlite3NameFromToken(%struct.TYPE_49__* %195, %struct.TYPE_51__* %196)
  store i8* %197, i8** %23, align 8
  %198 = load i8*, i8** %23, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %200, label %206

200:                                              ; preds = %194
  %201 = load i64, i64* @SQLITE_OK, align 8
  %202 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %203 = load i8*, i8** %23, align 8
  %204 = call i64 @sqlite3CheckObjectName(%struct.TYPE_54__* %202, i8* %203)
  %205 = icmp ne i64 %201, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %200, %194
  br label %441

207:                                              ; preds = %200
  %208 = load %struct.TYPE_49__*, %struct.TYPE_49__** %24, align 8
  %209 = load i32, i32* %25, align 4
  %210 = call i32 @sqlite3SchemaMutexHeld(%struct.TYPE_49__* %208, i32 %209, i32 0)
  %211 = call i32 @assert(i32 %210)
  %212 = load i64, i64* @IN_RENAME_OBJECT, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %248, label %214

214:                                              ; preds = %207
  %215 = load %struct.TYPE_49__*, %struct.TYPE_49__** %24, align 8
  %216 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_48__*, %struct.TYPE_48__** %216, align 8
  %218 = load i32, i32* %25, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_46__*, %struct.TYPE_46__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %222, i32 0, i32 0
  %224 = load i8*, i8** %23, align 8
  %225 = call i64 @sqlite3HashFind(i32* %223, i8* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %247

227:                                              ; preds = %214
  %228 = load i32, i32* %20, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %234, label %230

230:                                              ; preds = %227
  %231 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %232 = load %struct.TYPE_51__*, %struct.TYPE_51__** %26, align 8
  %233 = call i32 (%struct.TYPE_54__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_54__* %231, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_51__* %232)
  br label %246

234:                                              ; preds = %227
  %235 = load %struct.TYPE_49__*, %struct.TYPE_49__** %24, align 8
  %236 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  %240 = xor i1 %239, true
  %241 = zext i1 %240 to i32
  %242 = call i32 @assert(i32 %241)
  %243 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %244 = load i32, i32* %25, align 4
  %245 = call i32 @sqlite3CodeVerifySchema(%struct.TYPE_54__* %243, i32 %244)
  br label %246

246:                                              ; preds = %234, %230
  br label %441

247:                                              ; preds = %214
  br label %248

248:                                              ; preds = %247, %207
  %249 = load %struct.TYPE_52__*, %struct.TYPE_52__** %22, align 8
  %250 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = call i64 @sqlite3StrNICmp(i32 %251, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %248
  %255 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %256 = call i32 (%struct.TYPE_54__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_54__* %255, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %441

257:                                              ; preds = %248
  %258 = load %struct.TYPE_52__*, %struct.TYPE_52__** %22, align 8
  %259 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %275

262:                                              ; preds = %257
  %263 = load i32, i32* %14, align 4
  %264 = load i32, i32* @TK_INSTEAD, align 4
  %265 = icmp ne i32 %263, %264
  br i1 %265, label %266, label %275

266:                                              ; preds = %262
  %267 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %268 = load i32, i32* %14, align 4
  %269 = load i32, i32* @TK_BEFORE, align 4
  %270 = icmp eq i32 %268, %269
  %271 = zext i1 %270 to i64
  %272 = select i1 %270, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)
  %273 = load %struct.TYPE_53__*, %struct.TYPE_53__** %17, align 8
  %274 = call i32 (%struct.TYPE_54__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_54__* %267, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* %272, %struct.TYPE_53__* %273, i32 0)
  br label %441

275:                                              ; preds = %262, %257
  %276 = load %struct.TYPE_52__*, %struct.TYPE_52__** %22, align 8
  %277 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %288, label %280

280:                                              ; preds = %275
  %281 = load i32, i32* %14, align 4
  %282 = load i32, i32* @TK_INSTEAD, align 4
  %283 = icmp eq i32 %281, %282
  br i1 %283, label %284, label %288

284:                                              ; preds = %280
  %285 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %286 = load %struct.TYPE_53__*, %struct.TYPE_53__** %17, align 8
  %287 = call i32 (%struct.TYPE_54__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_54__* %285, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_53__* %286, i32 0)
  br label %441

288:                                              ; preds = %280, %275
  %289 = load i64, i64* @IN_RENAME_OBJECT, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %347, label %291

291:                                              ; preds = %288
  %292 = load %struct.TYPE_49__*, %struct.TYPE_49__** %24, align 8
  %293 = load %struct.TYPE_52__*, %struct.TYPE_52__** %22, align 8
  %294 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %293, i32 0, i32 0
  %295 = load %struct.TYPE_46__*, %struct.TYPE_46__** %294, align 8
  %296 = call i32 @sqlite3SchemaToIndex(%struct.TYPE_49__* %292, %struct.TYPE_46__* %295)
  store i32 %296, i32* %28, align 4
  %297 = load i32, i32* @SQLITE_CREATE_TRIGGER, align 4
  store i32 %297, i32* %29, align 4
  %298 = load %struct.TYPE_49__*, %struct.TYPE_49__** %24, align 8
  %299 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %298, i32 0, i32 0
  %300 = load %struct.TYPE_48__*, %struct.TYPE_48__** %299, align 8
  %301 = load i32, i32* %28, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %303, i32 0, i32 0
  %305 = load i8*, i8** %304, align 8
  store i8* %305, i8** %30, align 8
  %306 = load i32, i32* %19, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %315

308:                                              ; preds = %291
  %309 = load %struct.TYPE_49__*, %struct.TYPE_49__** %24, align 8
  %310 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %309, i32 0, i32 0
  %311 = load %struct.TYPE_48__*, %struct.TYPE_48__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %311, i64 1
  %313 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %312, i32 0, i32 0
  %314 = load i8*, i8** %313, align 8
  br label %317

315:                                              ; preds = %291
  %316 = load i8*, i8** %30, align 8
  br label %317

317:                                              ; preds = %315, %308
  %318 = phi i8* [ %314, %308 ], [ %316, %315 ]
  store i8* %318, i8** %31, align 8
  %319 = load i32, i32* %28, align 4
  %320 = icmp eq i32 %319, 1
  br i1 %320, label %324, label %321

321:                                              ; preds = %317
  %322 = load i32, i32* %19, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %321, %317
  %325 = load i32, i32* @SQLITE_CREATE_TEMP_TRIGGER, align 4
  store i32 %325, i32* %29, align 4
  br label %326

326:                                              ; preds = %324, %321
  %327 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %328 = load i32, i32* %29, align 4
  %329 = load i8*, i8** %23, align 8
  %330 = load %struct.TYPE_52__*, %struct.TYPE_52__** %22, align 8
  %331 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 8
  %333 = load i8*, i8** %31, align 8
  %334 = call i64 @sqlite3AuthCheck(%struct.TYPE_54__* %327, i32 %328, i8* %329, i32 %332, i8* %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %326
  br label %441

337:                                              ; preds = %326
  %338 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %339 = load i32, i32* @SQLITE_INSERT, align 4
  %340 = load i32, i32* %28, align 4
  %341 = call i8* @SCHEMA_TABLE(i32 %340)
  %342 = load i8*, i8** %30, align 8
  %343 = call i64 @sqlite3AuthCheck(%struct.TYPE_54__* %338, i32 %339, i8* %341, i32 0, i8* %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %337
  br label %441

346:                                              ; preds = %337
  br label %347

347:                                              ; preds = %346, %288
  %348 = load i32, i32* %14, align 4
  %349 = load i32, i32* @TK_INSTEAD, align 4
  %350 = icmp eq i32 %348, %349
  br i1 %350, label %351, label %353

351:                                              ; preds = %347
  %352 = load i32, i32* @TK_BEFORE, align 4
  store i32 %352, i32* %14, align 4
  br label %353

353:                                              ; preds = %351, %347
  %354 = load %struct.TYPE_49__*, %struct.TYPE_49__** %24, align 8
  %355 = call i64 @sqlite3DbMallocZero(%struct.TYPE_49__* %354, i32 56)
  %356 = inttoptr i64 %355 to %struct.TYPE_50__*
  store %struct.TYPE_50__* %356, %struct.TYPE_50__** %21, align 8
  %357 = load %struct.TYPE_50__*, %struct.TYPE_50__** %21, align 8
  %358 = icmp eq %struct.TYPE_50__* %357, null
  br i1 %358, label %359, label %360

359:                                              ; preds = %353
  br label %441

360:                                              ; preds = %353
  %361 = load i8*, i8** %23, align 8
  %362 = load %struct.TYPE_50__*, %struct.TYPE_50__** %21, align 8
  %363 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %362, i32 0, i32 0
  store i8* %361, i8** %363, align 8
  store i8* null, i8** %23, align 8
  %364 = load %struct.TYPE_49__*, %struct.TYPE_49__** %24, align 8
  %365 = load %struct.TYPE_53__*, %struct.TYPE_53__** %17, align 8
  %366 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %365, i32 0, i32 1
  %367 = load %struct.TYPE_47__*, %struct.TYPE_47__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %367, i64 0
  %369 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 8
  %371 = call i32 @sqlite3DbStrDup(%struct.TYPE_49__* %364, i32 %370)
  %372 = load %struct.TYPE_50__*, %struct.TYPE_50__** %21, align 8
  %373 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %372, i32 0, i32 3
  store i32 %371, i32* %373, align 8
  %374 = load %struct.TYPE_49__*, %struct.TYPE_49__** %24, align 8
  %375 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %374, i32 0, i32 0
  %376 = load %struct.TYPE_48__*, %struct.TYPE_48__** %375, align 8
  %377 = load i32, i32* %25, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %376, i64 %378
  %380 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %379, i32 0, i32 1
  %381 = load %struct.TYPE_46__*, %struct.TYPE_46__** %380, align 8
  %382 = load %struct.TYPE_50__*, %struct.TYPE_50__** %21, align 8
  %383 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %382, i32 0, i32 7
  store %struct.TYPE_46__* %381, %struct.TYPE_46__** %383, align 8
  %384 = load %struct.TYPE_52__*, %struct.TYPE_52__** %22, align 8
  %385 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %384, i32 0, i32 0
  %386 = load %struct.TYPE_46__*, %struct.TYPE_46__** %385, align 8
  %387 = load %struct.TYPE_50__*, %struct.TYPE_50__** %21, align 8
  %388 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %387, i32 0, i32 6
  store %struct.TYPE_46__* %386, %struct.TYPE_46__** %388, align 8
  %389 = load i32, i32* %15, align 4
  %390 = sext i32 %389 to i64
  %391 = load %struct.TYPE_50__*, %struct.TYPE_50__** %21, align 8
  %392 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %391, i32 0, i32 5
  store i64 %390, i64* %392, align 8
  %393 = load i32, i32* %14, align 4
  %394 = load i32, i32* @TK_BEFORE, align 4
  %395 = icmp eq i32 %393, %394
  br i1 %395, label %396, label %398

396:                                              ; preds = %360
  %397 = load i32, i32* @TRIGGER_BEFORE, align 4
  br label %400

398:                                              ; preds = %360
  %399 = load i32, i32* @TRIGGER_AFTER, align 4
  br label %400

400:                                              ; preds = %398, %396
  %401 = phi i32 [ %397, %396 ], [ %399, %398 ]
  %402 = load %struct.TYPE_50__*, %struct.TYPE_50__** %21, align 8
  %403 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %402, i32 0, i32 4
  store i32 %401, i32* %403, align 4
  %404 = load i64, i64* @IN_RENAME_OBJECT, align 8
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %421

406:                                              ; preds = %400
  %407 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %408 = load %struct.TYPE_50__*, %struct.TYPE_50__** %21, align 8
  %409 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %408, i32 0, i32 3
  %410 = load i32, i32* %409, align 8
  %411 = load %struct.TYPE_53__*, %struct.TYPE_53__** %17, align 8
  %412 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %411, i32 0, i32 1
  %413 = load %struct.TYPE_47__*, %struct.TYPE_47__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %413, i64 0
  %415 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 8
  %417 = call i32 @sqlite3RenameTokenRemap(%struct.TYPE_54__* %407, i32 %410, i32 %416)
  %418 = load i32*, i32** %18, align 8
  %419 = load %struct.TYPE_50__*, %struct.TYPE_50__** %21, align 8
  %420 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %419, i32 0, i32 2
  store i32* %418, i32** %420, align 8
  store i32* null, i32** %18, align 8
  br label %428

421:                                              ; preds = %400
  %422 = load %struct.TYPE_49__*, %struct.TYPE_49__** %24, align 8
  %423 = load i32*, i32** %18, align 8
  %424 = load i32, i32* @EXPRDUP_REDUCE, align 4
  %425 = call i32* @sqlite3ExprDup(%struct.TYPE_49__* %422, i32* %423, i32 %424)
  %426 = load %struct.TYPE_50__*, %struct.TYPE_50__** %21, align 8
  %427 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %426, i32 0, i32 2
  store i32* %425, i32** %427, align 8
  br label %428

428:                                              ; preds = %421, %406
  %429 = load i32*, i32** %16, align 8
  %430 = load %struct.TYPE_50__*, %struct.TYPE_50__** %21, align 8
  %431 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %430, i32 0, i32 1
  store i32* %429, i32** %431, align 8
  store i32* null, i32** %16, align 8
  %432 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %433 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %432, i32 0, i32 0
  %434 = load %struct.TYPE_50__*, %struct.TYPE_50__** %433, align 8
  %435 = icmp eq %struct.TYPE_50__* %434, null
  %436 = zext i1 %435 to i32
  %437 = call i32 @assert(i32 %436)
  %438 = load %struct.TYPE_50__*, %struct.TYPE_50__** %21, align 8
  %439 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %440 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %439, i32 0, i32 0
  store %struct.TYPE_50__* %438, %struct.TYPE_50__** %440, align 8
  br label %441

441:                                              ; preds = %428, %359, %345, %336, %284, %266, %254, %246, %206, %191, %186, %169, %154, %96, %86, %74
  %442 = load %struct.TYPE_49__*, %struct.TYPE_49__** %24, align 8
  %443 = load i8*, i8** %23, align 8
  %444 = call i32 @sqlite3DbFree(%struct.TYPE_49__* %442, i8* %443)
  %445 = load %struct.TYPE_49__*, %struct.TYPE_49__** %24, align 8
  %446 = load %struct.TYPE_53__*, %struct.TYPE_53__** %17, align 8
  %447 = call i32 @sqlite3SrcListDelete(%struct.TYPE_49__* %445, %struct.TYPE_53__* %446)
  %448 = load %struct.TYPE_49__*, %struct.TYPE_49__** %24, align 8
  %449 = load i32*, i32** %16, align 8
  %450 = call i32 @sqlite3IdListDelete(%struct.TYPE_49__* %448, i32* %449)
  %451 = load %struct.TYPE_49__*, %struct.TYPE_49__** %24, align 8
  %452 = load i32*, i32** %18, align 8
  %453 = call i32 @sqlite3ExprDelete(%struct.TYPE_49__* %451, i32* %452)
  %454 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %455 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %454, i32 0, i32 0
  %456 = load %struct.TYPE_50__*, %struct.TYPE_50__** %455, align 8
  %457 = icmp ne %struct.TYPE_50__* %456, null
  br i1 %457, label %462, label %458

458:                                              ; preds = %441
  %459 = load %struct.TYPE_49__*, %struct.TYPE_49__** %24, align 8
  %460 = load %struct.TYPE_50__*, %struct.TYPE_50__** %21, align 8
  %461 = call i32 @sqlite3DeleteTrigger(%struct.TYPE_49__* %459, %struct.TYPE_50__* %460)
  br label %470

462:                                              ; preds = %441
  %463 = load %struct.TYPE_54__*, %struct.TYPE_54__** %11, align 8
  %464 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %463, i32 0, i32 0
  %465 = load %struct.TYPE_50__*, %struct.TYPE_50__** %464, align 8
  %466 = load %struct.TYPE_50__*, %struct.TYPE_50__** %21, align 8
  %467 = icmp eq %struct.TYPE_50__* %465, %466
  %468 = zext i1 %467 to i32
  %469 = call i32 @assert(i32 %468)
  br label %470

470:                                              ; preds = %462, %458
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_54__*, i8*, ...) #1

declare dso_local i32 @sqlite3TwoPartName(%struct.TYPE_54__*, %struct.TYPE_51__*, %struct.TYPE_51__*, %struct.TYPE_51__**) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_49__*, i8*) #1

declare dso_local %struct.TYPE_52__* @sqlite3SrcListLookup(%struct.TYPE_54__*, %struct.TYPE_53__*) #1

declare dso_local i32 @sqlite3FixInit(i32*, %struct.TYPE_54__*, i32, i8*, %struct.TYPE_51__*) #1

declare dso_local i64 @sqlite3FixSrcList(i32*, %struct.TYPE_53__*) #1

declare dso_local i64 @IsVirtual(%struct.TYPE_52__*) #1

declare dso_local i8* @sqlite3NameFromToken(%struct.TYPE_49__*, %struct.TYPE_51__*) #1

declare dso_local i64 @sqlite3CheckObjectName(%struct.TYPE_54__*, i8*) #1

declare dso_local i32 @sqlite3SchemaMutexHeld(%struct.TYPE_49__*, i32, i32) #1

declare dso_local i64 @sqlite3HashFind(i32*, i8*) #1

declare dso_local i32 @sqlite3CodeVerifySchema(%struct.TYPE_54__*, i32) #1

declare dso_local i64 @sqlite3StrNICmp(i32, i8*, i32) #1

declare dso_local i32 @sqlite3SchemaToIndex(%struct.TYPE_49__*, %struct.TYPE_46__*) #1

declare dso_local i64 @sqlite3AuthCheck(%struct.TYPE_54__*, i32, i8*, i32, i8*) #1

declare dso_local i8* @SCHEMA_TABLE(i32) #1

declare dso_local i64 @sqlite3DbMallocZero(%struct.TYPE_49__*, i32) #1

declare dso_local i32 @sqlite3DbStrDup(%struct.TYPE_49__*, i32) #1

declare dso_local i32 @sqlite3RenameTokenRemap(%struct.TYPE_54__*, i32, i32) #1

declare dso_local i32* @sqlite3ExprDup(%struct.TYPE_49__*, i32*, i32) #1

declare dso_local i32 @sqlite3SrcListDelete(%struct.TYPE_49__*, %struct.TYPE_53__*) #1

declare dso_local i32 @sqlite3IdListDelete(%struct.TYPE_49__*, i32*) #1

declare dso_local i32 @sqlite3ExprDelete(%struct.TYPE_49__*, i32*) #1

declare dso_local i32 @sqlite3DeleteTrigger(%struct.TYPE_49__*, %struct.TYPE_50__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
