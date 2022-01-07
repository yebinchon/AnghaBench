; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_renameResolveTrigger.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_renameResolveTrigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, i64, i32*, i32, %struct.TYPE_27__*, %struct.TYPE_24__* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_26__*, i64, i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__*, i32*, i64, i64, i64, %struct.TYPE_26__* }
%struct.TYPE_25__ = type { i64, i64, i32*, i32*, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_28__*, i64, %struct.TYPE_23__, %struct.TYPE_22__*, %struct.TYPE_29__* }
%struct.TYPE_23__ = type { %struct.TYPE_25__* }
%struct.TYPE_22__ = type { i32*, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@NC_UUpsert = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_29__*, i8*)* @renameResolveTrigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @renameResolveTrigger(%struct.TYPE_29__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_28__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_28__, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 5
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  store %struct.TYPE_24__* %16, %struct.TYPE_24__** %5, align 8
  %17 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  store %struct.TYPE_27__* %19, %struct.TYPE_27__** %6, align 8
  %20 = load i32, i32* @SQLITE_OK, align 4
  store i32 %20, i32* %9, align 4
  %21 = call i32 @memset(%struct.TYPE_28__* %8, i32 0, i32 48)
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 5
  store %struct.TYPE_29__* %22, %struct.TYPE_29__** %23, align 8
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %33, align 8
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @sqlite3SchemaToIndex(%struct.TYPE_24__* %35, i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32* @sqlite3FindTable(%struct.TYPE_24__* %28, i32 %31, i32 %42)
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %44, i32 0, i32 2
  store i32* %43, i32** %45, align 8
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = call i64 @ALWAYS(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %2
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @sqlite3ViewGetColumnNames(%struct.TYPE_29__* %57, i32* %60)
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %56, %2
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @SQLITE_OK, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @sqlite3ResolveExprNames(%struct.TYPE_28__* %8, i64 %74)
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %71, %66, %62
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %78, align 8
  store %struct.TYPE_26__* %79, %struct.TYPE_26__** %7, align 8
  br label %80

80:                                               ; preds = %249, %76
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @SQLITE_OK, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %86 = icmp ne %struct.TYPE_26__* %85, null
  br label %87

87:                                               ; preds = %84, %80
  %88 = phi i1 [ false, %80 ], [ %86, %84 ]
  br i1 %88, label %89, label %253

89:                                               ; preds = %87
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %89
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @sqlite3SelectPrep(%struct.TYPE_29__* %95, i64 %98, %struct.TYPE_28__* %8)
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %94
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %104, %94
  br label %109

109:                                              ; preds = %108, %89
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @SQLITE_OK, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %248

113:                                              ; preds = %109
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %248

118:                                              ; preds = %113
  %119 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load i8*, i8** %4, align 8
  %124 = call i32* @sqlite3LocateTable(%struct.TYPE_29__* %119, i32 0, i64 %122, i8* %123)
  store i32* %124, i32** %10, align 8
  %125 = load i32*, i32** %10, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %118
  %128 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %128, i32* %9, align 4
  br label %247

129:                                              ; preds = %118
  %130 = load i32, i32* @SQLITE_OK, align 4
  %131 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %132 = load i32*, i32** %10, align 8
  %133 = call i32 @sqlite3ViewGetColumnNames(%struct.TYPE_29__* %131, i32* %132)
  store i32 %133, i32* %9, align 4
  %134 = icmp eq i32 %130, %133
  br i1 %134, label %135, label %246

135:                                              ; preds = %129
  %136 = call i32 @memset(%struct.TYPE_28__* %11, i32 0, i32 48)
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %11, i32 0, i32 0
  store i32 1, i32* %137, align 8
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %11, i32 0, i32 4
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i64 0
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 1
  store i64 %140, i64* %144, align 8
  %145 = load i32*, i32** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %11, i32 0, i32 4
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i64 0
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  store i32* %145, i32** %149, align 8
  %150 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 1
  store %struct.TYPE_28__* %11, %struct.TYPE_28__** %150, align 8
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %135
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @sqlite3ResolveExprNames(%struct.TYPE_28__* %8, i64 %158)
  store i32 %159, i32* %9, align 4
  br label %160

160:                                              ; preds = %155, %135
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* @SQLITE_OK, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %160
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @sqlite3ResolveExprListNames(%struct.TYPE_28__* %8, i32* %167)
  store i32 %168, i32* %9, align 4
  br label %169

169:                                              ; preds = %164, %160
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %171, align 8
  %173 = icmp ne %struct.TYPE_25__* %172, null
  br i1 %173, label %174, label %187

174:                                              ; preds = %169
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %185, label %179

179:                                              ; preds = %174
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = icmp ne i32* %182, null
  %184 = xor i1 %183, true
  br label %185

185:                                              ; preds = %179, %174
  %186 = phi i1 [ false, %174 ], [ %184, %179 ]
  br label %187

187:                                              ; preds = %185, %169
  %188 = phi i1 [ true, %169 ], [ %186, %185 ]
  %189 = zext i1 %188 to i32
  %190 = call i32 @assert(i32 %189)
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_25__*, %struct.TYPE_25__** %192, align 8
  %194 = icmp ne %struct.TYPE_25__* %193, null
  br i1 %194, label %195, label %244

195:                                              ; preds = %187
  %196 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %197, align 8
  store %struct.TYPE_25__* %198, %struct.TYPE_25__** %12, align 8
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* @SQLITE_OK, align 4
  %201 = icmp eq i32 %199, %200
  %202 = zext i1 %201 to i32
  %203 = call i32 @assert(i32 %202)
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %204, i32 0, i32 4
  store %struct.TYPE_28__* %11, %struct.TYPE_28__** %205, align 8
  %206 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 0
  store %struct.TYPE_25__* %206, %struct.TYPE_25__** %208, align 8
  %209 = load i64, i64* @NC_UUpsert, align 8
  %210 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 2
  store i64 %209, i64* %210, align 8
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %212 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %211, i32 0, i32 3
  %213 = load i32*, i32** %212, align 8
  %214 = call i32 @sqlite3ResolveExprListNames(%struct.TYPE_28__* %8, i32* %213)
  store i32 %214, i32* %9, align 4
  %215 = load i32, i32* %9, align 4
  %216 = load i32, i32* @SQLITE_OK, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %224

218:                                              ; preds = %195
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %220 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %219, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  store i32* %221, i32** %13, align 8
  %222 = load i32*, i32** %13, align 8
  %223 = call i32 @sqlite3ResolveExprListNames(%struct.TYPE_28__* %8, i32* %222)
  store i32 %223, i32* %9, align 4
  br label %224

224:                                              ; preds = %218, %195
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* @SQLITE_OK, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %233

228:                                              ; preds = %224
  %229 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %230 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = call i32 @sqlite3ResolveExprNames(%struct.TYPE_28__* %8, i64 %231)
  store i32 %232, i32* %9, align 4
  br label %233

233:                                              ; preds = %228, %224
  %234 = load i32, i32* %9, align 4
  %235 = load i32, i32* @SQLITE_OK, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %242

237:                                              ; preds = %233
  %238 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %239 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = call i32 @sqlite3ResolveExprNames(%struct.TYPE_28__* %8, i64 %240)
  store i32 %241, i32* %9, align 4
  br label %242

242:                                              ; preds = %237, %233
  %243 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 2
  store i64 0, i64* %243, align 8
  br label %244

244:                                              ; preds = %242, %187
  %245 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 1
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %245, align 8
  br label %246

246:                                              ; preds = %244, %129
  br label %247

247:                                              ; preds = %246, %127
  br label %248

248:                                              ; preds = %247, %113, %109
  br label %249

249:                                              ; preds = %248
  %250 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %250, i32 0, i32 5
  %252 = load %struct.TYPE_26__*, %struct.TYPE_26__** %251, align 8
  store %struct.TYPE_26__* %252, %struct.TYPE_26__** %7, align 8
  br label %80

253:                                              ; preds = %87
  %254 = load i32, i32* %9, align 4
  ret i32 %254
}

declare dso_local i32 @memset(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @sqlite3FindTable(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i64 @sqlite3SchemaToIndex(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @ALWAYS(i32*) #1

declare dso_local i32 @sqlite3ViewGetColumnNames(%struct.TYPE_29__*, i32*) #1

declare dso_local i32 @sqlite3ResolveExprNames(%struct.TYPE_28__*, i64) #1

declare dso_local i32 @sqlite3SelectPrep(%struct.TYPE_29__*, i64, %struct.TYPE_28__*) #1

declare dso_local i32* @sqlite3LocateTable(%struct.TYPE_29__*, i32, i64, i8*) #1

declare dso_local i32 @sqlite3ResolveExprListNames(%struct.TYPE_28__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
