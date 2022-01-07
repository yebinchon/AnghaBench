; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_alter.c_sqlite3AlterRenameTable.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_alter.c_sqlite3AlterRenameTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_44__ = type { i32, %struct.TYPE_40__* }
%struct.TYPE_40__ = type { i32, %struct.TYPE_37__*, i32 }
%struct.TYPE_37__ = type { i8* }
%struct.TYPE_43__ = type { i32, i32* }
%struct.TYPE_42__ = type { i8*, i64, i32 }
%struct.TYPE_41__ = type { %struct.TYPE_39__* }
%struct.TYPE_39__ = type { %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i64 }

@DBFLAG_PreferBuiltin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"there is already another table or index with this name: %s\00", align 1
@SQLITE_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"view %s may not be altered\00", align 1
@SQLITE_ALTER_TABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [161 x i8] c"UPDATE \22%w\22.%s SET sql = sqlite_rename_table(%Q, type, name, sql, %Q, %Q, %d) WHERE (type!='index' OR tbl_name=%Q COLLATE nocase)AND   name NOT LIKE 'sqlite_%%'\00", align 1
@MASTER_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [277 x i8] c"UPDATE %Q.%s SET tbl_name = %Q, name = CASE WHEN type='table' THEN %Q WHEN name LIKE 'sqlite_autoindex%%' AND type='index' THEN 'sqlite_autoindex_' || %Q || substr(name,%d+18) ELSE name END WHERE tbl_name=%Q COLLATE nocase AND (type='table' OR type='index' OR type='trigger');\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"sqlite_sequence\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"UPDATE \22%w\22.sqlite_sequence set name = %Q WHERE name = %Q\00", align 1
@.str.6 = private unnamed_addr constant [254 x i8] c"UPDATE sqlite_temp_master SET sql = sqlite_rename_table(%Q, type, name, sql, %Q, %Q, 1), tbl_name = CASE WHEN tbl_name=%Q COLLATE nocase AND           sqlite_rename_test(%Q, sql, type, name, 1) THEN %Q ELSE tbl_name END WHERE type IN ('view', 'trigger')\00", align 1
@OP_VRename = common dso_local global i32 0, align 4
@P4_VTAB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3AlterRenameTable(%struct.TYPE_44__* %0, %struct.TYPE_43__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_44__*, align 8
  %5 = alloca %struct.TYPE_43__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_42__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_40__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_41__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_44__* %0, %struct.TYPE_44__** %4, align 8
  store %struct.TYPE_43__* %1, %struct.TYPE_43__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i8* null, i8** %10, align 8
  %18 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  store %struct.TYPE_40__* %20, %struct.TYPE_40__** %11, align 8
  store %struct.TYPE_41__* null, %struct.TYPE_41__** %15, align 8
  %21 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %16, align 4
  %24 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @NEVER(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %244

30:                                               ; preds = %3
  %31 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %40 = call i32 @sqlite3BtreeHoldsAllMutexes(%struct.TYPE_40__* %39)
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %43 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = call %struct.TYPE_42__* @sqlite3LocateTableItem(%struct.TYPE_44__* %42, i32 0, i32* %46)
  store %struct.TYPE_42__* %47, %struct.TYPE_42__** %9, align 8
  %48 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %49 = icmp ne %struct.TYPE_42__* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %30
  br label %244

51:                                               ; preds = %30
  %52 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_40__*, %struct.TYPE_40__** %53, align 8
  %55 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @sqlite3SchemaToIndex(%struct.TYPE_40__* %54, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_37__*, %struct.TYPE_37__** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %8, align 8
  %67 = load i32, i32* @DBFLAG_PreferBuiltin, align 4
  %68 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = call i8* @sqlite3NameFromToken(%struct.TYPE_40__* %72, i32* %73)
  store i8* %74, i8** %10, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %51
  br label %244

78:                                               ; preds = %51
  %79 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = call i64 @sqlite3FindTable(%struct.TYPE_40__* %79, i8* %80, i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = call i64 @sqlite3FindIndex(%struct.TYPE_40__* %85, i8* %86, i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84, %78
  %91 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 @sqlite3ErrorMsg(%struct.TYPE_44__* %91, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %92)
  br label %244

94:                                               ; preds = %84
  %95 = load i64, i64* @SQLITE_OK, align 8
  %96 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %97 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %98 = call i64 @isAlterableTable(%struct.TYPE_44__* %96, %struct.TYPE_42__* %97)
  %99 = icmp ne i64 %95, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %244

101:                                              ; preds = %94
  %102 = load i64, i64* @SQLITE_OK, align 8
  %103 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = call i64 @sqlite3CheckObjectName(%struct.TYPE_44__* %103, i8* %104)
  %106 = icmp ne i64 %102, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %244

108:                                              ; preds = %101
  %109 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %115 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @sqlite3ErrorMsg(%struct.TYPE_44__* %114, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %117)
  br label %244

119:                                              ; preds = %108
  %120 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %121 = load i32, i32* @SQLITE_ALTER_TABLE, align 4
  %122 = load i8*, i8** %8, align 8
  %123 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i64 @sqlite3AuthCheck(%struct.TYPE_44__* %120, i32 %121, i8* %122, i8* %125, i32 0)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %119
  br label %244

129:                                              ; preds = %119
  %130 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %131 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %132 = call i64 @sqlite3ViewGetColumnNames(%struct.TYPE_44__* %130, %struct.TYPE_42__* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %244

135:                                              ; preds = %129
  %136 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %137 = call i64 @IsVirtual(%struct.TYPE_42__* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %153

139:                                              ; preds = %135
  %140 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %141 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %142 = call %struct.TYPE_41__* @sqlite3GetVTable(%struct.TYPE_40__* %140, %struct.TYPE_42__* %141)
  store %struct.TYPE_41__* %142, %struct.TYPE_41__** %15, align 8
  %143 = load %struct.TYPE_41__*, %struct.TYPE_41__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_39__*, %struct.TYPE_39__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_38__*, %struct.TYPE_38__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %139
  store %struct.TYPE_41__* null, %struct.TYPE_41__** %15, align 8
  br label %152

152:                                              ; preds = %151, %139
  br label %153

153:                                              ; preds = %152, %135
  %154 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %155 = call i32* @sqlite3GetVdbe(%struct.TYPE_44__* %154)
  store i32* %155, i32** %14, align 8
  %156 = load i32*, i32** %14, align 8
  %157 = icmp eq i32* %156, null
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %244

159:                                              ; preds = %153
  %160 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %161 = call i32 @sqlite3MayAbort(%struct.TYPE_44__* %160)
  %162 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  store i8* %164, i8** %13, align 8
  %165 = load i8*, i8** %13, align 8
  %166 = call i32 @sqlite3Utf8CharLen(i8* %165, i32 -1)
  store i32 %166, i32* %12, align 4
  %167 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %168 = load i8*, i8** %8, align 8
  %169 = load i32, i32* @MASTER_NAME, align 4
  %170 = sext i32 %169 to i64
  %171 = inttoptr i64 %170 to i8*
  %172 = load i8*, i8** %8, align 8
  %173 = load i8*, i8** %13, align 8
  %174 = load i8*, i8** %10, align 8
  %175 = load i32, i32* %7, align 4
  %176 = icmp eq i32 %175, 1
  %177 = zext i1 %176 to i32
  %178 = load i8*, i8** %13, align 8
  %179 = call i32 (%struct.TYPE_44__*, i8*, i8*, i8*, i8*, ...) @sqlite3NestedParse(%struct.TYPE_44__* %167, i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.2, i64 0, i64 0), i8* %168, i8* %171, i8* %172, i8* %173, i8* %174, i32 %177, i8* %178)
  %180 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %181 = load i8*, i8** %8, align 8
  %182 = load i32, i32* @MASTER_NAME, align 4
  %183 = sext i32 %182 to i64
  %184 = inttoptr i64 %183 to i8*
  %185 = load i8*, i8** %10, align 8
  %186 = load i8*, i8** %10, align 8
  %187 = load i8*, i8** %10, align 8
  %188 = load i32, i32* %12, align 4
  %189 = load i8*, i8** %13, align 8
  %190 = call i32 (%struct.TYPE_44__*, i8*, i8*, i8*, i8*, ...) @sqlite3NestedParse(%struct.TYPE_44__* %180, i8* getelementptr inbounds ([277 x i8], [277 x i8]* @.str.3, i64 0, i64 0), i8* %181, i8* %184, i8* %185, i8* %186, i8* %187, i32 %188, i8* %189)
  %191 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %192 = load i8*, i8** %8, align 8
  %193 = call i64 @sqlite3FindTable(%struct.TYPE_40__* %191, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %159
  %196 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %197 = load i8*, i8** %8, align 8
  %198 = load i8*, i8** %10, align 8
  %199 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 (%struct.TYPE_44__*, i8*, i8*, i8*, i8*, ...) @sqlite3NestedParse(%struct.TYPE_44__* %196, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i8* %197, i8* %198, i8* %201)
  br label %203

203:                                              ; preds = %195, %159
  %204 = load i32, i32* %7, align 4
  %205 = icmp ne i32 %204, 1
  br i1 %205, label %206, label %215

206:                                              ; preds = %203
  %207 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %208 = load i8*, i8** %8, align 8
  %209 = load i8*, i8** %13, align 8
  %210 = load i8*, i8** %10, align 8
  %211 = load i8*, i8** %13, align 8
  %212 = load i8*, i8** %8, align 8
  %213 = load i8*, i8** %10, align 8
  %214 = call i32 (%struct.TYPE_44__*, i8*, i8*, i8*, i8*, ...) @sqlite3NestedParse(%struct.TYPE_44__* %207, i8* getelementptr inbounds ([254 x i8], [254 x i8]* @.str.6, i64 0, i64 0), i8* %208, i8* %209, i8* %210, i8* %211, i8* %212, i8* %213)
  br label %215

215:                                              ; preds = %206, %203
  %216 = load %struct.TYPE_41__*, %struct.TYPE_41__** %15, align 8
  %217 = icmp ne %struct.TYPE_41__* %216, null
  br i1 %217, label %218, label %234

218:                                              ; preds = %215
  %219 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %220, align 8
  store i32 %222, i32* %17, align 4
  %223 = load i32*, i32** %14, align 8
  %224 = load i32, i32* %17, align 4
  %225 = load i8*, i8** %10, align 8
  %226 = call i32 @sqlite3VdbeLoadString(i32* %223, i32 %224, i8* %225)
  %227 = load i32*, i32** %14, align 8
  %228 = load i32, i32* @OP_VRename, align 4
  %229 = load i32, i32* %17, align 4
  %230 = load %struct.TYPE_41__*, %struct.TYPE_41__** %15, align 8
  %231 = bitcast %struct.TYPE_41__* %230 to i8*
  %232 = load i32, i32* @P4_VTAB, align 4
  %233 = call i32 @sqlite3VdbeAddOp4(i32* %227, i32 %228, i32 %229, i32 0, i32 0, i8* %231, i32 %232)
  br label %234

234:                                              ; preds = %218, %215
  %235 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %236 = load i32, i32* %7, align 4
  %237 = call i32 @renameReloadSchema(%struct.TYPE_44__* %235, i32 %236)
  %238 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %239 = load i8*, i8** %8, align 8
  %240 = load i32, i32* %7, align 4
  %241 = icmp eq i32 %240, 1
  %242 = zext i1 %241 to i32
  %243 = call i32 @renameTestSchema(%struct.TYPE_44__* %238, i8* %239, i32 %242)
  br label %244

244:                                              ; preds = %234, %158, %134, %128, %113, %107, %100, %90, %77, %50, %29
  %245 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %246 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %247 = call i32 @sqlite3SrcListDelete(%struct.TYPE_40__* %245, %struct.TYPE_43__* %246)
  %248 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %249 = load i8*, i8** %10, align 8
  %250 = call i32 @sqlite3DbFree(%struct.TYPE_40__* %248, i8* %249)
  %251 = load i32, i32* %16, align 4
  %252 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %253 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %252, i32 0, i32 0
  store i32 %251, i32* %253, align 8
  ret void
}

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3BtreeHoldsAllMutexes(%struct.TYPE_40__*) #1

declare dso_local %struct.TYPE_42__* @sqlite3LocateTableItem(%struct.TYPE_44__*, i32, i32*) #1

declare dso_local i32 @sqlite3SchemaToIndex(%struct.TYPE_40__*, i32) #1

declare dso_local i8* @sqlite3NameFromToken(%struct.TYPE_40__*, i32*) #1

declare dso_local i64 @sqlite3FindTable(%struct.TYPE_40__*, i8*, i8*) #1

declare dso_local i64 @sqlite3FindIndex(%struct.TYPE_40__*, i8*, i8*) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_44__*, i8*, i8*) #1

declare dso_local i64 @isAlterableTable(%struct.TYPE_44__*, %struct.TYPE_42__*) #1

declare dso_local i64 @sqlite3CheckObjectName(%struct.TYPE_44__*, i8*) #1

declare dso_local i64 @sqlite3AuthCheck(%struct.TYPE_44__*, i32, i8*, i8*, i32) #1

declare dso_local i64 @sqlite3ViewGetColumnNames(%struct.TYPE_44__*, %struct.TYPE_42__*) #1

declare dso_local i64 @IsVirtual(%struct.TYPE_42__*) #1

declare dso_local %struct.TYPE_41__* @sqlite3GetVTable(%struct.TYPE_40__*, %struct.TYPE_42__*) #1

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_44__*) #1

declare dso_local i32 @sqlite3MayAbort(%struct.TYPE_44__*) #1

declare dso_local i32 @sqlite3Utf8CharLen(i8*, i32) #1

declare dso_local i32 @sqlite3NestedParse(%struct.TYPE_44__*, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @sqlite3VdbeLoadString(i32*, i32, i8*) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @renameReloadSchema(%struct.TYPE_44__*, i32) #1

declare dso_local i32 @renameTestSchema(%struct.TYPE_44__*, i8*, i32) #1

declare dso_local i32 @sqlite3SrcListDelete(%struct.TYPE_40__*, %struct.TYPE_43__*) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_40__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
