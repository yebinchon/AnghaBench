; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_lookup.c_LsapLookupIsolatedNames.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_lookup.c_LsapLookupIsolatedNames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i64, i32, i64, i32* }
%struct.TYPE_9__ = type { i64, i32*, i32, i32 }

@.str = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@SidTypeUnknown = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Mapping name: %wZ\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@SidTypeDomain = common dso_local global i64 0, align 8
@BuiltinDomainName = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@BuiltinDomainSid = common dso_local global i32* null, align 8
@AccountDomainName = common dso_local global i32 0, align 4
@AccountDomainSid = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_10__*, %struct.TYPE_10__*, i32, %struct.TYPE_11__*, i32*)* @LsapLookupIsolatedNames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LsapLookupIsolatedNames(i64 %0, %struct.TYPE_10__* %1, %struct.TYPE_10__* %2, i32 %3, %struct.TYPE_11__* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = call i32 @RTL_CONSTANT_STRING(i8* bitcast ([1 x i32]* @.str to i8*))
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %21, i32* %19, align 4
  store i64 0, i64* %18, align 8
  br label %22

22:                                               ; preds = %284, %6
  %23 = load i64, i64* %18, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %287

26:                                               ; preds = %22
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %28 = load i64, i64* %18, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SidTypeUnknown, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %284

35:                                               ; preds = %26
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %37 = load i64, i64* %18, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %284

43:                                               ; preds = %35
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %45 = load i64, i64* %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i64 %45
  %47 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %49 = load i64, i64* %18, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i64 %49
  %51 = bitcast %struct.TYPE_10__* %50 to i32*
  %52 = call %struct.TYPE_9__* @LsapLookupIsolatedWellKnownName(i32* %51)
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %14, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %54 = icmp ne %struct.TYPE_9__* %53, null
  br i1 %54, label %55, label %173

55:                                               ; preds = %43
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %60 = load i64, i64* %18, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  store i64 %58, i64* %62, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i8* @LsapCopySid(i32* %65)
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %69 = load i64, i64* %18, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 3
  store i32* %67, i32** %71, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %73 = load i64, i64* %18, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %55
  %79 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %79, i32* %19, align 4
  br label %288

80:                                               ; preds = %55
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %82 = load i64, i64* %18, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  store i32 -1, i32* %84, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %86 = load i64, i64* %18, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @SidTypeDomain, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %113

94:                                               ; preds = %80
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @LsapAddDomainToDomainsList(i32 %95, i32* %97, i32* %100, i64* %17)
  store i32 %101, i32* %19, align 4
  %102 = load i32, i32* %19, align 4
  %103 = call i32 @NT_SUCCESS(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %94
  br label %288

106:                                              ; preds = %94
  %107 = load i64, i64* %17, align 8
  %108 = trunc i64 %107 to i32
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %110 = load i64, i64* %18, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  store i32 %108, i32* %112, align 8
  br label %169

113:                                              ; preds = %80
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 3
  %116 = call %struct.TYPE_9__* @LsapLookupIsolatedWellKnownName(i32* %115)
  store %struct.TYPE_9__* %116, %struct.TYPE_9__** %15, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %118 = icmp ne %struct.TYPE_9__* %117, null
  br i1 %118, label %119, label %138

119:                                              ; preds = %113
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @LsapAddDomainToDomainsList(i32 %120, i32* %122, i32* %125, i64* %17)
  store i32 %126, i32* %19, align 4
  %127 = load i32, i32* %19, align 4
  %128 = call i32 @NT_SUCCESS(i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %119
  br label %288

131:                                              ; preds = %119
  %132 = load i64, i64* %17, align 8
  %133 = trunc i64 %132 to i32
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %135 = load i64, i64* %18, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  store i32 %133, i32* %137, align 8
  br label %168

138:                                              ; preds = %113
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = call i32* @CreateDomainSidFromAccountSid(i32* %141)
  store i32* %142, i32** %16, align 8
  %143 = load i32*, i32** %16, align 8
  %144 = icmp eq i32* %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %138
  %146 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %146, i32* %19, align 4
  br label %288

147:                                              ; preds = %138
  %148 = load i32, i32* %10, align 4
  %149 = load i32*, i32** %16, align 8
  %150 = call i32 @LsapAddDomainToDomainsList(i32 %148, i32* %13, i32* %149, i64* %17)
  store i32 %150, i32* %19, align 4
  %151 = load i32*, i32** %16, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = load i32*, i32** %16, align 8
  %155 = call i32 @MIDL_user_free(i32* %154)
  store i32* null, i32** %16, align 8
  br label %156

156:                                              ; preds = %153, %147
  %157 = load i32, i32* %19, align 4
  %158 = call i32 @NT_SUCCESS(i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %156
  br label %288

161:                                              ; preds = %156
  %162 = load i64, i64* %17, align 8
  %163 = trunc i64 %162 to i32
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %165 = load i64, i64* %18, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 1
  store i32 %163, i32* %167, align 8
  br label %168

168:                                              ; preds = %161, %131
  br label %169

169:                                              ; preds = %168, %106
  %170 = load i32*, i32** %12, align 8
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 4
  br label %284

173:                                              ; preds = %43
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %175 = load i64, i64* %18, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i64 %175
  %177 = bitcast %struct.TYPE_10__* %176 to i32*
  %178 = load i32, i32* @TRUE, align 4
  %179 = call i64 @RtlEqualUnicodeString(i32* %177, i32* @BuiltinDomainName, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %228

181:                                              ; preds = %173
  %182 = load i64, i64* @SidTypeDomain, align 8
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %184 = load i64, i64* %18, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  store i64 %182, i64* %186, align 8
  %187 = load i32*, i32** @BuiltinDomainSid, align 8
  %188 = call i8* @LsapCopySid(i32* %187)
  %189 = bitcast i8* %188 to i32*
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %191 = load i64, i64* %18, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 3
  store i32* %189, i32** %193, align 8
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %195 = load i64, i64* %18, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 3
  %198 = load i32*, i32** %197, align 8
  %199 = icmp eq i32* %198, null
  br i1 %199, label %200, label %202

200:                                              ; preds = %181
  %201 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %201, i32* %19, align 4
  br label %288

202:                                              ; preds = %181
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %204 = load i64, i64* %18, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 1
  store i32 -1, i32* %206, align 8
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %208 = load i64, i64* %18, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 2
  store i64 0, i64* %210, align 8
  %211 = load i32, i32* %10, align 4
  %212 = load i32*, i32** @BuiltinDomainSid, align 8
  %213 = call i32 @LsapAddDomainToDomainsList(i32 %211, i32* @BuiltinDomainName, i32* %212, i64* %17)
  store i32 %213, i32* %19, align 4
  %214 = load i32, i32* %19, align 4
  %215 = call i32 @NT_SUCCESS(i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %202
  br label %288

218:                                              ; preds = %202
  %219 = load i64, i64* %17, align 8
  %220 = trunc i64 %219 to i32
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %222 = load i64, i64* %18, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 1
  store i32 %220, i32* %224, align 8
  %225 = load i32*, i32** %12, align 8
  %226 = load i32, i32* %225, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %225, align 4
  br label %284

228:                                              ; preds = %173
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %230 = load i64, i64* %18, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i64 %230
  %232 = bitcast %struct.TYPE_10__* %231 to i32*
  %233 = load i32, i32* @TRUE, align 4
  %234 = call i64 @RtlEqualUnicodeString(i32* %232, i32* @AccountDomainName, i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %283

236:                                              ; preds = %228
  %237 = load i64, i64* @SidTypeDomain, align 8
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %239 = load i64, i64* %18, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 0
  store i64 %237, i64* %241, align 8
  %242 = load i32*, i32** @AccountDomainSid, align 8
  %243 = call i8* @LsapCopySid(i32* %242)
  %244 = bitcast i8* %243 to i32*
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %246 = load i64, i64* %18, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 3
  store i32* %244, i32** %248, align 8
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %250 = load i64, i64* %18, align 8
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 3
  %253 = load i32*, i32** %252, align 8
  %254 = icmp eq i32* %253, null
  br i1 %254, label %255, label %257

255:                                              ; preds = %236
  %256 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %256, i32* %19, align 4
  br label %288

257:                                              ; preds = %236
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %259 = load i64, i64* %18, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 1
  store i32 -1, i32* %261, align 8
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %263 = load i64, i64* %18, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 2
  store i64 0, i64* %265, align 8
  %266 = load i32, i32* %10, align 4
  %267 = load i32*, i32** @AccountDomainSid, align 8
  %268 = call i32 @LsapAddDomainToDomainsList(i32 %266, i32* @AccountDomainName, i32* %267, i64* %17)
  store i32 %268, i32* %19, align 4
  %269 = load i32, i32* %19, align 4
  %270 = call i32 @NT_SUCCESS(i32 %269)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %257
  br label %288

273:                                              ; preds = %257
  %274 = load i64, i64* %17, align 8
  %275 = trunc i64 %274 to i32
  %276 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %277 = load i64, i64* %18, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 1
  store i32 %275, i32* %279, align 8
  %280 = load i32*, i32** %12, align 8
  %281 = load i32, i32* %280, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %280, align 4
  br label %284

283:                                              ; preds = %228
  br label %284

284:                                              ; preds = %283, %273, %218, %169, %42, %34
  %285 = load i64, i64* %18, align 8
  %286 = add i64 %285, 1
  store i64 %286, i64* %18, align 8
  br label %22

287:                                              ; preds = %22
  br label %288

288:                                              ; preds = %287, %272, %255, %217, %200, %160, %145, %130, %105, %78
  %289 = load i32, i32* %19, align 4
  ret i32 %289
}

declare dso_local i32 @RTL_CONSTANT_STRING(i8*) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @LsapLookupIsolatedWellKnownName(i32*) #1

declare dso_local i8* @LsapCopySid(i32*) #1

declare dso_local i32 @LsapAddDomainToDomainsList(i32, i32*, i32*, i64*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32* @CreateDomainSidFromAccountSid(i32*) #1

declare dso_local i32 @MIDL_user_free(i32*) #1

declare dso_local i64 @RtlEqualUnicodeString(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
