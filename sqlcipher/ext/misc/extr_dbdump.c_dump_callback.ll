; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_dbdump.c_dump_callback.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_dbdump.c_dump_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32 (i8*, i32)*, i32, i32 }
%struct.TYPE_9__ = type { i8* }

@.str = private unnamed_addr constant [16 x i8] c"sqlite_sequence\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"DELETE FROM sqlite_sequence;\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"sqlite_stat?\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"ANALYZE sqlite_master;\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"sqlite_\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"CREATE VIRTUAL TABLE\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"PRAGMA writable_schema=ON;\0A\00", align 1
@.str.7 = private unnamed_addr constant [92 x i8] c"INSERT INTO sqlite_master(type,name,tbl_name,rootpage,sql)VALUES('table','%q','%q',0,'%q');\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"CREATE TABLE ['\22]*\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"CREATE TABLE IF NOT EXISTS \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"INSERT INTO \00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c" VALUES(\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"SELECT \00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c" FROM \00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"1e999\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"-1e999\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"%!.20g\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"x'\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**, i8**)* @dump_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_callback(i8* %0, i32 %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_9__, align 8
  %17 = alloca %struct.TYPE_9__, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca [3 x i8], align 1
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %14, align 8
  %29 = load i8**, i8*** %9, align 8
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 3
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %452

33:                                               ; preds = %4
  %34 = load i8**, i8*** %8, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %11, align 8
  %37 = load i8**, i8*** %8, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %12, align 8
  %40 = load i8**, i8*** %8, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 2
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %13, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %33
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 3
  %49 = load i32 (i8*, i32)*, i32 (i8*, i32)** %48, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 %49(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %137

54:                                               ; preds = %33
  %55 = load i8*, i8** %11, align 8
  %56 = call i64 @sqlite3_strglob(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 3
  %61 = load i32 (i8*, i32)*, i32 (i8*, i32)** %60, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 %61(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %136

66:                                               ; preds = %54
  %67 = load i8*, i8** %11, align 8
  %68 = call i64 @strncmp(i8* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %452

71:                                               ; preds = %66
  %72 = load i8*, i8** %13, align 8
  %73 = call i64 @strncmp(i8* %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 20)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %71
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %75
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 3
  %83 = load i32 (i8*, i32)*, i32 (i8*, i32)** %82, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 %83(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %86)
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  br label %90

90:                                               ; preds = %80, %75
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = call i32 (%struct.TYPE_10__*, i8*, ...) @output_formatted(%struct.TYPE_10__* %91, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.7, i64 0, i64 0), i8* %92, i8* %93, i8* %94)
  store i32 0, i32* %5, align 4
  br label %452

96:                                               ; preds = %71
  %97 = load i8*, i8** %13, align 8
  %98 = call i64 @sqlite3_strglob(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %96
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 3
  %103 = load i32 (i8*, i32)*, i32 (i8*, i32)** %102, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 %103(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %106)
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 3
  %110 = load i32 (i8*, i32)*, i32 (i8*, i32)** %109, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 13
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 %110(i8* %112, i32 %115)
  br label %126

117:                                              ; preds = %96
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 3
  %120 = load i32 (i8*, i32)*, i32 (i8*, i32)** %119, align 8
  %121 = load i8*, i8** %13, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 %120(i8* %121, i32 %124)
  br label %126

126:                                              ; preds = %117, %100
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 3
  %129 = load i32 (i8*, i32)*, i32 (i8*, i32)** %128, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 %129(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %126
  br label %135

135:                                              ; preds = %134
  br label %136

136:                                              ; preds = %135, %58
  br label %137

137:                                              ; preds = %136, %46
  %138 = load i8*, i8** %12, align 8
  %139 = call i64 @strcmp(i8* %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %451

141:                                              ; preds = %137
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %143 = load i8*, i8** %11, align 8
  %144 = call i8** @tableColumnList(%struct.TYPE_10__* %142, i8* %143)
  store i8** %144, i8*** %18, align 8
  %145 = load i8**, i8*** %18, align 8
  %146 = icmp eq i8** %145, null
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  store i32 0, i32* %5, align 4
  br label %452

148:                                              ; preds = %141
  %149 = call i32 @initText(%struct.TYPE_9__* %17)
  %150 = call i32 @appendText(%struct.TYPE_9__* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 0)
  %151 = load i8*, i8** %11, align 8
  %152 = load i8*, i8** %11, align 8
  %153 = call i32 @quoteChar(i8* %152)
  %154 = call i32 @appendText(%struct.TYPE_9__* %17, i8* %151, i32 %153)
  %155 = load i8**, i8*** %18, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 0
  %157 = load i8*, i8** %156, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %191

159:                                              ; preds = %148
  %160 = call i32 @appendText(%struct.TYPE_9__* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 0)
  %161 = load i8**, i8*** %18, align 8
  %162 = getelementptr inbounds i8*, i8** %161, i64 0
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @appendText(%struct.TYPE_9__* %17, i8* %163, i32 0)
  store i32 1, i32* %19, align 4
  br label %165

165:                                              ; preds = %186, %159
  %166 = load i8**, i8*** %18, align 8
  %167 = load i32, i32* %19, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %166, i64 %168
  %170 = load i8*, i8** %169, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %189

172:                                              ; preds = %165
  %173 = call i32 @appendText(%struct.TYPE_9__* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 0)
  %174 = load i8**, i8*** %18, align 8
  %175 = load i32, i32* %19, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %174, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = load i8**, i8*** %18, align 8
  %180 = load i32, i32* %19, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8*, i8** %179, i64 %181
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @quoteChar(i8* %183)
  %185 = call i32 @appendText(%struct.TYPE_9__* %17, i8* %178, i32 %184)
  br label %186

186:                                              ; preds = %172
  %187 = load i32, i32* %19, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %19, align 4
  br label %165

189:                                              ; preds = %165
  %190 = call i32 @appendText(%struct.TYPE_9__* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32 0)
  br label %191

191:                                              ; preds = %189, %148
  %192 = call i32 @appendText(%struct.TYPE_9__* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 0)
  %193 = call i32 @initText(%struct.TYPE_9__* %16)
  %194 = call i32 @appendText(%struct.TYPE_9__* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i32 0)
  %195 = load i8**, i8*** %18, align 8
  %196 = getelementptr inbounds i8*, i8** %195, i64 0
  %197 = load i8*, i8** %196, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %205

199:                                              ; preds = %191
  %200 = load i8**, i8*** %18, align 8
  %201 = getelementptr inbounds i8*, i8** %200, i64 0
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 @appendText(%struct.TYPE_9__* %16, i8* %202, i32 0)
  %204 = call i32 @appendText(%struct.TYPE_9__* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 0)
  br label %205

205:                                              ; preds = %199, %191
  store i32 1, i32* %19, align 4
  br label %206

206:                                              ; preds = %236, %205
  %207 = load i8**, i8*** %18, align 8
  %208 = load i32, i32* %19, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8*, i8** %207, i64 %209
  %211 = load i8*, i8** %210, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %213, label %239

213:                                              ; preds = %206
  %214 = load i8**, i8*** %18, align 8
  %215 = load i32, i32* %19, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8*, i8** %214, i64 %216
  %218 = load i8*, i8** %217, align 8
  %219 = load i8**, i8*** %18, align 8
  %220 = load i32, i32* %19, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8*, i8** %219, i64 %221
  %223 = load i8*, i8** %222, align 8
  %224 = call i32 @quoteChar(i8* %223)
  %225 = call i32 @appendText(%struct.TYPE_9__* %16, i8* %218, i32 %224)
  %226 = load i8**, i8*** %18, align 8
  %227 = load i32, i32* %19, align 4
  %228 = add nsw i32 %227, 1
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8*, i8** %226, i64 %229
  %231 = load i8*, i8** %230, align 8
  %232 = icmp ne i8* %231, null
  br i1 %232, label %233, label %235

233:                                              ; preds = %213
  %234 = call i32 @appendText(%struct.TYPE_9__* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 0)
  br label %235

235:                                              ; preds = %233, %213
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %19, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %19, align 4
  br label %206

239:                                              ; preds = %206
  %240 = load i32, i32* %19, align 4
  store i32 %240, i32* %20, align 4
  %241 = load i8**, i8*** %18, align 8
  %242 = getelementptr inbounds i8*, i8** %241, i64 0
  %243 = load i8*, i8** %242, align 8
  %244 = icmp eq i8* %243, null
  br i1 %244, label %245, label %248

245:                                              ; preds = %239
  %246 = load i32, i32* %20, align 4
  %247 = add nsw i32 %246, -1
  store i32 %247, i32* %20, align 4
  br label %248

248:                                              ; preds = %245, %239
  %249 = load i8**, i8*** %18, align 8
  %250 = call i32 @freeColumnList(i8** %249)
  %251 = call i32 @appendText(%struct.TYPE_9__* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32 0)
  %252 = load i8*, i8** %11, align 8
  %253 = load i8*, i8** %11, align 8
  %254 = call i32 @quoteChar(i8* %253)
  %255 = call i32 @appendText(%struct.TYPE_9__* %16, i8* %252, i32 %254)
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 4
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %260 = load i8*, i8** %259, align 8
  %261 = call i32 @sqlite3_prepare_v2(i32 %258, i8* %260, i32 -1, i32** %15, i32 0)
  store i32 %261, i32* %10, align 4
  %262 = load i32, i32* %10, align 4
  %263 = load i32, i32* @SQLITE_OK, align 4
  %264 = icmp ne i32 %262, %263
  br i1 %264, label %265, label %280

265:                                              ; preds = %248
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 4
  %268 = load i32, i32* %267, align 8
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %267, align 8
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @SQLITE_OK, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %279

275:                                              ; preds = %265
  %276 = load i32, i32* %10, align 4
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 1
  store i32 %276, i32* %278, align 4
  br label %279

279:                                              ; preds = %275, %265
  br label %446

280:                                              ; preds = %248
  br label %281

281:                                              ; preds = %437, %280
  %282 = load i64, i64* @SQLITE_ROW, align 8
  %283 = load i32*, i32** %15, align 8
  %284 = call i64 @sqlite3_step(i32* %283)
  %285 = icmp eq i64 %282, %284
  br i1 %285, label %286, label %445

286:                                              ; preds = %281
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 3
  %289 = load i32 (i8*, i32)*, i32 (i8*, i32)** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %291 = load i8*, i8** %290, align 8
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = call i32 %289(i8* %291, i32 %294)
  store i32 0, i32* %19, align 4
  br label %296

296:                                              ; preds = %434, %286
  %297 = load i32, i32* %19, align 4
  %298 = load i32, i32* %20, align 4
  %299 = icmp slt i32 %297, %298
  br i1 %299, label %300, label %437

300:                                              ; preds = %296
  %301 = load i32, i32* %19, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %311

303:                                              ; preds = %300
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 3
  %306 = load i32 (i8*, i32)*, i32 (i8*, i32)** %305, align 8
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = call i32 %306(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 %309)
  br label %311

311:                                              ; preds = %303, %300
  %312 = load i32*, i32** %15, align 8
  %313 = load i32, i32* %19, align 4
  %314 = call i32 @sqlite3_column_type(i32* %312, i32 %313)
  switch i32 %314, label %433 [
    i32 130, label %315
    i32 131, label %321
    i32 129, label %355
    i32 128, label %363
    i32 132, label %370
  ]

315:                                              ; preds = %311
  %316 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %317 = load i32*, i32** %15, align 8
  %318 = load i32, i32* %19, align 4
  %319 = call double @sqlite3_column_int64(i32* %317, i32 %318)
  %320 = call i32 (%struct.TYPE_10__*, i8*, ...) @output_formatted(%struct.TYPE_10__* %316, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), double %319)
  br label %433

321:                                              ; preds = %311
  %322 = load i32*, i32** %15, align 8
  %323 = load i32, i32* %19, align 4
  %324 = call double @sqlite3_column_double(i32* %322, i32 %323)
  store double %324, double* %21, align 8
  %325 = call i32 @memcpy(i32* %22, double* %21, i32 8)
  %326 = load i32, i32* %22, align 4
  %327 = sext i32 %326 to i64
  %328 = icmp eq i64 %327, 9218868437227405312
  br i1 %328, label %329, label %337

329:                                              ; preds = %321
  %330 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %331 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %330, i32 0, i32 3
  %332 = load i32 (i8*, i32)*, i32 (i8*, i32)** %331, align 8
  %333 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = call i32 %332(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i32 %335)
  br label %354

337:                                              ; preds = %321
  %338 = load i32, i32* %22, align 4
  %339 = sext i32 %338 to i64
  %340 = icmp eq i64 %339, -4503599627370496
  br i1 %340, label %341, label %349

341:                                              ; preds = %337
  %342 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 3
  %344 = load i32 (i8*, i32)*, i32 (i8*, i32)** %343, align 8
  %345 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = call i32 %344(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i32 %347)
  br label %353

349:                                              ; preds = %337
  %350 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %351 = load double, double* %21, align 8
  %352 = call i32 (%struct.TYPE_10__*, i8*, ...) @output_formatted(%struct.TYPE_10__* %350, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), double %351)
  br label %353

353:                                              ; preds = %349, %341
  br label %354

354:                                              ; preds = %353, %329
  br label %433

355:                                              ; preds = %311
  %356 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %357 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %356, i32 0, i32 3
  %358 = load i32 (i8*, i32)*, i32 (i8*, i32)** %357, align 8
  %359 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %360 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = call i32 %358(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i32 %361)
  br label %433

363:                                              ; preds = %311
  %364 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %365 = load i32*, i32** %15, align 8
  %366 = load i32, i32* %19, align 4
  %367 = call i64 @sqlite3_column_text(i32* %365, i32 %366)
  %368 = inttoptr i64 %367 to i8*
  %369 = call i32 @output_quoted_escaped_string(%struct.TYPE_10__* %364, i8* %368)
  br label %433

370:                                              ; preds = %311
  %371 = load i32*, i32** %15, align 8
  %372 = load i32, i32* %19, align 4
  %373 = call i32 @sqlite3_column_bytes(i32* %371, i32 %372)
  store i32 %373, i32* %23, align 4
  %374 = load i32*, i32** %15, align 8
  %375 = load i32, i32* %19, align 4
  %376 = call i64 @sqlite3_column_blob(i32* %374, i32 %375)
  %377 = inttoptr i64 %376 to i8*
  store i8* %377, i8** %24, align 8
  %378 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %379 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %378, i32 0, i32 3
  %380 = load i32 (i8*, i32)*, i32 (i8*, i32)** %379, align 8
  %381 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 8
  %384 = call i32 %380(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i32 %383)
  store i32 0, i32* %25, align 4
  br label %385

385:                                              ; preds = %422, %370
  %386 = load i32, i32* %25, align 4
  %387 = load i32, i32* %23, align 4
  %388 = icmp slt i32 %386, %387
  br i1 %388, label %389, label %425

389:                                              ; preds = %385
  %390 = load i8*, i8** %24, align 8
  %391 = load i32, i32* %25, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i8, i8* %390, i64 %392
  %394 = load i8, i8* %393, align 1
  %395 = zext i8 %394 to i32
  %396 = ashr i32 %395, 4
  %397 = and i32 %396, 15
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.25, i64 0, i64 %398
  %400 = load i8, i8* %399, align 1
  %401 = getelementptr inbounds [3 x i8], [3 x i8]* %26, i64 0, i64 0
  store i8 %400, i8* %401, align 1
  %402 = load i8*, i8** %24, align 8
  %403 = load i32, i32* %25, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i8, i8* %402, i64 %404
  %406 = load i8, i8* %405, align 1
  %407 = zext i8 %406 to i32
  %408 = and i32 %407, 15
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.25, i64 0, i64 %409
  %411 = load i8, i8* %410, align 1
  %412 = getelementptr inbounds [3 x i8], [3 x i8]* %26, i64 0, i64 1
  store i8 %411, i8* %412, align 1
  %413 = getelementptr inbounds [3 x i8], [3 x i8]* %26, i64 0, i64 2
  store i8 0, i8* %413, align 1
  %414 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %415 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %414, i32 0, i32 3
  %416 = load i32 (i8*, i32)*, i32 (i8*, i32)** %415, align 8
  %417 = getelementptr inbounds [3 x i8], [3 x i8]* %26, i64 0, i64 0
  %418 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %419 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %418, i32 0, i32 2
  %420 = load i32, i32* %419, align 8
  %421 = call i32 %416(i8* %417, i32 %420)
  br label %422

422:                                              ; preds = %389
  %423 = load i32, i32* %25, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %25, align 4
  br label %385

425:                                              ; preds = %385
  %426 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %427 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %426, i32 0, i32 3
  %428 = load i32 (i8*, i32)*, i32 (i8*, i32)** %427, align 8
  %429 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %430 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %429, i32 0, i32 2
  %431 = load i32, i32* %430, align 8
  %432 = call i32 %428(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i32 %431)
  br label %433

433:                                              ; preds = %311, %425, %363, %355, %354, %315
  br label %434

434:                                              ; preds = %433
  %435 = load i32, i32* %19, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %19, align 4
  br label %296

437:                                              ; preds = %296
  %438 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %439 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %438, i32 0, i32 3
  %440 = load i32 (i8*, i32)*, i32 (i8*, i32)** %439, align 8
  %441 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %442 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %441, i32 0, i32 2
  %443 = load i32, i32* %442, align 8
  %444 = call i32 %440(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i32 %443)
  br label %281

445:                                              ; preds = %281
  br label %446

446:                                              ; preds = %445, %279
  %447 = load i32*, i32** %15, align 8
  %448 = call i32 @sqlite3_finalize(i32* %447)
  %449 = call i32 @freeText(%struct.TYPE_9__* %17)
  %450 = call i32 @freeText(%struct.TYPE_9__* %16)
  br label %451

451:                                              ; preds = %446, %137
  store i32 0, i32* %5, align 4
  br label %452

452:                                              ; preds = %451, %147, %90, %70, %32
  %453 = load i32, i32* %5, align 4
  ret i32 %453
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @sqlite3_strglob(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @output_formatted(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i8** @tableColumnList(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @initText(%struct.TYPE_9__*) #1

declare dso_local i32 @appendText(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @quoteChar(i8*) #1

declare dso_local i32 @freeColumnList(i8**) #1

declare dso_local i32 @sqlite3_prepare_v2(i32, i8*, i32, i32**, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_type(i32*, i32) #1

declare dso_local double @sqlite3_column_int64(i32*, i32) #1

declare dso_local double @sqlite3_column_double(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, double*, i32) #1

declare dso_local i32 @output_quoted_escaped_string(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i64 @sqlite3_column_blob(i32*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @freeText(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
