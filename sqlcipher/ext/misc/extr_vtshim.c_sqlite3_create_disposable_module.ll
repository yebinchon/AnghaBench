; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vtshim.c_sqlite3_create_disposable_module.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vtshim.c_sqlite3_create_disposable_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_10__ = type { void (i8*)*, %struct.TYPE_12__, i64, i64, i32, i32*, %struct.TYPE_11__*, i8* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@vtshimCreate = common dso_local global i32 0, align 4
@vtshimConnect = common dso_local global i32 0, align 4
@vtshimBestIndex = common dso_local global i32 0, align 4
@vtshimDisconnect = common dso_local global i32 0, align 4
@vtshimDestroy = common dso_local global i32 0, align 4
@vtshimOpen = common dso_local global i32 0, align 4
@vtshimClose = common dso_local global i32 0, align 4
@vtshimFilter = common dso_local global i32 0, align 4
@vtshimNext = common dso_local global i32 0, align 4
@vtshimEof = common dso_local global i32 0, align 4
@vtshimColumn = common dso_local global i32 0, align 4
@vtshimRowid = common dso_local global i32 0, align 4
@vtshimUpdate = common dso_local global i32 0, align 4
@vtshimBegin = common dso_local global i32 0, align 4
@vtshimSync = common dso_local global i32 0, align 4
@vtshimCommit = common dso_local global i32 0, align 4
@vtshimRollback = common dso_local global i32 0, align 4
@vtshimFindFunction = common dso_local global i32 0, align 4
@vtshimRename = common dso_local global i32 0, align 4
@vtshimSavepoint = common dso_local global i32 0, align 4
@vtshimRelease = common dso_local global i32 0, align 4
@vtshimRollbackTo = common dso_local global i32 0, align 4
@vtshimAuxDestructor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sqlite3_create_disposable_module(i32* %0, i8* %1, %struct.TYPE_11__* %2, i8* %3, void (i8*)* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca void (i8*)*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %9, align 8
  store i8* %3, i8** %10, align 8
  store void (i8*)* %4, void (i8*)** %11, align 8
  %15 = call %struct.TYPE_10__* @sqlite3_malloc(i32 152)
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %12, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %17 = icmp eq %struct.TYPE_10__* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %5
  %19 = load void (i8*)*, void (i8*)** %11, align 8
  %20 = icmp ne void (i8*)* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load void (i8*)*, void (i8*)** %11, align 8
  %23 = load i8*, i8** %10, align 8
  call void %22(i8* %23)
  br label %24

24:                                               ; preds = %21, %18
  store i8* null, i8** %6, align 8
  br label %365

25:                                               ; preds = %5
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %27 = call i32 @vtshimCopyModule(%struct.TYPE_11__* %26, %struct.TYPE_11__** %13)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @SQLITE_OK, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %33 = call i32 @sqlite3_free(%struct.TYPE_10__* %32)
  store i8* null, i8** %6, align 8
  br label %365

34:                                               ; preds = %25
  %35 = load i8*, i8** %10, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 7
  store i8* %35, i8** %37, align 8
  %38 = load void (i8*)*, void (i8*)** %11, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store void (i8*)* %38, void (i8*)** %40, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 6
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %43, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 5
  store i32* %44, i32** %46, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sle i32 %57, 2
  br i1 %58, label %59, label %63

59:                                               ; preds = %34
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  br label %64

63:                                               ; preds = %34
  br label %64

64:                                               ; preds = %63, %59
  %65 = phi i32 [ %62, %59 ], [ 2, %63 ]
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 22
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i32, i32* @vtshimCreate, align 4
  br label %76

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i32 [ %74, %73 ], [ 0, %75 ]
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 22
  store i32 %77, i32* %80, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 21
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, i32* @vtshimConnect, align 4
  br label %88

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %87, %85
  %89 = phi i32 [ %86, %85 ], [ 0, %87 ]
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 21
  store i32 %89, i32* %92, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 20
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = load i32, i32* @vtshimBestIndex, align 4
  br label %100

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi i32 [ %98, %97 ], [ 0, %99 ]
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 20
  store i32 %101, i32* %104, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 19
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %100
  %110 = load i32, i32* @vtshimDisconnect, align 4
  br label %112

111:                                              ; preds = %100
  br label %112

112:                                              ; preds = %111, %109
  %113 = phi i32 [ %110, %109 ], [ 0, %111 ]
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 19
  store i32 %113, i32* %116, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 18
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %112
  %122 = load i32, i32* @vtshimDestroy, align 4
  br label %124

123:                                              ; preds = %112
  br label %124

124:                                              ; preds = %123, %121
  %125 = phi i32 [ %122, %121 ], [ 0, %123 ]
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 18
  store i32 %125, i32* %128, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 17
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %124
  %134 = load i32, i32* @vtshimOpen, align 4
  br label %136

135:                                              ; preds = %124
  br label %136

136:                                              ; preds = %135, %133
  %137 = phi i32 [ %134, %133 ], [ 0, %135 ]
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 17
  store i32 %137, i32* %140, align 4
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 16
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %136
  %146 = load i32, i32* @vtshimClose, align 4
  br label %148

147:                                              ; preds = %136
  br label %148

148:                                              ; preds = %147, %145
  %149 = phi i32 [ %146, %145 ], [ 0, %147 ]
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 16
  store i32 %149, i32* %152, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 15
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %148
  %158 = load i32, i32* @vtshimFilter, align 4
  br label %160

159:                                              ; preds = %148
  br label %160

160:                                              ; preds = %159, %157
  %161 = phi i32 [ %158, %157 ], [ 0, %159 ]
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 15
  store i32 %161, i32* %164, align 4
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 14
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %160
  %170 = load i32, i32* @vtshimNext, align 4
  br label %172

171:                                              ; preds = %160
  br label %172

172:                                              ; preds = %171, %169
  %173 = phi i32 [ %170, %169 ], [ 0, %171 ]
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 14
  store i32 %173, i32* %176, align 8
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 13
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %172
  %182 = load i32, i32* @vtshimEof, align 4
  br label %184

183:                                              ; preds = %172
  br label %184

184:                                              ; preds = %183, %181
  %185 = phi i32 [ %182, %181 ], [ 0, %183 ]
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 13
  store i32 %185, i32* %188, align 4
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 12
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %184
  %194 = load i32, i32* @vtshimColumn, align 4
  br label %196

195:                                              ; preds = %184
  br label %196

196:                                              ; preds = %195, %193
  %197 = phi i32 [ %194, %193 ], [ 0, %195 ]
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 12
  store i32 %197, i32* %200, align 8
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 11
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %196
  %206 = load i32, i32* @vtshimRowid, align 4
  br label %208

207:                                              ; preds = %196
  br label %208

208:                                              ; preds = %207, %205
  %209 = phi i32 [ %206, %205 ], [ 0, %207 ]
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 11
  store i32 %209, i32* %212, align 4
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 10
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %208
  %218 = load i32, i32* @vtshimUpdate, align 4
  br label %220

219:                                              ; preds = %208
  br label %220

220:                                              ; preds = %219, %217
  %221 = phi i32 [ %218, %217 ], [ 0, %219 ]
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 10
  store i32 %221, i32* %224, align 8
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 9
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %220
  %230 = load i32, i32* @vtshimBegin, align 4
  br label %232

231:                                              ; preds = %220
  br label %232

232:                                              ; preds = %231, %229
  %233 = phi i32 [ %230, %229 ], [ 0, %231 ]
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 9
  store i32 %233, i32* %236, align 4
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 8
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %232
  %242 = load i32, i32* @vtshimSync, align 4
  br label %244

243:                                              ; preds = %232
  br label %244

244:                                              ; preds = %243, %241
  %245 = phi i32 [ %242, %241 ], [ 0, %243 ]
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 8
  store i32 %245, i32* %248, align 8
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 7
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %244
  %254 = load i32, i32* @vtshimCommit, align 4
  br label %256

255:                                              ; preds = %244
  br label %256

256:                                              ; preds = %255, %253
  %257 = phi i32 [ %254, %253 ], [ 0, %255 ]
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 7
  store i32 %257, i32* %260, align 4
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 6
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %256
  %266 = load i32, i32* @vtshimRollback, align 4
  br label %268

267:                                              ; preds = %256
  br label %268

268:                                              ; preds = %267, %265
  %269 = phi i32 [ %266, %265 ], [ 0, %267 ]
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 6
  store i32 %269, i32* %272, align 8
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 5
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %268
  %278 = load i32, i32* @vtshimFindFunction, align 4
  br label %280

279:                                              ; preds = %268
  br label %280

280:                                              ; preds = %279, %277
  %281 = phi i32 [ %278, %277 ], [ 0, %279 ]
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 5
  store i32 %281, i32* %284, align 4
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 4
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %280
  %290 = load i32, i32* @vtshimRename, align 4
  br label %292

291:                                              ; preds = %280
  br label %292

292:                                              ; preds = %291, %289
  %293 = phi i32 [ %290, %289 ], [ 0, %291 ]
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 4
  store i32 %293, i32* %296, align 8
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = icmp sge i32 %299, 2
  br i1 %300, label %301, label %338

301:                                              ; preds = %292
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 3
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %301
  %307 = load i32, i32* @vtshimSavepoint, align 4
  br label %309

308:                                              ; preds = %301
  br label %309

309:                                              ; preds = %308, %306
  %310 = phi i32 [ %307, %306 ], [ 0, %308 ]
  %311 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 3
  store i32 %310, i32* %313, align 4
  %314 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 2
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %309
  %319 = load i32, i32* @vtshimRelease, align 4
  br label %321

320:                                              ; preds = %309
  br label %321

321:                                              ; preds = %320, %318
  %322 = phi i32 [ %319, %318 ], [ 0, %320 ]
  %323 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 2
  store i32 %322, i32* %325, align 8
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 1
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %321
  %331 = load i32, i32* @vtshimRollbackTo, align 4
  br label %333

332:                                              ; preds = %321
  br label %333

333:                                              ; preds = %332, %330
  %334 = phi i32 [ %331, %330 ], [ 0, %332 ]
  %335 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %336, i32 0, i32 1
  store i32 %334, i32* %337, align 4
  br label %348

338:                                              ; preds = %292
  %339 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %340, i32 0, i32 3
  store i32 0, i32* %341, align 4
  %342 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i32 0, i32 2
  store i32 0, i32* %344, align 8
  %345 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 1
  store i32 0, i32* %347, align 4
  br label %348

348:                                              ; preds = %338, %333
  %349 = load i32*, i32** %7, align 8
  %350 = load i8*, i8** %8, align 8
  %351 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %352 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %351, i32 0, i32 1
  %353 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %354 = load i32, i32* @vtshimAuxDestructor, align 4
  %355 = call i32 @sqlite3_create_module_v2(i32* %349, i8* %350, %struct.TYPE_12__* %352, %struct.TYPE_10__* %353, i32 %354)
  store i32 %355, i32* %14, align 4
  %356 = load i32, i32* %14, align 4
  %357 = load i32, i32* @SQLITE_OK, align 4
  %358 = icmp eq i32 %356, %357
  br i1 %358, label %359, label %362

359:                                              ; preds = %348
  %360 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %361 = bitcast %struct.TYPE_10__* %360 to i8*
  br label %363

362:                                              ; preds = %348
  br label %363

363:                                              ; preds = %362, %359
  %364 = phi i8* [ %361, %359 ], [ null, %362 ]
  store i8* %364, i8** %6, align 8
  br label %365

365:                                              ; preds = %363, %31, %24
  %366 = load i8*, i8** %6, align 8
  ret i8* %366
}

declare dso_local %struct.TYPE_10__* @sqlite3_malloc(i32) #1

declare dso_local i32 @vtshimCopyModule(%struct.TYPE_11__*, %struct.TYPE_11__**) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_10__*) #1

declare dso_local i32 @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @sqlite3_create_module_v2(i32*, i8*, %struct.TYPE_12__*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
