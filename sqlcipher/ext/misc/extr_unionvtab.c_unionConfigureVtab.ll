; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_unionvtab.c_unionConfigureVtab.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_unionvtab.c_unionConfigureVtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8*, i8*, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"swarmvtab: no such SQL parameter: %s\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"maxopen\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"swarmvtab: illegal maxopen value\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"missing\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"swarmvtab: duplicate \22missing\22 option\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"SELECT \22%w\22(?%s)\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c",?\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"openclose\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"swarmvtab: duplicate \22openclose\22 option\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"SELECT \22%w\22(?,?%s)\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"swarmvtab: unrecognized option: %s\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"SELECT \22%w\22(?)\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"swarmvtab: parse error: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32*, i32, i8**, i8**)* @unionConfigureVtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unionConfigureVtab(i32* %0, %struct.TYPE_3__* %1, i32* %2, i32 %3, i8** %4, i8** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  store i8** %5, i8*** %12, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* @SQLITE_OK, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %6
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @sqlite3_column_count(i32* %26)
  %28 = icmp sgt i32 %27, 4
  %29 = zext i1 %28 to i32
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %25, %6
  store i32 0, i32* %14, align 4
  br label %33

33:                                               ; preds = %274, %32
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @SQLITE_OK, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %38, %39
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i1 [ false, %33 ], [ %40, %37 ]
  br i1 %42, label %43, label %277

43:                                               ; preds = %41
  %44 = load i8**, i8*** %11, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @unionStrdup(i32* %13, i8* %48)
  store i8* %49, i8** %15, align 8
  %50 = load i8*, i8** %15, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %273

52:                                               ; preds = %43
  store i32 0, i32* %16, align 4
  %53 = load i8*, i8** %15, align 8
  %54 = call i32 @unionDequote(i8* %53)
  %55 = load i8*, i8** %15, align 8
  store i8* %55, i8** %17, align 8
  br label %56

56:                                               ; preds = %61, %52
  %57 = load i8*, i8** %17, align 8
  %58 = load i8, i8* %57, align 1
  %59 = call i64 @union_isspace(i8 signext %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i8*, i8** %17, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %17, align 8
  br label %56

64:                                               ; preds = %56
  %65 = load i8*, i8** %17, align 8
  store i8* %65, i8** %18, align 8
  %66 = load i8*, i8** %18, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 58
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i8*, i8** %18, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %18, align 8
  br label %73

73:                                               ; preds = %70, %64
  br label %74

74:                                               ; preds = %79, %73
  %75 = load i8*, i8** %18, align 8
  %76 = load i8, i8* %75, align 1
  %77 = call i64 @union_isidchar(i8 signext %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i8*, i8** %18, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %18, align 8
  br label %74

82:                                               ; preds = %74
  %83 = load i8*, i8** %18, align 8
  %84 = load i8*, i8** %17, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %16, align 4
  br label %89

89:                                               ; preds = %94, %82
  %90 = load i8*, i8** %18, align 8
  %91 = load i8, i8* %90, align 1
  %92 = call i64 @union_isspace(i8 signext %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i8*, i8** %18, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %18, align 8
  br label %89

97:                                               ; preds = %89
  %98 = load i8*, i8** %18, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 61
  br i1 %101, label %102, label %245

102:                                              ; preds = %97
  %103 = load i8*, i8** %17, align 8
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  store i8 0, i8* %106, align 1
  %107 = load i8*, i8** %18, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %18, align 8
  br label %109

109:                                              ; preds = %114, %102
  %110 = load i8*, i8** %18, align 8
  %111 = load i8, i8* %110, align 1
  %112 = call i64 @union_isspace(i8 signext %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i8*, i8** %18, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %18, align 8
  br label %109

117:                                              ; preds = %109
  %118 = load i8*, i8** %18, align 8
  %119 = call i8* @unionStrdup(i32* %13, i8* %118)
  store i8* %119, i8** %18, align 8
  %120 = load i8*, i8** %18, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %244

122:                                              ; preds = %117
  %123 = load i8*, i8** %18, align 8
  %124 = call i32 @unionDequote(i8* %123)
  %125 = load i8*, i8** %17, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 0
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 58
  br i1 %129, label %130, label %148

130:                                              ; preds = %122
  %131 = load i32*, i32** %9, align 8
  %132 = load i8*, i8** %17, align 8
  %133 = call i32 @sqlite3_bind_parameter_index(i32* %131, i8* %132)
  store i32 %133, i32* %19, align 4
  %134 = load i32, i32* %19, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %130
  %137 = load i8*, i8** %17, align 8
  %138 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %137)
  %139 = load i8**, i8*** %12, align 8
  store i8* %138, i8** %139, align 8
  %140 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %140, i32* %13, align 4
  br label %147

141:                                              ; preds = %130
  %142 = load i32*, i32** %9, align 8
  %143 = load i32, i32* %19, align 4
  %144 = load i8*, i8** %18, align 8
  %145 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %146 = call i32 @sqlite3_bind_text(i32* %142, i32 %143, i8* %144, i32 -1, i32 %145)
  store i32 %146, i32* %13, align 4
  br label %147

147:                                              ; preds = %141, %136
  br label %241

148:                                              ; preds = %122
  %149 = load i32, i32* %16, align 4
  %150 = icmp eq i32 %149, 7
  br i1 %150, label %151, label %169

151:                                              ; preds = %148
  %152 = load i8*, i8** %17, align 8
  %153 = call i64 @sqlite3_strnicmp(i8* %152, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %154 = icmp eq i64 0, %153
  br i1 %154, label %155, label %169

155:                                              ; preds = %151
  %156 = load i8*, i8** %18, align 8
  %157 = call i32 @atoi(i8* %156)
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 4
  store i32 %157, i32* %159, align 8
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = icmp sle i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %155
  %165 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %166 = load i8**, i8*** %12, align 8
  store i8* %165, i8** %166, align 8
  %167 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %167, i32* %13, align 4
  br label %168

168:                                              ; preds = %164, %155
  br label %240

169:                                              ; preds = %151, %148
  %170 = load i32, i32* %16, align 4
  %171 = icmp eq i32 %170, 7
  br i1 %171, label %172, label %201

172:                                              ; preds = %169
  %173 = load i8*, i8** %17, align 8
  %174 = call i64 @sqlite3_strnicmp(i8* %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %175 = icmp eq i64 0, %174
  br i1 %175, label %176, label %201

176:                                              ; preds = %172
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 2
  %179 = load i8*, i8** %178, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %183 = load i8**, i8*** %12, align 8
  store i8* %182, i8** %183, align 8
  %184 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %184, i32* %13, align 4
  br label %200

185:                                              ; preds = %176
  %186 = load i8**, i8*** %12, align 8
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i8*, i8** %18, align 8
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %197 = call i8* (i32*, i8**, i32, i8*, i8*, ...) @unionPreparePrintf(i32* %13, i8** %186, i32 %189, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %190, i8* %196)
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 2
  store i8* %197, i8** %199, align 8
  br label %200

200:                                              ; preds = %185, %181
  br label %239

201:                                              ; preds = %172, %169
  %202 = load i32, i32* %16, align 4
  %203 = icmp eq i32 %202, 9
  br i1 %203, label %204, label %233

204:                                              ; preds = %201
  %205 = load i8*, i8** %17, align 8
  %206 = call i64 @sqlite3_strnicmp(i8* %205, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 9)
  %207 = icmp eq i64 0, %206
  br i1 %207, label %208, label %233

208:                                              ; preds = %204
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 3
  %211 = load i8*, i8** %210, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %213, label %217

213:                                              ; preds = %208
  %214 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  %215 = load i8**, i8*** %12, align 8
  store i8* %214, i8** %215, align 8
  %216 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %216, i32* %13, align 4
  br label %232

217:                                              ; preds = %208
  %218 = load i8**, i8*** %12, align 8
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i8*, i8** %18, align 8
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 0
  %227 = zext i1 %226 to i64
  %228 = select i1 %226, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %229 = call i8* (i32*, i8**, i32, i8*, i8*, ...) @unionPreparePrintf(i32* %13, i8** %218, i32 %221, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %222, i8* %228)
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 3
  store i8* %229, i8** %231, align 8
  br label %232

232:                                              ; preds = %217, %213
  br label %238

233:                                              ; preds = %204, %201
  %234 = load i8*, i8** %17, align 8
  %235 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i8* %234)
  %236 = load i8**, i8*** %12, align 8
  store i8* %235, i8** %236, align 8
  %237 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %237, i32* %13, align 4
  br label %238

238:                                              ; preds = %233, %232
  br label %239

239:                                              ; preds = %238, %200
  br label %240

240:                                              ; preds = %239, %168
  br label %241

241:                                              ; preds = %240, %147
  %242 = load i8*, i8** %18, align 8
  %243 = call i32 @sqlite3_free(i8* %242)
  br label %244

244:                                              ; preds = %241, %117
  br label %270

245:                                              ; preds = %97
  %246 = load i32, i32* %14, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %260

248:                                              ; preds = %245
  %249 = load i32, i32* %10, align 4
  %250 = icmp eq i32 %249, 1
  br i1 %250, label %251, label %260

251:                                              ; preds = %248
  %252 = load i8**, i8*** %12, align 8
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load i8*, i8** %15, align 8
  %257 = call i8* (i32*, i8**, i32, i8*, i8*, ...) @unionPreparePrintf(i32* %13, i8** %252, i32 %255, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* %256)
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 2
  store i8* %257, i8** %259, align 8
  br label %269

260:                                              ; preds = %248, %245
  %261 = load i8**, i8*** %11, align 8
  %262 = load i32, i32* %14, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8*, i8** %261, i64 %263
  %265 = load i8*, i8** %264, align 8
  %266 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i8* %265)
  %267 = load i8**, i8*** %12, align 8
  store i8* %266, i8** %267, align 8
  %268 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %268, i32* %13, align 4
  br label %269

269:                                              ; preds = %260, %251
  br label %270

270:                                              ; preds = %269, %244
  %271 = load i8*, i8** %15, align 8
  %272 = call i32 @sqlite3_free(i8* %271)
  br label %273

273:                                              ; preds = %270, %43
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %14, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %14, align 4
  br label %33

277:                                              ; preds = %41
  %278 = load i32, i32* %13, align 4
  %279 = load i32*, i32** %7, align 8
  store i32 %278, i32* %279, align 4
  ret void
}

declare dso_local i32 @sqlite3_column_count(i32*) #1

declare dso_local i8* @unionStrdup(i32*, i8*) #1

declare dso_local i32 @unionDequote(i8*) #1

declare dso_local i64 @union_isspace(i8 signext) #1

declare dso_local i64 @union_isidchar(i8 signext) #1

declare dso_local i32 @sqlite3_bind_parameter_index(i32*, i8*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, ...) #1

declare dso_local i32 @sqlite3_bind_text(i32*, i32, i8*, i32, i32) #1

declare dso_local i64 @sqlite3_strnicmp(i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @unionPreparePrintf(i32*, i8**, i32, i8*, i8*, ...) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
