; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_lookup.c_LsapLookupNames.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_lookup.c_LsapLookupNames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i32, i32, %struct.TYPE_36__*, %struct.TYPE_36__*, i64, i32*, i32, i64 }
%struct.TYPE_37__ = type { i32, %struct.TYPE_36__* }

@STATUS_SUCCESS = common dso_local global i64 0, align 8
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i64 0, align 8
@SidTypeUnknown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"LsapSplitNames failed! (Status %lx)\0A\00", align 1
@STATUS_NONE_MAPPED = common dso_local global i64 0, align 8
@STATUS_SOME_NOT_MAPPED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"LsapLookupIsolatedNames failed! (Status %lx)\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"LsapLookupIsolatedBuiltinNames failed! (Status %lx)\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"LsapLookupIsolatedAccountNames failed! (Status %lx)\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"LsapLookupFullyQualifiedWellKnownNames failed! (Status %lx)\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"LsapLookupBuiltinNames failed! (Status %lx)\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"LsapLookupAccountNames failed! (Status %lx)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @LsapLookupNames(i32 %0, %struct.TYPE_36__* %1, %struct.TYPE_36__** %2, %struct.TYPE_37__* %3, i32 %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_36__*, align 8
  %11 = alloca %struct.TYPE_36__**, align 8
  %12 = alloca %struct.TYPE_37__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_36__*, align 8
  %18 = alloca %struct.TYPE_36__*, align 8
  %19 = alloca %struct.TYPE_36__*, align 8
  %20 = alloca %struct.TYPE_36__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store %struct.TYPE_36__* %1, %struct.TYPE_36__** %10, align 8
  store %struct.TYPE_36__** %2, %struct.TYPE_36__*** %11, align 8
  store %struct.TYPE_37__* %3, %struct.TYPE_37__** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %17, align 8
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %18, align 8
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %19, align 8
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %20, align 8
  store i32 0, i32* %23, align 4
  %25 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %25, i64* %24, align 8
  %26 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %28, i32 0, i32 1
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %29, align 8
  %30 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %11, align 8
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %21, align 4
  %35 = load i32, i32* %21, align 4
  %36 = call i8* @MIDL_user_allocate(i32 %35)
  %37 = bitcast i8* %36 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %37, %struct.TYPE_36__** %18, align 8
  %38 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %39 = icmp eq %struct.TYPE_36__* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %8
  %41 = load i64, i64* @STATUS_INSUFFICIENT_RESOURCES, align 8
  store i64 %41, i64* %24, align 8
  br label %266

42:                                               ; preds = %8
  %43 = call i8* @MIDL_user_allocate(i32 4)
  %44 = bitcast i8* %43 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %44, %struct.TYPE_36__** %17, align 8
  %45 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %46 = icmp eq %struct.TYPE_36__* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i64, i64* @STATUS_INSUFFICIENT_RESOURCES, align 8
  store i64 %48, i64* %24, align 8
  br label %266

49:                                               ; preds = %42
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = call i8* @MIDL_user_allocate(i32 %53)
  %55 = bitcast i8* %54 to %struct.TYPE_36__*
  %56 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %56, i32 0, i32 2
  store %struct.TYPE_36__* %55, %struct.TYPE_36__** %57, align 8
  %58 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_36__*, %struct.TYPE_36__** %59, align 8
  %61 = icmp eq %struct.TYPE_36__* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %49
  %63 = load i64, i64* @STATUS_INSUFFICIENT_RESOURCES, align 8
  store i64 %63, i64* %24, align 8
  br label %266

64:                                               ; preds = %49
  %65 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %65, i32 0, i32 7
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  store i32 0, i32* %22, align 4
  br label %70

70:                                               ; preds = %96, %64
  %71 = load i32, i32* %22, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %99

74:                                               ; preds = %70
  %75 = load i32, i32* @SidTypeUnknown, align 4
  %76 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %77 = load i32, i32* %22, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %79, i32 0, i32 6
  store i32 %75, i32* %80, align 8
  %81 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %82 = load i32, i32* %22, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %84, i32 0, i32 5
  store i32* null, i32** %85, align 8
  %86 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %87 = load i32, i32* %22, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %89, i32 0, i32 1
  store i32 -1, i32* %90, align 4
  %91 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %92 = load i32, i32* %22, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %94, i32 0, i32 4
  store i64 0, i64* %95, align 8
  br label %96

96:                                               ; preds = %74
  %97 = load i32, i32* %22, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %22, align 4
  br label %70

99:                                               ; preds = %70
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %102 = call i64 @LsapSplitNames(i32 %100, %struct.TYPE_36__* %101, %struct.TYPE_36__** %19, %struct.TYPE_36__** %20)
  store i64 %102, i64* %24, align 8
  %103 = load i64, i64* %24, align 8
  %104 = call i32 @NT_SUCCESS(i64 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %99
  %107 = load i64, i64* %24, align 8
  %108 = call i32 @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %107)
  br label %266

109:                                              ; preds = %99
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %112 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %113 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %114 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %115 = call i64 @LsapLookupIsolatedNames(i32 %110, %struct.TYPE_36__* %111, %struct.TYPE_36__* %112, %struct.TYPE_36__* %113, %struct.TYPE_36__* %114, i32* %23)
  store i64 %115, i64* %24, align 8
  %116 = load i64, i64* %24, align 8
  %117 = call i32 @NT_SUCCESS(i64 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %130, label %119

119:                                              ; preds = %109
  %120 = load i64, i64* %24, align 8
  %121 = load i64, i64* @STATUS_NONE_MAPPED, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = load i64, i64* %24, align 8
  %125 = load i64, i64* @STATUS_SOME_NOT_MAPPED, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i64, i64* %24, align 8
  %129 = call i32 @TRACE(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %128)
  br label %266

130:                                              ; preds = %123, %119, %109
  %131 = load i32, i32* %23, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  br label %266

135:                                              ; preds = %130
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %138 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %139 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %140 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %141 = call i64 @LsapLookupIsolatedBuiltinNames(i32 %136, %struct.TYPE_36__* %137, %struct.TYPE_36__* %138, %struct.TYPE_36__* %139, %struct.TYPE_36__* %140, i32* %23)
  store i64 %141, i64* %24, align 8
  %142 = load i64, i64* %24, align 8
  %143 = call i32 @NT_SUCCESS(i64 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %156, label %145

145:                                              ; preds = %135
  %146 = load i64, i64* %24, align 8
  %147 = load i64, i64* @STATUS_NONE_MAPPED, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %145
  %150 = load i64, i64* %24, align 8
  %151 = load i64, i64* @STATUS_SOME_NOT_MAPPED, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load i64, i64* %24, align 8
  %155 = call i32 @TRACE(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %154)
  br label %266

156:                                              ; preds = %149, %145, %135
  %157 = load i32, i32* %23, align 4
  %158 = load i32, i32* %9, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  br label %266

161:                                              ; preds = %156
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %164 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %165 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %166 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %167 = call i64 @LsapLookupIsolatedAccountNames(i32 %162, %struct.TYPE_36__* %163, %struct.TYPE_36__* %164, %struct.TYPE_36__* %165, %struct.TYPE_36__* %166, i32* %23)
  store i64 %167, i64* %24, align 8
  %168 = load i64, i64* %24, align 8
  %169 = call i32 @NT_SUCCESS(i64 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %182, label %171

171:                                              ; preds = %161
  %172 = load i64, i64* %24, align 8
  %173 = load i64, i64* @STATUS_NONE_MAPPED, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %182

175:                                              ; preds = %171
  %176 = load i64, i64* %24, align 8
  %177 = load i64, i64* @STATUS_SOME_NOT_MAPPED, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load i64, i64* %24, align 8
  %181 = call i32 @TRACE(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i64 %180)
  br label %266

182:                                              ; preds = %175, %171, %161
  %183 = load i32, i32* %23, align 4
  %184 = load i32, i32* %9, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %182
  br label %266

187:                                              ; preds = %182
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %190 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %191 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %192 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %193 = call i64 @LsapLookupFullyQualifiedWellKnownNames(i32 %188, %struct.TYPE_36__* %189, %struct.TYPE_36__* %190, %struct.TYPE_36__* %191, %struct.TYPE_36__* %192, i32* %23)
  store i64 %193, i64* %24, align 8
  %194 = load i64, i64* %24, align 8
  %195 = call i32 @NT_SUCCESS(i64 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %208, label %197

197:                                              ; preds = %187
  %198 = load i64, i64* %24, align 8
  %199 = load i64, i64* @STATUS_NONE_MAPPED, align 8
  %200 = icmp ne i64 %198, %199
  br i1 %200, label %201, label %208

201:                                              ; preds = %197
  %202 = load i64, i64* %24, align 8
  %203 = load i64, i64* @STATUS_SOME_NOT_MAPPED, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = load i64, i64* %24, align 8
  %207 = call i32 @TRACE(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i64 %206)
  br label %266

208:                                              ; preds = %201, %197, %187
  %209 = load i32, i32* %23, align 4
  %210 = load i32, i32* %9, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %208
  br label %266

213:                                              ; preds = %208
  %214 = load i32, i32* %9, align 4
  %215 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %216 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %217 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %218 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %219 = call i64 @LsapLookupBuiltinNames(i32 %214, %struct.TYPE_36__* %215, %struct.TYPE_36__* %216, %struct.TYPE_36__* %217, %struct.TYPE_36__* %218, i32* %23)
  store i64 %219, i64* %24, align 8
  %220 = load i64, i64* %24, align 8
  %221 = call i32 @NT_SUCCESS(i64 %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %234, label %223

223:                                              ; preds = %213
  %224 = load i64, i64* %24, align 8
  %225 = load i64, i64* @STATUS_NONE_MAPPED, align 8
  %226 = icmp ne i64 %224, %225
  br i1 %226, label %227, label %234

227:                                              ; preds = %223
  %228 = load i64, i64* %24, align 8
  %229 = load i64, i64* @STATUS_SOME_NOT_MAPPED, align 8
  %230 = icmp ne i64 %228, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %227
  %232 = load i64, i64* %24, align 8
  %233 = call i32 @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i64 %232)
  br label %266

234:                                              ; preds = %227, %223, %213
  %235 = load i32, i32* %23, align 4
  %236 = load i32, i32* %9, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %234
  br label %266

239:                                              ; preds = %234
  %240 = load i32, i32* %9, align 4
  %241 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %242 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %243 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %244 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %245 = call i64 @LsapLookupAccountNames(i32 %240, %struct.TYPE_36__* %241, %struct.TYPE_36__* %242, %struct.TYPE_36__* %243, %struct.TYPE_36__* %244, i32* %23)
  store i64 %245, i64* %24, align 8
  %246 = load i64, i64* %24, align 8
  %247 = call i32 @NT_SUCCESS(i64 %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %260, label %249

249:                                              ; preds = %239
  %250 = load i64, i64* %24, align 8
  %251 = load i64, i64* @STATUS_NONE_MAPPED, align 8
  %252 = icmp ne i64 %250, %251
  br i1 %252, label %253, label %260

253:                                              ; preds = %249
  %254 = load i64, i64* %24, align 8
  %255 = load i64, i64* @STATUS_SOME_NOT_MAPPED, align 8
  %256 = icmp ne i64 %254, %255
  br i1 %256, label %257, label %260

257:                                              ; preds = %253
  %258 = load i64, i64* %24, align 8
  %259 = call i32 @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i64 %258)
  br label %266

260:                                              ; preds = %253, %249, %239
  %261 = load i32, i32* %23, align 4
  %262 = load i32, i32* %9, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %260
  br label %266

265:                                              ; preds = %260
  br label %266

266:                                              ; preds = %265, %264, %257, %238, %231, %212, %205, %186, %179, %160, %153, %134, %127, %106, %62, %47, %40
  %267 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %268 = icmp ne %struct.TYPE_36__* %267, null
  br i1 %268, label %269, label %297

269:                                              ; preds = %266
  store i32 0, i32* %22, align 4
  br label %270

270:                                              ; preds = %291, %269
  %271 = load i32, i32* %22, align 4
  %272 = load i32, i32* %9, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %274, label %294

274:                                              ; preds = %270
  %275 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %276 = load i32, i32* %22, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %278, i32 0, i32 3
  %280 = load %struct.TYPE_36__*, %struct.TYPE_36__** %279, align 8
  %281 = icmp ne %struct.TYPE_36__* %280, null
  br i1 %281, label %282, label %290

282:                                              ; preds = %274
  %283 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %284 = load i32, i32* %22, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %286, i32 0, i32 3
  %288 = load %struct.TYPE_36__*, %struct.TYPE_36__** %287, align 8
  %289 = call i32 @MIDL_user_free(%struct.TYPE_36__* %288)
  br label %290

290:                                              ; preds = %282, %274
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %22, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %22, align 4
  br label %270

294:                                              ; preds = %270
  %295 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %296 = call i32 @MIDL_user_free(%struct.TYPE_36__* %295)
  br label %297

297:                                              ; preds = %294, %266
  %298 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %299 = icmp ne %struct.TYPE_36__* %298, null
  br i1 %299, label %300, label %328

300:                                              ; preds = %297
  store i32 0, i32* %22, align 4
  br label %301

301:                                              ; preds = %322, %300
  %302 = load i32, i32* %22, align 4
  %303 = load i32, i32* %9, align 4
  %304 = icmp slt i32 %302, %303
  br i1 %304, label %305, label %325

305:                                              ; preds = %301
  %306 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %307 = load i32, i32* %22, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %309, i32 0, i32 3
  %311 = load %struct.TYPE_36__*, %struct.TYPE_36__** %310, align 8
  %312 = icmp ne %struct.TYPE_36__* %311, null
  br i1 %312, label %313, label %321

313:                                              ; preds = %305
  %314 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %315 = load i32, i32* %22, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %314, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %317, i32 0, i32 3
  %319 = load %struct.TYPE_36__*, %struct.TYPE_36__** %318, align 8
  %320 = call i32 @MIDL_user_free(%struct.TYPE_36__* %319)
  br label %321

321:                                              ; preds = %313, %305
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %22, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %22, align 4
  br label %301

325:                                              ; preds = %301
  %326 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %327 = call i32 @MIDL_user_free(%struct.TYPE_36__* %326)
  br label %328

328:                                              ; preds = %325, %297
  %329 = load i64, i64* %24, align 8
  %330 = call i32 @NT_SUCCESS(i64 %329)
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %355, label %332

332:                                              ; preds = %328
  %333 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %334 = icmp ne %struct.TYPE_36__* %333, null
  br i1 %334, label %335, label %348

335:                                              ; preds = %332
  %336 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %337 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %336, i32 0, i32 2
  %338 = load %struct.TYPE_36__*, %struct.TYPE_36__** %337, align 8
  %339 = icmp ne %struct.TYPE_36__* %338, null
  br i1 %339, label %340, label %345

340:                                              ; preds = %335
  %341 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %342 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %341, i32 0, i32 2
  %343 = load %struct.TYPE_36__*, %struct.TYPE_36__** %342, align 8
  %344 = call i32 @MIDL_user_free(%struct.TYPE_36__* %343)
  br label %345

345:                                              ; preds = %340, %335
  %346 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %347 = call i32 @MIDL_user_free(%struct.TYPE_36__* %346)
  br label %348

348:                                              ; preds = %345, %332
  %349 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %350 = icmp ne %struct.TYPE_36__* %349, null
  br i1 %350, label %351, label %354

351:                                              ; preds = %348
  %352 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %353 = call i32 @MIDL_user_free(%struct.TYPE_36__* %352)
  br label %354

354:                                              ; preds = %351, %348
  br label %378

355:                                              ; preds = %328
  %356 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %357 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %11, align 8
  store %struct.TYPE_36__* %356, %struct.TYPE_36__** %357, align 8
  %358 = load i32, i32* %9, align 4
  %359 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %360 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %359, i32 0, i32 0
  store i32 %358, i32* %360, align 8
  %361 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %362 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %363 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %362, i32 0, i32 1
  store %struct.TYPE_36__* %361, %struct.TYPE_36__** %363, align 8
  %364 = load i32, i32* %23, align 4
  %365 = load i32*, i32** %14, align 8
  store i32 %364, i32* %365, align 4
  %366 = load i32, i32* %23, align 4
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %370

368:                                              ; preds = %355
  %369 = load i64, i64* @STATUS_NONE_MAPPED, align 8
  store i64 %369, i64* %24, align 8
  br label %377

370:                                              ; preds = %355
  %371 = load i32, i32* %23, align 4
  %372 = load i32, i32* %9, align 4
  %373 = icmp slt i32 %371, %372
  br i1 %373, label %374, label %376

374:                                              ; preds = %370
  %375 = load i64, i64* @STATUS_SOME_NOT_MAPPED, align 8
  store i64 %375, i64* %24, align 8
  br label %376

376:                                              ; preds = %374, %370
  br label %377

377:                                              ; preds = %376, %368
  br label %378

378:                                              ; preds = %377, %354
  %379 = load i64, i64* %24, align 8
  ret i64 %379
}

declare dso_local i8* @MIDL_user_allocate(i32) #1

declare dso_local i64 @LsapSplitNames(i32, %struct.TYPE_36__*, %struct.TYPE_36__**, %struct.TYPE_36__**) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i64 @LsapLookupIsolatedNames(i32, %struct.TYPE_36__*, %struct.TYPE_36__*, %struct.TYPE_36__*, %struct.TYPE_36__*, i32*) #1

declare dso_local i64 @LsapLookupIsolatedBuiltinNames(i32, %struct.TYPE_36__*, %struct.TYPE_36__*, %struct.TYPE_36__*, %struct.TYPE_36__*, i32*) #1

declare dso_local i64 @LsapLookupIsolatedAccountNames(i32, %struct.TYPE_36__*, %struct.TYPE_36__*, %struct.TYPE_36__*, %struct.TYPE_36__*, i32*) #1

declare dso_local i64 @LsapLookupFullyQualifiedWellKnownNames(i32, %struct.TYPE_36__*, %struct.TYPE_36__*, %struct.TYPE_36__*, %struct.TYPE_36__*, i32*) #1

declare dso_local i64 @LsapLookupBuiltinNames(i32, %struct.TYPE_36__*, %struct.TYPE_36__*, %struct.TYPE_36__*, %struct.TYPE_36__*, i32*) #1

declare dso_local i64 @LsapLookupAccountNames(i32, %struct.TYPE_36__*, %struct.TYPE_36__*, %struct.TYPE_36__*, %struct.TYPE_36__*, i32*) #1

declare dso_local i32 @MIDL_user_free(%struct.TYPE_36__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
