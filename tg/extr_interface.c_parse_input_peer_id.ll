; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_parse_input_peer_id.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_parse_input_peer_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.username_peer_pair = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@TGL_PEER_NOT_FOUND = common dso_local global i32 0, align 4
@username_peer_pair = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"user#id\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"user#\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"chat#id\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"chat#\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"secret_chat#id\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"secret_chat#\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"channel#id\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"channel#\00", align 1
@__const.parse_input_peer_id.ss = private unnamed_addr constant [8 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0)], align 16
@TGL_PEER_USER = common dso_local global i32 0, align 4
@TGL_PEER_CHAT = common dso_local global i32 0, align 4
@TGL_PEER_ENCR_CHAT = common dso_local global i32 0, align 4
@TGL_PEER_CHANNEL = common dso_local global i32 0, align 4
@TLS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_input_peer_id(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.username_peer_pair*, align 8
  %13 = alloca [8 x i8*], align 16
  %14 = alloca [8 x i32], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_6__*, align 8
  %20 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %3
  %27 = load i32, i32* @TGL_PEER_NOT_FOUND, align 4
  store i32 %27, i32* %4, align 4
  br label %279

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 36
  br i1 %32, label %33, label %129

33:                                               ; preds = %28
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ne i64 %39, 8
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @TGL_PEER_NOT_FOUND, align 4
  store i32 %42, i32* %4, align 4
  br label %279

43:                                               ; preds = %33
  %44 = bitcast i32* %8 to i8*
  store i8* %44, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %84, %43
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %87

49:                                               ; preds = %45
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp slt i32 %55, 48
  br i1 %56, label %65, label %57

57:                                               ; preds = %49
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp sgt i32 %63, 57
  br i1 %64, label %65, label %83

65:                                               ; preds = %57, %49
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp slt i32 %71, 97
  br i1 %72, label %81, label %73

73:                                               ; preds = %65
  %74 = load i8*, i8** %5, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp sgt i32 %79, 102
  br i1 %80, label %81, label %83

81:                                               ; preds = %73, %65
  %82 = load i32, i32* @TGL_PEER_NOT_FOUND, align 4
  store i32 %82, i32* %4, align 4
  br label %279

83:                                               ; preds = %73, %57
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %45

87:                                               ; preds = %45
  store i32 0, i32* %10, align 4
  br label %88

88:                                               ; preds = %114, %87
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 4
  br i1 %90, label %91, label %117

91:                                               ; preds = %88
  %92 = load i8*, i8** %5, align 8
  %93 = load i32, i32* %10, align 4
  %94 = mul nsw i32 2, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = call i32 @hex2int(i8 signext %97)
  %99 = mul nsw i32 %98, 16
  %100 = load i8*, i8** %5, align 8
  %101 = load i32, i32* %10, align 4
  %102 = mul nsw i32 2, %101
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %100, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = call i32 @hex2int(i8 signext %106)
  %108 = add nsw i32 %99, %107
  %109 = trunc i32 %108 to i8
  %110 = load i8*, i8** %9, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  store i8 %109, i8* %113, align 1
  br label %114

114:                                              ; preds = %91
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %88

117:                                              ; preds = %88
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @tgl_get_peer_type(i32 %121)
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i32, i32* @TGL_PEER_NOT_FOUND, align 4
  store i32 %126, i32* %4, align 4
  br label %279

127:                                              ; preds = %120, %117
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %4, align 4
  br label %279

129:                                              ; preds = %28
  %130 = load i8*, i8** %5, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 64
  br i1 %133, label %134, label %169

134:                                              ; preds = %129
  %135 = load i8*, i8** %5, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %5, align 8
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %6, align 4
  %139 = load i8*, i8** %5, align 8
  %140 = load i32, i32* %6, align 4
  %141 = call i8* @tstrndup(i8* %139, i32 %140)
  store i8* %141, i8** %11, align 8
  %142 = load i32, i32* @username_peer_pair, align 4
  %143 = bitcast i8** %11 to i8*
  %144 = call %struct.username_peer_pair* @tree_lookup_username_peer_pair(i32 %142, i8* %143)
  store %struct.username_peer_pair* %144, %struct.username_peer_pair** %12, align 8
  %145 = load i8*, i8** %11, align 8
  %146 = call i32 @tfree_str(i8* %145)
  %147 = load %struct.username_peer_pair*, %struct.username_peer_pair** %12, align 8
  %148 = icmp ne %struct.username_peer_pair* %147, null
  br i1 %148, label %149, label %167

149:                                              ; preds = %134
  %150 = load i32, i32* %7, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %149
  %153 = load %struct.username_peer_pair*, %struct.username_peer_pair** %12, align 8
  %154 = getelementptr inbounds %struct.username_peer_pair, %struct.username_peer_pair* %153, i32 0, i32 0
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @tgl_get_peer_type(i32 %157)
  %159 = load i32, i32* %7, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %152, %149
  %162 = load %struct.username_peer_pair*, %struct.username_peer_pair** %12, align 8
  %163 = getelementptr inbounds %struct.username_peer_pair, %struct.username_peer_pair* %162, i32 0, i32 0
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %4, align 4
  br label %279

167:                                              ; preds = %152, %134
  %168 = load i32, i32* @TGL_PEER_NOT_FOUND, align 4
  store i32 %168, i32* %4, align 4
  br label %279

169:                                              ; preds = %129
  %170 = bitcast [8 x i8*]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %170, i8* align 16 bitcast ([8 x i8*]* @__const.parse_input_peer_id.ss to i8*), i64 64, i1 false)
  %171 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %172 = load i32, i32* @TGL_PEER_USER, align 4
  store i32 %172, i32* %171, align 4
  %173 = getelementptr inbounds i32, i32* %171, i64 1
  %174 = load i32, i32* @TGL_PEER_USER, align 4
  store i32 %174, i32* %173, align 4
  %175 = getelementptr inbounds i32, i32* %173, i64 1
  %176 = load i32, i32* @TGL_PEER_CHAT, align 4
  store i32 %176, i32* %175, align 4
  %177 = getelementptr inbounds i32, i32* %175, i64 1
  %178 = load i32, i32* @TGL_PEER_CHAT, align 4
  store i32 %178, i32* %177, align 4
  %179 = getelementptr inbounds i32, i32* %177, i64 1
  %180 = load i32, i32* @TGL_PEER_ENCR_CHAT, align 4
  store i32 %180, i32* %179, align 4
  %181 = getelementptr inbounds i32, i32* %179, i64 1
  %182 = load i32, i32* @TGL_PEER_ENCR_CHAT, align 4
  store i32 %182, i32* %181, align 4
  %183 = getelementptr inbounds i32, i32* %181, i64 1
  %184 = load i32, i32* @TGL_PEER_CHANNEL, align 4
  store i32 %184, i32* %183, align 4
  %185 = getelementptr inbounds i32, i32* %183, i64 1
  %186 = load i32, i32* @TGL_PEER_CHANNEL, align 4
  store i32 %186, i32* %185, align 4
  %187 = load i8*, i8** %5, align 8
  %188 = load i32, i32* %6, align 4
  %189 = call i8* @tstrndup(i8* %187, i32 %188)
  store i8* %189, i8** %15, align 8
  store i32 0, i32* %16, align 4
  br label %190

190:                                              ; preds = %252, %169
  %191 = load i32, i32* %16, align 4
  %192 = icmp slt i32 %191, 8
  br i1 %192, label %193, label %255

193:                                              ; preds = %190
  %194 = load i32, i32* %7, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %193
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* %16, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %197, %201
  br i1 %202, label %203, label %251

203:                                              ; preds = %196, %193
  %204 = load i32, i32* %16, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [8 x i8*], [8 x i8*]* %13, i64 0, i64 %205
  %207 = load i8*, i8** %206, align 8
  %208 = call i32 @strlen(i8* %207)
  store i32 %208, i32* %17, align 4
  %209 = load i32, i32* %6, align 4
  %210 = load i32, i32* %17, align 4
  %211 = icmp sgt i32 %209, %210
  br i1 %211, label %212, label %250

212:                                              ; preds = %203
  %213 = load i8*, i8** %5, align 8
  %214 = load i32, i32* %16, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [8 x i8*], [8 x i8*]* %13, i64 0, i64 %215
  %217 = load i8*, i8** %216, align 8
  %218 = load i32, i32* %17, align 4
  %219 = call i32 @memcmp(i8* %213, i8* %217, i32 %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %250, label %221

221:                                              ; preds = %212
  %222 = load i8*, i8** %15, align 8
  %223 = load i32, i32* %17, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8, i8* %222, i64 %224
  %226 = call i32 @atoi(i8* %225)
  store i32 %226, i32* %18, align 4
  %227 = load i8*, i8** %15, align 8
  %228 = call i32 @tfree_str(i8* %227)
  %229 = load i32, i32* %18, align 4
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %221
  %232 = load i32, i32* @TGL_PEER_NOT_FOUND, align 4
  store i32 %232, i32* %4, align 4
  br label %279

233:                                              ; preds = %221
  %234 = load i32, i32* @TLS, align 4
  %235 = load i32, i32* %16, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %18, align 4
  %240 = call i32 @tgl_set_peer_id(i32 %238, i32 %239)
  %241 = call %struct.TYPE_6__* @tgl_peer_get(i32 %234, i32 %240)
  store %struct.TYPE_6__* %241, %struct.TYPE_6__** %19, align 8
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %243 = icmp ne %struct.TYPE_6__* %242, null
  br i1 %243, label %246, label %244

244:                                              ; preds = %233
  %245 = load i32, i32* @TGL_PEER_NOT_FOUND, align 4
  store i32 %245, i32* %4, align 4
  br label %279

246:                                              ; preds = %233
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  store i32 %249, i32* %4, align 4
  br label %279

250:                                              ; preds = %212, %203
  br label %251

251:                                              ; preds = %250, %196
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %16, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %16, align 4
  br label %190

255:                                              ; preds = %190
  %256 = load i32, i32* @TLS, align 4
  %257 = load i8*, i8** %15, align 8
  %258 = call %struct.TYPE_6__* @tgl_peer_get_by_name(i32 %256, i8* %257)
  store %struct.TYPE_6__* %258, %struct.TYPE_6__** %20, align 8
  %259 = load i8*, i8** %15, align 8
  %260 = call i32 @tfree_str(i8* %259)
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %262 = icmp ne %struct.TYPE_6__* %261, null
  br i1 %262, label %263, label %277

263:                                              ; preds = %255
  %264 = load i32, i32* %7, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %273

266:                                              ; preds = %263
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @tgl_get_peer_type(i32 %269)
  %271 = load i32, i32* %7, align 4
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %273, label %277

273:                                              ; preds = %266, %263
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  store i32 %276, i32* %4, align 4
  br label %279

277:                                              ; preds = %266, %255
  %278 = load i32, i32* @TGL_PEER_NOT_FOUND, align 4
  store i32 %278, i32* %4, align 4
  br label %279

279:                                              ; preds = %277, %273, %246, %244, %231, %167, %161, %127, %125, %81, %41, %26
  %280 = load i32, i32* %4, align 4
  ret i32 %280
}

declare dso_local i32 @hex2int(i8 signext) #1

declare dso_local i32 @tgl_get_peer_type(i32) #1

declare dso_local i8* @tstrndup(i8*, i32) #1

declare dso_local %struct.username_peer_pair* @tree_lookup_username_peer_pair(i32, i8*) #1

declare dso_local i32 @tfree_str(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.TYPE_6__* @tgl_peer_get(i32, i32) #1

declare dso_local i32 @tgl_set_peer_id(i32, i32) #1

declare dso_local %struct.TYPE_6__* @tgl_peer_get_by_name(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
