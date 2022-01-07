; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_processMultibulkBuffer.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_processMultibulkBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64, i8*, i32, i32, i32* }

@PROTO_INLINE_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Protocol error: too big mbulk count string\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"too big mbulk count string\00", align 1
@C_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Protocol error: invalid multibulk length\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"invalid mbulk count\00", align 1
@C_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Protocol error: too big bulk count string\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"too big bulk count string\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Protocol error: expected '$', got '%c'\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"expected $ but got something else\00", align 1
@server = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [36 x i8] c"Protocol error: invalid bulk length\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"invalid bulk length\00", align 1
@PROTO_MBULK_BIG_ARG = common dso_local global i64 0, align 8
@OBJ_STRING = common dso_local global i32 0, align 4
@SDS_NOINIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @processMultibulkBuffer(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i8* null, i8** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %166

11:                                               ; preds = %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @serverAssertWithInfo(%struct.TYPE_8__* %12, i32* null, i32 %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  %27 = call i8* @strchr(i8* %26, i8 signext 13)
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %50

30:                                               ; preds = %11
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @sdslen(i8* %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = sub i64 %34, %38
  %40 = load i32, i32* @PROTO_INLINE_MAX_SIZE, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp ugt i64 %39, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %30
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = call i32 @addReplyError(%struct.TYPE_8__* %44, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = call i32 @setProtocolError(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_8__* %46)
  br label %48

48:                                               ; preds = %43, %30
  %49 = load i32, i32* @C_ERR, align 4
  store i32 %49, i32* %2, align 4
  br label %479

50:                                               ; preds = %11
  %51 = load i8*, i8** %4, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %54, i64 %58
  %60 = ptrtoint i8* %51 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @sdslen(i8* %65)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = sub i64 %66, %70
  %72 = sub i64 %71, 2
  %73 = trunc i64 %72 to i32
  %74 = sext i32 %73 to i64
  %75 = icmp sgt i64 %62, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %50
  %77 = load i32, i32* @C_ERR, align 4
  store i32 %77, i32* %2, align 4
  br label %479

78:                                               ; preds = %50
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %82, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 42
  %91 = zext i1 %90 to i32
  %92 = call i32 @serverAssertWithInfo(%struct.TYPE_8__* %79, i32* null, i32 %91)
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %96, i64 %100
  %102 = load i8*, i8** %4, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %106, i64 %110
  %112 = ptrtoint i8* %102 to i64
  %113 = ptrtoint i8* %111 to i64
  %114 = sub i64 %112, %113
  %115 = trunc i64 %114 to i32
  %116 = call i32 @string2ll(i8* %101, i32 %115, i64* %6)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %78
  %120 = load i64, i64* %6, align 8
  %121 = icmp sgt i64 %120, 1048576
  br i1 %121, label %122, label %128

122:                                              ; preds = %119, %78
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %124 = call i32 @addReplyError(%struct.TYPE_8__* %123, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %126 = call i32 @setProtocolError(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_8__* %125)
  %127 = load i32, i32* @C_ERR, align 4
  store i32 %127, i32* %2, align 4
  br label %479

128:                                              ; preds = %119
  %129 = load i8*, i8** %4, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load i8*, i8** %131, align 8
  %133 = ptrtoint i8* %129 to i64
  %134 = ptrtoint i8* %132 to i64
  %135 = sub i64 %133, %134
  %136 = add nsw i64 %135, 2
  %137 = trunc i64 %136 to i32
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 8
  %140 = load i64, i64* %6, align 8
  %141 = icmp sle i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %128
  %143 = load i32, i32* @C_OK, align 4
  store i32 %143, i32* %2, align 4
  br label %479

144:                                              ; preds = %128
  %145 = load i64, i64* %6, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 5
  %150 = load i32*, i32** %149, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %157

152:                                              ; preds = %144
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 5
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @zfree(i32* %155)
  br label %157

157:                                              ; preds = %152, %144
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = mul i64 8, %160
  %162 = trunc i64 %161 to i32
  %163 = call i32* @zmalloc(i32 %162)
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 5
  store i32* %163, i32** %165, align 8
  br label %166

166:                                              ; preds = %157, %1
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp sgt i64 %170, 0
  %172 = zext i1 %171 to i32
  %173 = call i32 @serverAssertWithInfo(%struct.TYPE_8__* %167, i32* null, i32 %172)
  br label %174

174:                                              ; preds = %469, %166
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %470

179:                                              ; preds = %174
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %182, -1
  br i1 %183, label %184, label %363

184:                                              ; preds = %179
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 2
  %187 = load i8*, i8** %186, align 8
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %187, i64 %191
  %193 = call i8* @strchr(i8* %192, i8 signext 13)
  store i8* %193, i8** %4, align 8
  %194 = load i8*, i8** %4, align 8
  %195 = icmp eq i8* %194, null
  br i1 %195, label %196, label %216

196:                                              ; preds = %184
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 2
  %199 = load i8*, i8** %198, align 8
  %200 = call i64 @sdslen(i8* %199)
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = sext i32 %203 to i64
  %205 = sub i64 %200, %204
  %206 = load i32, i32* @PROTO_INLINE_MAX_SIZE, align 4
  %207 = sext i32 %206 to i64
  %208 = icmp ugt i64 %205, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %196
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %211 = call i32 @addReplyError(%struct.TYPE_8__* %210, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %213 = call i32 @setProtocolError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_8__* %212)
  %214 = load i32, i32* @C_ERR, align 4
  store i32 %214, i32* %2, align 4
  br label %479

215:                                              ; preds = %196
  br label %470

216:                                              ; preds = %184
  %217 = load i8*, i8** %4, align 8
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 2
  %220 = load i8*, i8** %219, align 8
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8, i8* %220, i64 %224
  %226 = ptrtoint i8* %217 to i64
  %227 = ptrtoint i8* %225 to i64
  %228 = sub i64 %226, %227
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 2
  %231 = load i8*, i8** %230, align 8
  %232 = call i64 @sdslen(i8* %231)
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 8
  %236 = sext i32 %235 to i64
  %237 = sub i64 %232, %236
  %238 = sub i64 %237, 2
  %239 = trunc i64 %238 to i32
  %240 = sext i32 %239 to i64
  %241 = icmp sgt i64 %228, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %216
  br label %470

243:                                              ; preds = %216
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 2
  %246 = load i8*, i8** %245, align 8
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %246, i64 %250
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp ne i32 %253, 36
  br i1 %254, label %255, label %270

255:                                              ; preds = %243
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 2
  %259 = load i8*, i8** %258, align 8
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %259, i64 %263
  %265 = load i8, i8* %264, align 1
  %266 = call i32 @addReplyErrorFormat(%struct.TYPE_8__* %256, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8 signext %265)
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %268 = call i32 @setProtocolError(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_8__* %267)
  %269 = load i32, i32* @C_ERR, align 4
  store i32 %269, i32* %2, align 4
  br label %479

270:                                              ; preds = %243
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 2
  %273 = load i8*, i8** %272, align 8
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 8
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8, i8* %273, i64 %277
  %279 = getelementptr inbounds i8, i8* %278, i64 1
  %280 = load i8*, i8** %4, align 8
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 2
  %283 = load i8*, i8** %282, align 8
  %284 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 8
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8, i8* %283, i64 %287
  %289 = getelementptr inbounds i8, i8* %288, i64 1
  %290 = ptrtoint i8* %280 to i64
  %291 = ptrtoint i8* %289 to i64
  %292 = sub i64 %290, %291
  %293 = trunc i64 %292 to i32
  %294 = call i32 @string2ll(i8* %279, i32 %293, i64* %6)
  store i32 %294, i32* %5, align 4
  %295 = load i32, i32* %5, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %304

297:                                              ; preds = %270
  %298 = load i64, i64* %6, align 8
  %299 = icmp slt i64 %298, 0
  br i1 %299, label %304, label %300

300:                                              ; preds = %297
  %301 = load i64, i64* %6, align 8
  %302 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 8
  %303 = icmp sgt i64 %301, %302
  br i1 %303, label %304, label %310

304:                                              ; preds = %300, %297, %270
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %306 = call i32 @addReplyError(%struct.TYPE_8__* %305, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %307 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %308 = call i32 @setProtocolError(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_8__* %307)
  %309 = load i32, i32* @C_ERR, align 4
  store i32 %309, i32* %2, align 4
  br label %479

310:                                              ; preds = %300
  %311 = load i8*, i8** %4, align 8
  %312 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 2
  %314 = load i8*, i8** %313, align 8
  %315 = ptrtoint i8* %311 to i64
  %316 = ptrtoint i8* %314 to i64
  %317 = sub i64 %315, %316
  %318 = add nsw i64 %317, 2
  %319 = trunc i64 %318 to i32
  %320 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 3
  store i32 %319, i32* %321, align 8
  %322 = load i64, i64* %6, align 8
  %323 = load i64, i64* @PROTO_MBULK_BIG_ARG, align 8
  %324 = icmp sge i64 %322, %323
  br i1 %324, label %325, label %358

325:                                              ; preds = %310
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 2
  %328 = load i8*, i8** %327, align 8
  %329 = call i64 @sdslen(i8* %328)
  %330 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 8
  %333 = sext i32 %332 to i64
  %334 = sub i64 %329, %333
  %335 = load i64, i64* %6, align 8
  %336 = add i64 %335, 2
  %337 = icmp ule i64 %334, %336
  br i1 %337, label %338, label %357

338:                                              ; preds = %325
  %339 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 2
  %341 = load i8*, i8** %340, align 8
  %342 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 3
  %344 = load i32, i32* %343, align 8
  %345 = sext i32 %344 to i64
  %346 = call i32 @sdsrange(i8* %341, i64 %345, i32 -1)
  %347 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 3
  store i32 0, i32* %348, align 8
  %349 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i32 0, i32 2
  %351 = load i8*, i8** %350, align 8
  %352 = load i64, i64* %6, align 8
  %353 = add nsw i64 %352, 2
  %354 = call i8* @sdsMakeRoomFor(i8* %351, i64 %353)
  %355 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %356 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %355, i32 0, i32 2
  store i8* %354, i8** %356, align 8
  br label %357

357:                                              ; preds = %338, %325
  br label %358

358:                                              ; preds = %357, %310
  %359 = load i64, i64* %6, align 8
  %360 = trunc i64 %359 to i32
  %361 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 4
  store i32 %360, i32* %362, align 4
  br label %363

363:                                              ; preds = %358, %179
  %364 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i32 0, i32 2
  %366 = load i8*, i8** %365, align 8
  %367 = call i64 @sdslen(i8* %366)
  %368 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %369 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %368, i32 0, i32 3
  %370 = load i32, i32* %369, align 8
  %371 = sext i32 %370 to i64
  %372 = sub i64 %367, %371
  %373 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 4
  %375 = load i32, i32* %374, align 4
  %376 = add nsw i32 %375, 2
  %377 = sext i32 %376 to i64
  %378 = icmp ult i64 %372, %377
  br i1 %378, label %379, label %380

379:                                              ; preds = %363
  br label %470

380:                                              ; preds = %363
  %381 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %381, i32 0, i32 3
  %383 = load i32, i32* %382, align 8
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %433

385:                                              ; preds = %380
  %386 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %387 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %386, i32 0, i32 4
  %388 = load i32, i32* %387, align 4
  %389 = sext i32 %388 to i64
  %390 = load i64, i64* @PROTO_MBULK_BIG_ARG, align 8
  %391 = icmp sge i64 %389, %390
  br i1 %391, label %392, label %433

392:                                              ; preds = %385
  %393 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %394 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %393, i32 0, i32 2
  %395 = load i8*, i8** %394, align 8
  %396 = call i64 @sdslen(i8* %395)
  %397 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %398 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %397, i32 0, i32 4
  %399 = load i32, i32* %398, align 4
  %400 = add nsw i32 %399, 2
  %401 = sext i32 %400 to i64
  %402 = icmp eq i64 %396, %401
  br i1 %402, label %403, label %433

403:                                              ; preds = %392
  %404 = load i32, i32* @OBJ_STRING, align 4
  %405 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %406 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %405, i32 0, i32 2
  %407 = load i8*, i8** %406, align 8
  %408 = call i32 @createObject(i32 %404, i8* %407)
  %409 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %410 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %409, i32 0, i32 5
  %411 = load i32*, i32** %410, align 8
  %412 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %413 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %412, i32 0, i32 1
  %414 = load i64, i64* %413, align 8
  %415 = add nsw i64 %414, 1
  store i64 %415, i64* %413, align 8
  %416 = getelementptr inbounds i32, i32* %411, i64 %414
  store i32 %408, i32* %416, align 4
  %417 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i32 0, i32 2
  %419 = load i8*, i8** %418, align 8
  %420 = call i32 @sdsIncrLen(i8* %419, i32 -2)
  %421 = load i32, i32* @SDS_NOINIT, align 4
  %422 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %423 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %422, i32 0, i32 4
  %424 = load i32, i32* %423, align 4
  %425 = add nsw i32 %424, 2
  %426 = call i8* @sdsnewlen(i32 %421, i32 %425)
  %427 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %428 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %427, i32 0, i32 2
  store i8* %426, i8** %428, align 8
  %429 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %430 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %429, i32 0, i32 2
  %431 = load i8*, i8** %430, align 8
  %432 = call i32 @sdsclear(i8* %431)
  br label %462

433:                                              ; preds = %392, %385, %380
  %434 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %435 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %434, i32 0, i32 2
  %436 = load i8*, i8** %435, align 8
  %437 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %438 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %437, i32 0, i32 3
  %439 = load i32, i32* %438, align 8
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i8, i8* %436, i64 %440
  %442 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %443 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %442, i32 0, i32 4
  %444 = load i32, i32* %443, align 4
  %445 = call i32 @createStringObject(i8* %441, i32 %444)
  %446 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %447 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %446, i32 0, i32 5
  %448 = load i32*, i32** %447, align 8
  %449 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %450 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %449, i32 0, i32 1
  %451 = load i64, i64* %450, align 8
  %452 = add nsw i64 %451, 1
  store i64 %452, i64* %450, align 8
  %453 = getelementptr inbounds i32, i32* %448, i64 %451
  store i32 %445, i32* %453, align 4
  %454 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %455 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %454, i32 0, i32 4
  %456 = load i32, i32* %455, align 4
  %457 = add nsw i32 %456, 2
  %458 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %459 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %458, i32 0, i32 3
  %460 = load i32, i32* %459, align 8
  %461 = add nsw i32 %460, %457
  store i32 %461, i32* %459, align 8
  br label %462

462:                                              ; preds = %433, %403
  %463 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %464 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %463, i32 0, i32 4
  store i32 -1, i32* %464, align 4
  %465 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %466 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %465, i32 0, i32 0
  %467 = load i64, i64* %466, align 8
  %468 = add nsw i64 %467, -1
  store i64 %468, i64* %466, align 8
  br label %469

469:                                              ; preds = %462
  br label %174

470:                                              ; preds = %379, %242, %215, %174
  %471 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %472 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %471, i32 0, i32 0
  %473 = load i64, i64* %472, align 8
  %474 = icmp eq i64 %473, 0
  br i1 %474, label %475, label %477

475:                                              ; preds = %470
  %476 = load i32, i32* @C_OK, align 4
  store i32 %476, i32* %2, align 4
  br label %479

477:                                              ; preds = %470
  %478 = load i32, i32* @C_ERR, align 4
  store i32 %478, i32* %2, align 4
  br label %479

479:                                              ; preds = %477, %475, %304, %255, %209, %142, %122, %76, %48
  %480 = load i32, i32* %2, align 4
  ret i32 %480
}

declare dso_local i32 @serverAssertWithInfo(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @sdslen(i8*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @setProtocolError(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @string2ll(i8*, i32, i64*) #1

declare dso_local i32 @zfree(i32*) #1

declare dso_local i32* @zmalloc(i32) #1

declare dso_local i32 @addReplyErrorFormat(%struct.TYPE_8__*, i8*, i8 signext) #1

declare dso_local i32 @sdsrange(i8*, i64, i32) #1

declare dso_local i8* @sdsMakeRoomFor(i8*, i64) #1

declare dso_local i32 @createObject(i32, i8*) #1

declare dso_local i32 @sdsIncrLen(i8*, i32) #1

declare dso_local i8* @sdsnewlen(i32, i32) #1

declare dso_local i32 @sdsclear(i8*) #1

declare dso_local i32 @createStringObject(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
