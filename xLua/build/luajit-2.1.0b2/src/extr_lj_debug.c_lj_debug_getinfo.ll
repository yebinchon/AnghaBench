; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_debug.c_lj_debug_getinfo.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_debug.c_lj_debug_getinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32*, i32, i32 }
%struct.TYPE_27__ = type { i8*, i8*, i32, i32, i8*, i32, i32, i8*, i32*, i64, i32, i64 }
%struct.TYPE_29__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i64, i64 }

@LJ_TFUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"Lua\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"=[C]\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@PROTO_VARARG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lj_debug_getinfo(%struct.TYPE_26__* %0, i8* %1, %struct.TYPE_27__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_29__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_28__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_28__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_28__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 62
  br i1 %33, label %34, label %51

34:                                               ; preds = %4
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 -1
  store i32* %38, i32** %15, align 8
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %40 = load i32*, i32** %15, align 8
  %41 = call i32 @tvisfunc(i32* %40)
  %42 = call i32 @api_check(%struct.TYPE_26__* %39, i32 %41)
  %43 = load i32*, i32** %15, align 8
  %44 = call %struct.TYPE_29__* @funcV(i32* %43)
  store %struct.TYPE_29__* %44, %struct.TYPE_29__** %14, align 8
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 -1
  store i32* %48, i32** %46, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %7, align 8
  br label %114

51:                                               ; preds = %4
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 11
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = and i32 %55, 65535
  store i32 %56, i32* %16, align 4
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 11
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = ashr i32 %60, 16
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @lua_assert(i32 %64)
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32* @tvref(i32 %68)
  %70 = load i32, i32* %16, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32* %72, i32** %12, align 8
  %73 = load i32, i32* %17, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %51
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* %17, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32* %79, i32** %13, align 8
  br label %80

80:                                               ; preds = %75, %51
  %81 = load i32*, i32** %12, align 8
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32* @tvref(i32 %84)
  %86 = icmp ule i32* %81, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %80
  %88 = load i32*, i32** %13, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load i32*, i32** %13, align 8
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32* @tvref(i32 %94)
  %96 = icmp ule i32* %91, %95
  br label %97

97:                                               ; preds = %90, %87
  %98 = phi i1 [ true, %87 ], [ %96, %90 ]
  br label %99

99:                                               ; preds = %97, %80
  %100 = phi i1 [ false, %80 ], [ %98, %97 ]
  %101 = zext i1 %100 to i32
  %102 = call i32 @lua_assert(i32 %101)
  %103 = load i32*, i32** %12, align 8
  %104 = call %struct.TYPE_29__* @frame_func(i32* %103)
  store %struct.TYPE_29__* %104, %struct.TYPE_29__** %14, align 8
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @LJ_TFUNC, align 4
  %110 = xor i32 %109, -1
  %111 = icmp eq i32 %108, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @lua_assert(i32 %112)
  br label %114

114:                                              ; preds = %99, %34
  br label %115

115:                                              ; preds = %308, %114
  %116 = load i8*, i8** %7, align 8
  %117 = load i8, i8* %116, align 1
  %118 = icmp ne i8 %117, 0
  br i1 %118, label %119, label %311

119:                                              ; preds = %115
  %120 = load i8*, i8** %7, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 83
  br i1 %123, label %124, label %198

124:                                              ; preds = %119
  %125 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %126 = call i64 @isluafunc(%struct.TYPE_29__* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %172

128:                                              ; preds = %124
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %130 = call %struct.TYPE_28__* @funcproto(%struct.TYPE_29__* %129)
  store %struct.TYPE_28__* %130, %struct.TYPE_28__** %18, align 8
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %19, align 4
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %135 = call i32* @proto_chunkname(%struct.TYPE_28__* %134)
  store i32* %135, i32** %20, align 8
  %136 = load i32*, i32** %20, align 8
  %137 = call i8* @strdata(i32* %136)
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %138, i32 0, i32 0
  store i8* %137, i8** %139, align 8
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = load i32*, i32** %20, align 8
  %144 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %145 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @lj_debug_shortname(i8* %142, i32* %143, i32 %146)
  %148 = load i32, i32* %19, align 4
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* %19, align 4
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %151, %154
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* %19, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %128
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  %165 = xor i1 %164, true
  br label %166

166:                                              ; preds = %160, %128
  %167 = phi i1 [ true, %128 ], [ %165, %160 ]
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  %170 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %170, i32 0, i32 4
  store i8* %169, i8** %171, align 8
  br label %197

172:                                              ; preds = %124
  %173 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %173, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %174, align 8
  %175 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 0
  store i8 91, i8* %178, align 1
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 1
  store i8 67, i8* %182, align 1
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %183, i32 0, i32 1
  %185 = load i8*, i8** %184, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 2
  store i8 93, i8* %186, align 1
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 3
  store i8 0, i8* %190, align 1
  %191 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %191, i32 0, i32 2
  store i32 -1, i32* %192, align 8
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 3
  store i32 -1, i32* %194, align 4
  %195 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %195, i32 0, i32 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %196, align 8
  br label %197

197:                                              ; preds = %172, %166
  br label %307

198:                                              ; preds = %119
  %199 = load i8*, i8** %7, align 8
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp eq i32 %201, 108
  br i1 %202, label %203, label %216

203:                                              ; preds = %198
  %204 = load i32*, i32** %12, align 8
  %205 = icmp ne i32* %204, null
  br i1 %205, label %206, label %211

206:                                              ; preds = %203
  %207 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %208 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %209 = load i32*, i32** %13, align 8
  %210 = call i32 @debug_frameline(%struct.TYPE_26__* %207, %struct.TYPE_29__* %208, i32* %209)
  br label %212

211:                                              ; preds = %203
  br label %212

212:                                              ; preds = %211, %206
  %213 = phi i32 [ %210, %206 ], [ -1, %211 ]
  %214 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %214, i32 0, i32 5
  store i32 %213, i32* %215, align 8
  br label %306

216:                                              ; preds = %198
  %217 = load i8*, i8** %7, align 8
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 117
  br i1 %220, label %221, label %260

221:                                              ; preds = %216
  %222 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %223 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %226, i32 0, i32 10
  store i32 %225, i32* %227, align 8
  %228 = load i32, i32* %9, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %259

230:                                              ; preds = %221
  %231 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %232 = call i64 @isluafunc(%struct.TYPE_29__* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %253

234:                                              ; preds = %230
  %235 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %236 = call %struct.TYPE_28__* @funcproto(%struct.TYPE_29__* %235)
  store %struct.TYPE_28__* %236, %struct.TYPE_28__** %21, align 8
  %237 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  %238 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %237, i32 0, i32 4
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %240, i32 0, i32 9
  store i64 %239, i64* %241, align 8
  %242 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  %243 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @PROTO_VARARG, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  %248 = xor i1 %247, true
  %249 = xor i1 %248, true
  %250 = zext i1 %249 to i32
  %251 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %251, i32 0, i32 6
  store i32 %250, i32* %252, align 4
  br label %258

253:                                              ; preds = %230
  %254 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %254, i32 0, i32 9
  store i64 0, i64* %255, align 8
  %256 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %256, i32 0, i32 6
  store i32 1, i32* %257, align 4
  br label %258

258:                                              ; preds = %253, %234
  br label %259

259:                                              ; preds = %258, %221
  br label %305

260:                                              ; preds = %216
  %261 = load i8*, i8** %7, align 8
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = icmp eq i32 %263, 110
  br i1 %264, label %265, label %289

265:                                              ; preds = %260
  %266 = load i32*, i32** %12, align 8
  %267 = icmp ne i32* %266, null
  br i1 %267, label %268, label %274

268:                                              ; preds = %265
  %269 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %270 = load i32*, i32** %12, align 8
  %271 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %271, i32 0, i32 8
  %273 = call i8* @lj_debug_funcname(%struct.TYPE_26__* %269, i32* %270, i32** %272)
  br label %275

274:                                              ; preds = %265
  br label %275

275:                                              ; preds = %274, %268
  %276 = phi i8* [ %273, %268 ], [ null, %274 ]
  %277 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %277, i32 0, i32 7
  store i8* %276, i8** %278, align 8
  %279 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %279, i32 0, i32 7
  %281 = load i8*, i8** %280, align 8
  %282 = icmp eq i8* %281, null
  br i1 %282, label %283, label %288

283:                                              ; preds = %275
  %284 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %285 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %284, i32 0, i32 7
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %285, align 8
  %286 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %287 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %286, i32 0, i32 8
  store i32* null, i32** %287, align 8
  br label %288

288:                                              ; preds = %283, %275
  br label %304

289:                                              ; preds = %260
  %290 = load i8*, i8** %7, align 8
  %291 = load i8, i8* %290, align 1
  %292 = sext i8 %291 to i32
  %293 = icmp eq i32 %292, 102
  br i1 %293, label %294, label %295

294:                                              ; preds = %289
  store i32 1, i32* %10, align 4
  br label %303

295:                                              ; preds = %289
  %296 = load i8*, i8** %7, align 8
  %297 = load i8, i8* %296, align 1
  %298 = sext i8 %297 to i32
  %299 = icmp eq i32 %298, 76
  br i1 %299, label %300, label %301

300:                                              ; preds = %295
  store i32 1, i32* %11, align 4
  br label %302

301:                                              ; preds = %295
  store i32 0, i32* %5, align 4
  br label %422

302:                                              ; preds = %300
  br label %303

303:                                              ; preds = %302, %294
  br label %304

304:                                              ; preds = %303, %288
  br label %305

305:                                              ; preds = %304, %259
  br label %306

306:                                              ; preds = %305, %212
  br label %307

307:                                              ; preds = %306, %197
  br label %308

308:                                              ; preds = %307
  %309 = load i8*, i8** %7, align 8
  %310 = getelementptr inbounds i8, i8* %309, i32 1
  store i8* %310, i8** %7, align 8
  br label %115

311:                                              ; preds = %115
  %312 = load i32, i32* %10, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %323

314:                                              ; preds = %311
  %315 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %316 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %316, i32 0, i32 0
  %318 = load i32*, i32** %317, align 8
  %319 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %320 = call i32 @setfuncV(%struct.TYPE_26__* %315, i32* %318, %struct.TYPE_29__* %319)
  %321 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %322 = call i32 @incr_top(%struct.TYPE_26__* %321)
  br label %323

323:                                              ; preds = %314, %311
  %324 = load i32, i32* %11, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %421

326:                                              ; preds = %323
  %327 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %328 = call i64 @isluafunc(%struct.TYPE_29__* %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %413

330:                                              ; preds = %326
  %331 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %332 = call i32* @lj_tab_new(%struct.TYPE_26__* %331, i32 0, i32 0)
  store i32* %332, i32** %22, align 8
  %333 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %334 = call %struct.TYPE_28__* @funcproto(%struct.TYPE_29__* %333)
  store %struct.TYPE_28__* %334, %struct.TYPE_28__** %23, align 8
  %335 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %336 = call i8* @proto_lineinfo(%struct.TYPE_28__* %335)
  store i8* %336, i8** %24, align 8
  %337 = load i8*, i8** %24, align 8
  %338 = icmp ne i8* %337, null
  br i1 %338, label %339, label %406

339:                                              ; preds = %330
  %340 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %341 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  store i32 %342, i32* %25, align 4
  %343 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %344 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = icmp slt i32 %345, 256
  br i1 %346, label %347, label %348

347:                                              ; preds = %339
  br label %355

348:                                              ; preds = %339
  %349 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %350 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = icmp slt i32 %351, 65536
  %353 = zext i1 %352 to i64
  %354 = select i1 %352, i32 2, i32 4
  br label %355

355:                                              ; preds = %348, %347
  %356 = phi i32 [ 1, %347 ], [ %354, %348 ]
  store i32 %356, i32* %26, align 4
  %357 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %358 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %357, i32 0, i32 3
  %359 = load i64, i64* %358, align 8
  %360 = sub i64 %359, 1
  store i64 %360, i64* %28, align 8
  store i64 0, i64* %27, align 8
  br label %361

361:                                              ; preds = %402, %355
  %362 = load i64, i64* %27, align 8
  %363 = load i64, i64* %28, align 8
  %364 = icmp ult i64 %362, %363
  br i1 %364, label %365, label %405

365:                                              ; preds = %361
  %366 = load i32, i32* %25, align 4
  %367 = load i32, i32* %26, align 4
  %368 = icmp eq i32 %367, 1
  br i1 %368, label %369, label %376

369:                                              ; preds = %365
  %370 = load i8*, i8** %24, align 8
  %371 = bitcast i8* %370 to i64*
  %372 = load i64, i64* %27, align 8
  %373 = getelementptr inbounds i64, i64* %371, i64 %372
  %374 = load i64, i64* %373, align 8
  %375 = trunc i64 %374 to i32
  br label %394

376:                                              ; preds = %365
  %377 = load i32, i32* %26, align 4
  %378 = icmp eq i32 %377, 2
  br i1 %378, label %379, label %386

379:                                              ; preds = %376
  %380 = load i8*, i8** %24, align 8
  %381 = bitcast i8* %380 to i64*
  %382 = load i64, i64* %27, align 8
  %383 = getelementptr inbounds i64, i64* %381, i64 %382
  %384 = load i64, i64* %383, align 8
  %385 = trunc i64 %384 to i32
  br label %392

386:                                              ; preds = %376
  %387 = load i8*, i8** %24, align 8
  %388 = bitcast i8* %387 to i32*
  %389 = load i64, i64* %27, align 8
  %390 = getelementptr inbounds i32, i32* %388, i64 %389
  %391 = load i32, i32* %390, align 4
  br label %392

392:                                              ; preds = %386, %379
  %393 = phi i32 [ %385, %379 ], [ %391, %386 ]
  br label %394

394:                                              ; preds = %392, %369
  %395 = phi i32 [ %375, %369 ], [ %393, %392 ]
  %396 = add nsw i32 %366, %395
  store i32 %396, i32* %29, align 4
  %397 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %398 = load i32*, i32** %22, align 8
  %399 = load i32, i32* %29, align 4
  %400 = call i32 @lj_tab_setint(%struct.TYPE_26__* %397, i32* %398, i32 %399)
  %401 = call i32 @setboolV(i32 %400, i32 1)
  br label %402

402:                                              ; preds = %394
  %403 = load i64, i64* %27, align 8
  %404 = add i64 %403, 1
  store i64 %404, i64* %27, align 8
  br label %361

405:                                              ; preds = %361
  br label %406

406:                                              ; preds = %405, %330
  %407 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %408 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %409 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %408, i32 0, i32 0
  %410 = load i32*, i32** %409, align 8
  %411 = load i32*, i32** %22, align 8
  %412 = call i32 @settabV(%struct.TYPE_26__* %407, i32* %410, i32* %411)
  br label %418

413:                                              ; preds = %326
  %414 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %415 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %414, i32 0, i32 0
  %416 = load i32*, i32** %415, align 8
  %417 = call i32 @setnilV(i32* %416)
  br label %418

418:                                              ; preds = %413, %406
  %419 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %420 = call i32 @incr_top(%struct.TYPE_26__* %419)
  br label %421

421:                                              ; preds = %418, %323
  store i32 1, i32* %5, align 4
  br label %422

422:                                              ; preds = %421, %301
  %423 = load i32, i32* %5, align 4
  ret i32 %423
}

declare dso_local i32 @api_check(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @tvisfunc(i32*) #1

declare dso_local %struct.TYPE_29__* @funcV(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32* @tvref(i32) #1

declare dso_local %struct.TYPE_29__* @frame_func(i32*) #1

declare dso_local i64 @isluafunc(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_28__* @funcproto(%struct.TYPE_29__*) #1

declare dso_local i32* @proto_chunkname(%struct.TYPE_28__*) #1

declare dso_local i8* @strdata(i32*) #1

declare dso_local i32 @lj_debug_shortname(i8*, i32*, i32) #1

declare dso_local i32 @debug_frameline(%struct.TYPE_26__*, %struct.TYPE_29__*, i32*) #1

declare dso_local i8* @lj_debug_funcname(%struct.TYPE_26__*, i32*, i32**) #1

declare dso_local i32 @setfuncV(%struct.TYPE_26__*, i32*, %struct.TYPE_29__*) #1

declare dso_local i32 @incr_top(%struct.TYPE_26__*) #1

declare dso_local i32* @lj_tab_new(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i8* @proto_lineinfo(%struct.TYPE_28__*) #1

declare dso_local i32 @setboolV(i32, i32) #1

declare dso_local i32 @lj_tab_setint(%struct.TYPE_26__*, i32*, i32) #1

declare dso_local i32 @settabV(%struct.TYPE_26__*, i32*, i32*) #1

declare dso_local i32 @setnilV(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
