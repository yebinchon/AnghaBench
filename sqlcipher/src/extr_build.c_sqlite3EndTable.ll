; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3EndTable.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3EndTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_56__ = type { i32, i32, i32, %struct.TYPE_49__, %struct.TYPE_53__*, i32, %struct.TYPE_52__, i64, %struct.TYPE_51__* }
%struct.TYPE_49__ = type { i32 }
%struct.TYPE_53__ = type { i32, i32, i64, i64, i64, i32, %struct.TYPE_55__*, i64, i64, %struct.TYPE_46__*, i64 }
%struct.TYPE_55__ = type { i32 }
%struct.TYPE_46__ = type { %struct.TYPE_46__* }
%struct.TYPE_52__ = type { i8*, i64 }
%struct.TYPE_51__ = type { i32, %struct.TYPE_50__, %struct.TYPE_47__*, i32 }
%struct.TYPE_50__ = type { i32, i64 }
%struct.TYPE_47__ = type { i32, %struct.TYPE_48__* }
%struct.TYPE_48__ = type { i64 }
%struct.TYPE_54__ = type { i32, i32, i32 }

@TF_Shadow = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TF_Readonly = common dso_local global i32 0, align 4
@TF_HasPrimaryKey = common dso_local global i32 0, align 4
@TF_WithoutRowid = common dso_local global i32 0, align 4
@TF_Autoincrement = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"AUTOINCREMENT not allowed on WITHOUT ROWID tables\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"PRIMARY KEY missing on table %s\00", align 1
@TF_NoVisibleRowid = common dso_local global i32 0, align 4
@NC_IsCheck = common dso_local global i32 0, align 4
@OP_Close = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"TABLE\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"view\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"VIEW\00", align 1
@OP_OpenWrite = common dso_local global i32 0, align 4
@OPFLAG_P2ISREG = common dso_local global i32 0, align 4
@OP_InitCoroutine = common dso_local global i32 0, align 4
@SRT_Coroutine = common dso_local global i32 0, align 4
@OP_Yield = common dso_local global i32 0, align 4
@OP_MakeRecord = common dso_local global i32 0, align 4
@OP_NewRowid = common dso_local global i32 0, align 4
@OP_Insert = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"CREATE %s %.*s\00", align 1
@.str.8 = private unnamed_addr constant [87 x i8] c"UPDATE %Q.%s SET type='%s', name=%Q, tbl_name=%Q, rootpage=#%d, sql=%Q WHERE rowid=#%d\00", align 1
@MASTER_NAME = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"CREATE TABLE %Q.sqlite_sequence(name,seq)\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"tbl_name='%q' AND type!='trigger'\00", align 1
@DBFLAG_SchemaChange = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3EndTable(%struct.TYPE_56__* %0, %struct.TYPE_52__* %1, %struct.TYPE_52__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_56__*, align 8
  %7 = alloca %struct.TYPE_52__*, align 8
  %8 = alloca %struct.TYPE_52__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_53__*, align 8
  %12 = alloca %struct.TYPE_51__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_46__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_54__, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_53__*, align 8
  %27 = alloca %struct.TYPE_52__*, align 8
  %28 = alloca %struct.TYPE_47__*, align 8
  %29 = alloca %struct.TYPE_53__*, align 8
  %30 = alloca %struct.TYPE_55__*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  store %struct.TYPE_56__* %0, %struct.TYPE_56__** %6, align 8
  store %struct.TYPE_52__* %1, %struct.TYPE_52__** %7, align 8
  store %struct.TYPE_52__* %2, %struct.TYPE_52__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %33 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %33, i32 0, i32 8
  %35 = load %struct.TYPE_51__*, %struct.TYPE_51__** %34, align 8
  store %struct.TYPE_51__* %35, %struct.TYPE_51__** %12, align 8
  %36 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %37 = icmp eq %struct.TYPE_52__* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %5
  %39 = load i32*, i32** %10, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %585

42:                                               ; preds = %38, %5
  %43 = load %struct.TYPE_51__*, %struct.TYPE_51__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_53__*, %struct.TYPE_53__** %51, align 8
  store %struct.TYPE_53__* %52, %struct.TYPE_53__** %11, align 8
  %53 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %54 = icmp eq %struct.TYPE_53__* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  br label %585

56:                                               ; preds = %42
  %57 = load i32*, i32** %10, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load %struct.TYPE_51__*, %struct.TYPE_51__** %12, align 8
  %61 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @isShadowTableName(%struct.TYPE_51__* %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load i32, i32* @TF_Shadow, align 4
  %68 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %66, %59, %56
  %73 = load %struct.TYPE_51__*, %struct.TYPE_51__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %72
  %79 = load i32*, i32** %10, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %83 = call i32 (%struct.TYPE_56__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_56__* %82, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %585

84:                                               ; preds = %78
  %85 = load %struct.TYPE_51__*, %struct.TYPE_51__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %101

95:                                               ; preds = %84
  %96 = load i32, i32* @TF_Readonly, align 4
  %97 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %95, %84
  br label %102

102:                                              ; preds = %101, %72
  %103 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @TF_HasPrimaryKey, align 4
  %107 = and i32 %105, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %118, label %109

109:                                              ; preds = %102
  %110 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp sge i64 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %109
  %115 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %116 = call i64 @sqlite3PrimaryKeyIndex(%struct.TYPE_53__* %115)
  %117 = icmp ne i64 %116, 0
  br label %118

118:                                              ; preds = %114, %109, %102
  %119 = phi i1 [ true, %109 ], [ true, %102 ], [ %117, %114 ]
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @TF_HasPrimaryKey, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %139, label %128

128:                                              ; preds = %118
  %129 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %135 = call i64 @sqlite3PrimaryKeyIndex(%struct.TYPE_53__* %134)
  %136 = icmp eq i64 %135, 0
  br label %137

137:                                              ; preds = %133, %128
  %138 = phi i1 [ false, %128 ], [ %136, %133 ]
  br label %139

139:                                              ; preds = %137, %118
  %140 = phi i1 [ true, %118 ], [ %138, %137 ]
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @TF_WithoutRowid, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %182

147:                                              ; preds = %139
  %148 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @TF_Autoincrement, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %156 = call i32 (%struct.TYPE_56__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_56__* %155, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %585

157:                                              ; preds = %147
  %158 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @TF_HasPrimaryKey, align 4
  %162 = and i32 %160, %161
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %157
  %165 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %166 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = call i32 (%struct.TYPE_56__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_56__* %165, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %168)
  br label %181

170:                                              ; preds = %157
  %171 = load i32, i32* @TF_WithoutRowid, align 4
  %172 = load i32, i32* @TF_NoVisibleRowid, align 4
  %173 = or i32 %171, %172
  %174 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 8
  %178 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %179 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %180 = call i32 @convertToWithoutRowidTable(%struct.TYPE_56__* %178, %struct.TYPE_53__* %179)
  br label %181

181:                                              ; preds = %170, %164
  br label %182

182:                                              ; preds = %181, %139
  %183 = load %struct.TYPE_51__*, %struct.TYPE_51__** %12, align 8
  %184 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %184, i32 0, i32 6
  %186 = load %struct.TYPE_55__*, %struct.TYPE_55__** %185, align 8
  %187 = call i32 @sqlite3SchemaToIndex(%struct.TYPE_51__* %183, %struct.TYPE_55__* %186)
  store i32 %187, i32* %13, align 4
  %188 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %188, i32 0, i32 10
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %182
  %193 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %194 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %195 = load i32, i32* @NC_IsCheck, align 4
  %196 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %196, i32 0, i32 10
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @sqlite3ResolveSelfReference(%struct.TYPE_56__* %193, %struct.TYPE_53__* %194, i32 %195, i32 0, i64 %198)
  br label %200

200:                                              ; preds = %192, %182
  %201 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %202 = call i32 @estimateTableWidth(%struct.TYPE_53__* %201)
  %203 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %203, i32 0, i32 9
  %205 = load %struct.TYPE_46__*, %struct.TYPE_46__** %204, align 8
  store %struct.TYPE_46__* %205, %struct.TYPE_46__** %14, align 8
  br label %206

206:                                              ; preds = %212, %200
  %207 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %208 = icmp ne %struct.TYPE_46__* %207, null
  br i1 %208, label %209, label %216

209:                                              ; preds = %206
  %210 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %211 = call i32 @estimateIndexWidth(%struct.TYPE_46__* %210)
  br label %212

212:                                              ; preds = %209
  %213 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %214 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_46__*, %struct.TYPE_46__** %214, align 8
  store %struct.TYPE_46__* %215, %struct.TYPE_46__** %14, align 8
  br label %206

216:                                              ; preds = %206
  %217 = load %struct.TYPE_51__*, %struct.TYPE_51__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %501, label %222

222:                                              ; preds = %216
  %223 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %224 = call i32* @sqlite3GetVdbe(%struct.TYPE_56__* %223)
  store i32* %224, i32** %16, align 8
  %225 = load i32*, i32** %16, align 8
  %226 = icmp eq i32* %225, null
  %227 = zext i1 %226 to i32
  %228 = call i64 @NEVER(i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %222
  br label %585

231:                                              ; preds = %222
  %232 = load i32*, i32** %16, align 8
  %233 = load i32, i32* @OP_Close, align 4
  %234 = call i32 @sqlite3VdbeAddOp1(i32* %232, i32 %233, i32 0)
  %235 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %236 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %235, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %231
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %17, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %18, align 8
  br label %241

240:                                              ; preds = %231
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %17, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %18, align 8
  br label %241

241:                                              ; preds = %240, %239
  %242 = load i32*, i32** %10, align 8
  %243 = icmp ne i32* %242, null
  br i1 %243, label %244, label %376

244:                                              ; preds = %241
  %245 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %246, align 8
  store i32 %248, i32* %21, align 4
  %249 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %250, align 8
  store i32 %252, i32* %23, align 4
  %253 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %254, align 8
  store i32 %256, i32* %24, align 4
  %257 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = icmp eq i32 %259, 1
  %261 = zext i1 %260 to i32
  %262 = call i32 @assert(i32 %261)
  %263 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %264 = call i32 @sqlite3MayAbort(%struct.TYPE_56__* %263)
  %265 = load i32*, i32** %16, align 8
  %266 = load i32, i32* @OP_OpenWrite, align 4
  %267 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* %13, align 4
  %271 = call i32 @sqlite3VdbeAddOp3(i32* %265, i32 %266, i32 1, i32 %269, i32 %270)
  %272 = load i32*, i32** %16, align 8
  %273 = load i32, i32* @OPFLAG_P2ISREG, align 4
  %274 = call i32 @sqlite3VdbeChangeP5(i32* %272, i32 %273)
  %275 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %275, i32 0, i32 1
  store i32 2, i32* %276, align 4
  %277 = load i32*, i32** %16, align 8
  %278 = call i32 @sqlite3VdbeCurrentAddr(i32* %277)
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %22, align 4
  %280 = load i32*, i32** %16, align 8
  %281 = load i32, i32* @OP_InitCoroutine, align 4
  %282 = load i32, i32* %21, align 4
  %283 = load i32, i32* %22, align 4
  %284 = call i32 @sqlite3VdbeAddOp3(i32* %280, i32 %281, i32 %282, i32 0, i32 %283)
  %285 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %285, i32 0, i32 7
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %244
  br label %585

290:                                              ; preds = %244
  %291 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %292 = load i32*, i32** %10, align 8
  %293 = call %struct.TYPE_53__* @sqlite3ResultSetOfSelect(%struct.TYPE_56__* %291, i32* %292)
  store %struct.TYPE_53__* %293, %struct.TYPE_53__** %26, align 8
  %294 = load %struct.TYPE_53__*, %struct.TYPE_53__** %26, align 8
  %295 = icmp eq %struct.TYPE_53__* %294, null
  br i1 %295, label %296, label %297

296:                                              ; preds = %290
  br label %585

297:                                              ; preds = %290
  %298 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %299 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %298, i32 0, i32 7
  %300 = load i64, i64* %299, align 8
  %301 = icmp eq i64 %300, 0
  %302 = zext i1 %301 to i32
  %303 = call i32 @assert(i32 %302)
  %304 = load %struct.TYPE_53__*, %struct.TYPE_53__** %26, align 8
  %305 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %304, i32 0, i32 8
  %306 = load i64, i64* %305, align 8
  %307 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %308 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %307, i32 0, i32 8
  store i64 %306, i64* %308, align 8
  %309 = load %struct.TYPE_53__*, %struct.TYPE_53__** %26, align 8
  %310 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %309, i32 0, i32 7
  %311 = load i64, i64* %310, align 8
  %312 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %313 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %312, i32 0, i32 7
  store i64 %311, i64* %313, align 8
  %314 = load %struct.TYPE_53__*, %struct.TYPE_53__** %26, align 8
  %315 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %314, i32 0, i32 8
  store i64 0, i64* %315, align 8
  %316 = load %struct.TYPE_53__*, %struct.TYPE_53__** %26, align 8
  %317 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %316, i32 0, i32 7
  store i64 0, i64* %317, align 8
  %318 = load %struct.TYPE_51__*, %struct.TYPE_51__** %12, align 8
  %319 = load %struct.TYPE_53__*, %struct.TYPE_53__** %26, align 8
  %320 = call i32 @sqlite3DeleteTable(%struct.TYPE_51__* %318, %struct.TYPE_53__* %319)
  %321 = load i32, i32* @SRT_Coroutine, align 4
  %322 = load i32, i32* %21, align 4
  %323 = call i32 @sqlite3SelectDestInit(%struct.TYPE_54__* %20, i32 %321, i32 %322)
  %324 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %325 = load i32*, i32** %10, align 8
  %326 = call i32 @sqlite3Select(%struct.TYPE_56__* %324, i32* %325, %struct.TYPE_54__* %20)
  %327 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %327, i32 0, i32 7
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %297
  br label %585

332:                                              ; preds = %297
  %333 = load i32*, i32** %16, align 8
  %334 = load i32, i32* %21, align 4
  %335 = call i32 @sqlite3VdbeEndCoroutine(i32* %333, i32 %334)
  %336 = load i32*, i32** %16, align 8
  %337 = load i32, i32* %22, align 4
  %338 = sub nsw i32 %337, 1
  %339 = call i32 @sqlite3VdbeJumpHere(i32* %336, i32 %338)
  %340 = load i32*, i32** %16, align 8
  %341 = load i32, i32* @OP_Yield, align 4
  %342 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %20, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = call i32 @sqlite3VdbeAddOp1(i32* %340, i32 %341, i32 %343)
  store i32 %344, i32* %25, align 4
  %345 = load i32*, i32** %16, align 8
  %346 = call i32 @VdbeCoverage(i32* %345)
  %347 = load i32*, i32** %16, align 8
  %348 = load i32, i32* @OP_MakeRecord, align 4
  %349 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %20, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %20, i32 0, i32 2
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* %23, align 4
  %354 = call i32 @sqlite3VdbeAddOp3(i32* %347, i32 %348, i32 %350, i32 %352, i32 %353)
  %355 = load i32*, i32** %16, align 8
  %356 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %357 = call i32 @sqlite3TableAffinity(i32* %355, %struct.TYPE_53__* %356, i32 0)
  %358 = load i32*, i32** %16, align 8
  %359 = load i32, i32* @OP_NewRowid, align 4
  %360 = load i32, i32* %24, align 4
  %361 = call i32 @sqlite3VdbeAddOp2(i32* %358, i32 %359, i32 1, i32 %360)
  %362 = load i32*, i32** %16, align 8
  %363 = load i32, i32* @OP_Insert, align 4
  %364 = load i32, i32* %23, align 4
  %365 = load i32, i32* %24, align 4
  %366 = call i32 @sqlite3VdbeAddOp3(i32* %362, i32 %363, i32 1, i32 %364, i32 %365)
  %367 = load i32*, i32** %16, align 8
  %368 = load i32, i32* %25, align 4
  %369 = call i32 @sqlite3VdbeGoto(i32* %367, i32 %368)
  %370 = load i32*, i32** %16, align 8
  %371 = load i32, i32* %25, align 4
  %372 = call i32 @sqlite3VdbeJumpHere(i32* %370, i32 %371)
  %373 = load i32*, i32** %16, align 8
  %374 = load i32, i32* @OP_Close, align 4
  %375 = call i32 @sqlite3VdbeAddOp1(i32* %373, i32 %374, i32 1)
  br label %376

376:                                              ; preds = %332, %241
  %377 = load i32*, i32** %10, align 8
  %378 = icmp ne i32* %377, null
  br i1 %378, label %379, label %383

379:                                              ; preds = %376
  %380 = load %struct.TYPE_51__*, %struct.TYPE_51__** %12, align 8
  %381 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %382 = call i8* @createTableStmt(%struct.TYPE_51__* %380, %struct.TYPE_53__* %381)
  store i8* %382, i8** %19, align 8
  br label %428

383:                                              ; preds = %376
  %384 = load i32, i32* %9, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %389

386:                                              ; preds = %383
  %387 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %387, i32 0, i32 6
  br label %391

389:                                              ; preds = %383
  %390 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  br label %391

391:                                              ; preds = %389, %386
  %392 = phi %struct.TYPE_52__* [ %388, %386 ], [ %390, %389 ]
  store %struct.TYPE_52__* %392, %struct.TYPE_52__** %27, align 8
  %393 = load %struct.TYPE_52__*, %struct.TYPE_52__** %27, align 8
  %394 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %393, i32 0, i32 0
  %395 = load i8*, i8** %394, align 8
  %396 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %397 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %396, i32 0, i32 3
  %398 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 4
  %400 = sext i32 %399 to i64
  %401 = sub i64 0, %400
  %402 = getelementptr inbounds i8, i8* %395, i64 %401
  %403 = ptrtoint i8* %402 to i32
  store i32 %403, i32* %15, align 4
  %404 = load %struct.TYPE_52__*, %struct.TYPE_52__** %27, align 8
  %405 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %404, i32 0, i32 0
  %406 = load i8*, i8** %405, align 8
  %407 = getelementptr inbounds i8, i8* %406, i64 0
  %408 = load i8, i8* %407, align 1
  %409 = sext i8 %408 to i32
  %410 = icmp ne i32 %409, 59
  br i1 %410, label %411, label %419

411:                                              ; preds = %391
  %412 = load %struct.TYPE_52__*, %struct.TYPE_52__** %27, align 8
  %413 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %412, i32 0, i32 1
  %414 = load i64, i64* %413, align 8
  %415 = load i32, i32* %15, align 4
  %416 = sext i32 %415 to i64
  %417 = add nsw i64 %416, %414
  %418 = trunc i64 %417 to i32
  store i32 %418, i32* %15, align 4
  br label %419

419:                                              ; preds = %411, %391
  %420 = load %struct.TYPE_51__*, %struct.TYPE_51__** %12, align 8
  %421 = load i8*, i8** %18, align 8
  %422 = load i32, i32* %15, align 4
  %423 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %424 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %423, i32 0, i32 3
  %425 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = call i8* (%struct.TYPE_51__*, i8*, i8*, ...) @sqlite3MPrintf(%struct.TYPE_51__* %420, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %421, i32 %422, i32 %426)
  store i8* %427, i8** %19, align 8
  br label %428

428:                                              ; preds = %419, %379
  %429 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %430 = load %struct.TYPE_51__*, %struct.TYPE_51__** %12, align 8
  %431 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %430, i32 0, i32 2
  %432 = load %struct.TYPE_47__*, %struct.TYPE_47__** %431, align 8
  %433 = load i32, i32* %13, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %432, i64 %434
  %436 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  %438 = load i32, i32* @MASTER_NAME, align 4
  %439 = load i8*, i8** %17, align 8
  %440 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %441 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %440, i32 0, i32 5
  %442 = load i32, i32* %441, align 8
  %443 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %444 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %443, i32 0, i32 5
  %445 = load i32, i32* %444, align 8
  %446 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %447 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %446, i32 0, i32 2
  %448 = load i32, i32* %447, align 8
  %449 = load i8*, i8** %19, align 8
  %450 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %451 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %450, i32 0, i32 5
  %452 = load i32, i32* %451, align 8
  %453 = call i32 (%struct.TYPE_56__*, i8*, i32, ...) @sqlite3NestedParse(%struct.TYPE_56__* %429, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.8, i64 0, i64 0), i32 %437, i32 %438, i8* %439, i32 %442, i32 %445, i32 %448, i8* %449, i32 %452)
  %454 = load %struct.TYPE_51__*, %struct.TYPE_51__** %12, align 8
  %455 = load i8*, i8** %19, align 8
  %456 = call i32 @sqlite3DbFree(%struct.TYPE_51__* %454, i8* %455)
  %457 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %458 = load i32, i32* %13, align 4
  %459 = call i32 @sqlite3ChangeCookie(%struct.TYPE_56__* %457, i32 %458)
  %460 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %461 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = load i32, i32* @TF_Autoincrement, align 4
  %464 = and i32 %462, %463
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %490

466:                                              ; preds = %428
  %467 = load %struct.TYPE_51__*, %struct.TYPE_51__** %12, align 8
  %468 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %467, i32 0, i32 2
  %469 = load %struct.TYPE_47__*, %struct.TYPE_47__** %468, align 8
  %470 = load i32, i32* %13, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %469, i64 %471
  store %struct.TYPE_47__* %472, %struct.TYPE_47__** %28, align 8
  %473 = load %struct.TYPE_51__*, %struct.TYPE_51__** %12, align 8
  %474 = load i32, i32* %13, align 4
  %475 = call i32 @sqlite3SchemaMutexHeld(%struct.TYPE_51__* %473, i32 %474, i32 0)
  %476 = call i32 @assert(i32 %475)
  %477 = load %struct.TYPE_47__*, %struct.TYPE_47__** %28, align 8
  %478 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %477, i32 0, i32 1
  %479 = load %struct.TYPE_48__*, %struct.TYPE_48__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %479, i32 0, i32 0
  %481 = load i64, i64* %480, align 8
  %482 = icmp eq i64 %481, 0
  br i1 %482, label %483, label %489

483:                                              ; preds = %466
  %484 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %485 = load %struct.TYPE_47__*, %struct.TYPE_47__** %28, align 8
  %486 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = call i32 (%struct.TYPE_56__*, i8*, i32, ...) @sqlite3NestedParse(%struct.TYPE_56__* %484, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %487)
  br label %489

489:                                              ; preds = %483, %466
  br label %490

490:                                              ; preds = %489, %428
  %491 = load i32*, i32** %16, align 8
  %492 = load i32, i32* %13, align 4
  %493 = load %struct.TYPE_51__*, %struct.TYPE_51__** %12, align 8
  %494 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %495 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %494, i32 0, i32 5
  %496 = load i32, i32* %495, align 8
  %497 = sext i32 %496 to i64
  %498 = inttoptr i64 %497 to i8*
  %499 = call i8* (%struct.TYPE_51__*, i8*, i8*, ...) @sqlite3MPrintf(%struct.TYPE_51__* %493, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8* %498)
  %500 = call i32 @sqlite3VdbeAddParseSchemaOp(i32* %491, i32 %492, i8* %499)
  br label %501

501:                                              ; preds = %490, %216
  %502 = load %struct.TYPE_51__*, %struct.TYPE_51__** %12, align 8
  %503 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %502, i32 0, i32 1
  %504 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %503, i32 0, i32 1
  %505 = load i64, i64* %504, align 8
  %506 = icmp ne i64 %505, 0
  br i1 %506, label %507, label %585

507:                                              ; preds = %501
  %508 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %509 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %508, i32 0, i32 6
  %510 = load %struct.TYPE_55__*, %struct.TYPE_55__** %509, align 8
  store %struct.TYPE_55__* %510, %struct.TYPE_55__** %30, align 8
  %511 = load %struct.TYPE_51__*, %struct.TYPE_51__** %12, align 8
  %512 = load i32, i32* %13, align 4
  %513 = call i32 @sqlite3SchemaMutexHeld(%struct.TYPE_51__* %511, i32 %512, i32 0)
  %514 = call i32 @assert(i32 %513)
  %515 = load %struct.TYPE_55__*, %struct.TYPE_55__** %30, align 8
  %516 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %515, i32 0, i32 0
  %517 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %518 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %517, i32 0, i32 5
  %519 = load i32, i32* %518, align 8
  %520 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %521 = call %struct.TYPE_53__* @sqlite3HashInsert(i32* %516, i32 %519, %struct.TYPE_53__* %520)
  store %struct.TYPE_53__* %521, %struct.TYPE_53__** %29, align 8
  %522 = load %struct.TYPE_53__*, %struct.TYPE_53__** %29, align 8
  %523 = icmp ne %struct.TYPE_53__* %522, null
  br i1 %523, label %524, label %532

524:                                              ; preds = %507
  %525 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %526 = load %struct.TYPE_53__*, %struct.TYPE_53__** %29, align 8
  %527 = icmp eq %struct.TYPE_53__* %525, %526
  %528 = zext i1 %527 to i32
  %529 = call i32 @assert(i32 %528)
  %530 = load %struct.TYPE_51__*, %struct.TYPE_51__** %12, align 8
  %531 = call i32 @sqlite3OomFault(%struct.TYPE_51__* %530)
  br label %585

532:                                              ; preds = %507
  %533 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %534 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %533, i32 0, i32 4
  store %struct.TYPE_53__* null, %struct.TYPE_53__** %534, align 8
  %535 = load i32, i32* @DBFLAG_SchemaChange, align 4
  %536 = load %struct.TYPE_51__*, %struct.TYPE_51__** %12, align 8
  %537 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %536, i32 0, i32 0
  %538 = load i32, i32* %537, align 8
  %539 = or i32 %538, %535
  store i32 %539, i32* %537, align 8
  %540 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %541 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %540, i32 0, i32 3
  %542 = load i64, i64* %541, align 8
  %543 = icmp ne i64 %542, 0
  br i1 %543, label %584, label %544

544:                                              ; preds = %532
  %545 = load %struct.TYPE_56__*, %struct.TYPE_56__** %6, align 8
  %546 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %545, i32 0, i32 3
  %547 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 4
  %549 = sext i32 %548 to i64
  %550 = inttoptr i64 %549 to i8*
  store i8* %550, i8** %31, align 8
  %551 = load i32*, i32** %10, align 8
  %552 = icmp ne i32* %551, null
  br i1 %552, label %559, label %553

553:                                              ; preds = %544
  %554 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %555 = icmp ne %struct.TYPE_52__* %554, null
  br i1 %555, label %556, label %559

556:                                              ; preds = %553
  %557 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %558 = icmp ne %struct.TYPE_52__* %557, null
  br label %559

559:                                              ; preds = %556, %553, %544
  %560 = phi i1 [ false, %553 ], [ false, %544 ], [ %558, %556 ]
  %561 = zext i1 %560 to i32
  %562 = call i32 @assert(i32 %561)
  %563 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %564 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %563, i32 0, i32 0
  %565 = load i8*, i8** %564, align 8
  %566 = icmp eq i8* %565, null
  br i1 %566, label %567, label %569

567:                                              ; preds = %559
  %568 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  store %struct.TYPE_52__* %568, %struct.TYPE_52__** %7, align 8
  br label %569

569:                                              ; preds = %567, %559
  %570 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %571 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %570, i32 0, i32 0
  %572 = load i8*, i8** %571, align 8
  %573 = load i8*, i8** %31, align 8
  %574 = ptrtoint i8* %572 to i64
  %575 = ptrtoint i8* %573 to i64
  %576 = sub i64 %574, %575
  %577 = trunc i64 %576 to i32
  store i32 %577, i32* %32, align 4
  %578 = load i8*, i8** %31, align 8
  %579 = load i32, i32* %32, align 4
  %580 = call i64 @sqlite3Utf8CharLen(i8* %578, i32 %579)
  %581 = add nsw i64 13, %580
  %582 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %583 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %582, i32 0, i32 4
  store i64 %581, i64* %583, align 8
  br label %584

584:                                              ; preds = %569, %532
  br label %585

585:                                              ; preds = %41, %55, %81, %154, %230, %289, %296, %331, %524, %584, %501
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @isShadowTableName(%struct.TYPE_51__*, i32) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_56__*, i8*, ...) #1

declare dso_local i64 @sqlite3PrimaryKeyIndex(%struct.TYPE_53__*) #1

declare dso_local i32 @convertToWithoutRowidTable(%struct.TYPE_56__*, %struct.TYPE_53__*) #1

declare dso_local i32 @sqlite3SchemaToIndex(%struct.TYPE_51__*, %struct.TYPE_55__*) #1

declare dso_local i32 @sqlite3ResolveSelfReference(%struct.TYPE_56__*, %struct.TYPE_53__*, i32, i32, i64) #1

declare dso_local i32 @estimateTableWidth(%struct.TYPE_53__*) #1

declare dso_local i32 @estimateIndexWidth(%struct.TYPE_46__*) #1

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_56__*) #1

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @sqlite3MayAbort(%struct.TYPE_56__*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local %struct.TYPE_53__* @sqlite3ResultSetOfSelect(%struct.TYPE_56__*, i32*) #1

declare dso_local i32 @sqlite3DeleteTable(%struct.TYPE_51__*, %struct.TYPE_53__*) #1

declare dso_local i32 @sqlite3SelectDestInit(%struct.TYPE_54__*, i32, i32) #1

declare dso_local i32 @sqlite3Select(%struct.TYPE_56__*, i32*, %struct.TYPE_54__*) #1

declare dso_local i32 @sqlite3VdbeEndCoroutine(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3TableAffinity(i32*, %struct.TYPE_53__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeGoto(i32*, i32) #1

declare dso_local i8* @createTableStmt(%struct.TYPE_51__*, %struct.TYPE_53__*) #1

declare dso_local i8* @sqlite3MPrintf(%struct.TYPE_51__*, i8*, i8*, ...) #1

declare dso_local i32 @sqlite3NestedParse(%struct.TYPE_56__*, i8*, i32, ...) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_51__*, i8*) #1

declare dso_local i32 @sqlite3ChangeCookie(%struct.TYPE_56__*, i32) #1

declare dso_local i32 @sqlite3SchemaMutexHeld(%struct.TYPE_51__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddParseSchemaOp(i32*, i32, i8*) #1

declare dso_local %struct.TYPE_53__* @sqlite3HashInsert(i32*, i32, %struct.TYPE_53__*) #1

declare dso_local i32 @sqlite3OomFault(%struct.TYPE_51__*) #1

declare dso_local i64 @sqlite3Utf8CharLen(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
