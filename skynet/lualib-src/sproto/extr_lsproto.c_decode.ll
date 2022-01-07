; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_lsproto.c_decode.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_lsproto.c_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sproto_arg = type { i64, i32, i32, i32, i64, i32, i64, i32, i32, %struct.decode_ud* }
%struct.decode_ud = type { i64, i64, i32, i32, i32, i32, i32* }

@ENCODE_DEEPLEVEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"The table is too deep\00", align 1
@SPROTO_CB_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Can't find main index (tag=%d) in [%s]\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Invalid type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sproto_arg*)* @decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode(%struct.sproto_arg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sproto_arg*, align 8
  %4 = alloca %struct.decode_ud*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.decode_ud, align 8
  %11 = alloca i32, align 4
  store %struct.sproto_arg* %0, %struct.sproto_arg** %3, align 8
  %12 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %13 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %12, i32 0, i32 9
  %14 = load %struct.decode_ud*, %struct.decode_ud** %13, align 8
  store %struct.decode_ud* %14, %struct.decode_ud** %4, align 8
  %15 = load %struct.decode_ud*, %struct.decode_ud** %4, align 8
  %16 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %15, i32 0, i32 6
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  %18 = load %struct.decode_ud*, %struct.decode_ud** %4, align 8
  %19 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ENCODE_DEEPLEVEL, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 (i32*, i8*, ...) @luaL_error(i32* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %2, align 4
  br label %294

26:                                               ; preds = %1
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @luaL_checkstack(i32* %27, i32 12, i32* null)
  %29 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %30 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %83

33:                                               ; preds = %26
  %34 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %35 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.decode_ud*, %struct.decode_ud** %4, align 8
  %38 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %82

41:                                               ; preds = %33
  %42 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %43 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.decode_ud*, %struct.decode_ud** %4, align 8
  %46 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @lua_newtable(i32* %47)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @lua_pushvalue(i32* %49, i32 -1)
  %51 = load i32*, i32** %5, align 8
  %52 = load %struct.decode_ud*, %struct.decode_ud** %4, align 8
  %53 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %56 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @lua_setfield(i32* %51, i32 %54, i64 %57)
  %59 = load %struct.decode_ud*, %struct.decode_ud** %4, align 8
  %60 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %41
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.decode_ud*, %struct.decode_ud** %4, align 8
  %66 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @lua_replace(i32* %64, i32 %67)
  br label %75

69:                                               ; preds = %41
  %70 = load i32*, i32** %5, align 8
  %71 = call i8* @lua_gettop(i32* %70)
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.decode_ud*, %struct.decode_ud** %4, align 8
  %74 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %69, %63
  %76 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %77 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %294

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %33
  br label %83

83:                                               ; preds = %82, %26
  %84 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %85 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  switch i32 %86, label %250 [
    i32 130, label %87
    i32 131, label %117
    i32 129, label %126
    i32 128, label %135
  ]

87:                                               ; preds = %83
  %88 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %89 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %87
  %93 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %94 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %93, i32 0, i32 6
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i32*
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %7, align 4
  %99 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %100 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %7, align 4
  %103 = sdiv i32 %102, %101
  store i32 %103, i32* %7, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @lua_pushnumber(i32* %104, i32 %105)
  br label %116

107:                                              ; preds = %87
  %108 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %109 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %108, i32 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to i32*
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %8, align 4
  %113 = load i32*, i32** %5, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @lua_pushinteger(i32* %113, i32 %114)
  br label %116

116:                                              ; preds = %107, %92
  br label %253

117:                                              ; preds = %83
  %118 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %119 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %118, i32 0, i32 6
  %120 = load i64, i64* %119, align 8
  %121 = inttoptr i64 %120 to i32*
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %9, align 4
  %123 = load i32*, i32** %5, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @lua_pushboolean(i32* %123, i32 %124)
  br label %253

126:                                              ; preds = %83
  %127 = load i32*, i32** %5, align 8
  %128 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %129 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %128, i32 0, i32 6
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %132 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @lua_pushlstring(i32* %127, i64 %130, i32 %133)
  br label %253

135:                                              ; preds = %83
  %136 = load i32*, i32** %5, align 8
  %137 = call i32 @lua_newtable(i32* %136)
  %138 = load i32*, i32** %5, align 8
  %139 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %10, i32 0, i32 6
  store i32* %138, i32** %139, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = call i8* @lua_gettop(i32* %140)
  %142 = ptrtoint i8* %141 to i32
  %143 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %10, i32 0, i32 2
  store i32 %142, i32* %143, align 8
  %144 = load %struct.decode_ud*, %struct.decode_ud** %4, align 8
  %145 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, 1
  %148 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %10, i32 0, i32 0
  store i64 %147, i64* %148, align 8
  %149 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %10, i32 0, i32 3
  store i32 0, i32* %149, align 4
  %150 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %10, i32 0, i32 1
  store i64 0, i64* %150, align 8
  %151 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %152 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = icmp sge i32 %153, 0
  br i1 %154, label %155, label %220

155:                                              ; preds = %135
  %156 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %157 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %10, i32 0, i32 4
  store i32 %158, i32* %159, align 8
  %160 = load i32*, i32** %5, align 8
  %161 = call i32 @lua_pushnil(i32* %160)
  %162 = load i32*, i32** %5, align 8
  %163 = call i8* @lua_gettop(i32* %162)
  %164 = ptrtoint i8* %163 to i32
  %165 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %10, i32 0, i32 5
  store i32 %164, i32* %165, align 4
  %166 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %167 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %170 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %169, i32 0, i32 6
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %173 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @sproto_decode(i32 %168, i64 %171, i32 %174, i32 (%struct.sproto_arg*)* @decode, %struct.decode_ud* %10)
  store i32 %175, i32* %11, align 4
  %176 = load i32, i32* %11, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %155
  %179 = load i32, i32* @SPROTO_CB_ERROR, align 4
  store i32 %179, i32* %2, align 4
  br label %294

180:                                              ; preds = %155
  %181 = load i32, i32* %11, align 4
  %182 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %183 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %181, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %180
  %187 = load i32, i32* %11, align 4
  store i32 %187, i32* %2, align 4
  br label %294

188:                                              ; preds = %180
  %189 = load i32*, i32** %5, align 8
  %190 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %10, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @lua_pushvalue(i32* %189, i32 %191)
  %193 = load i32*, i32** %5, align 8
  %194 = call i32 @lua_isnil(i32* %193, i32 -1)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %188
  %197 = load i32*, i32** %5, align 8
  %198 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %199 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %202 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = call i32 (i32*, i8*, ...) @luaL_error(i32* %197, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %200, i64 %203)
  br label %205

205:                                              ; preds = %196, %188
  %206 = load i32*, i32** %5, align 8
  %207 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %10, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @lua_pushvalue(i32* %206, i32 %208)
  %210 = load i32*, i32** %5, align 8
  %211 = load %struct.decode_ud*, %struct.decode_ud** %4, align 8
  %212 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @lua_settable(i32* %210, i32 %213)
  %215 = load i32*, i32** %5, align 8
  %216 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %10, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = sub nsw i32 %217, 1
  %219 = call i32 @lua_settop(i32* %215, i32 %218)
  store i32 0, i32* %2, align 4
  br label %294

220:                                              ; preds = %135
  %221 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %10, i32 0, i32 4
  store i32 -1, i32* %221, align 8
  %222 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %10, i32 0, i32 5
  store i32 0, i32* %222, align 4
  %223 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %224 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %223, i32 0, i32 7
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %227 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %226, i32 0, i32 6
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %230 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @sproto_decode(i32 %225, i64 %228, i32 %231, i32 (%struct.sproto_arg*)* @decode, %struct.decode_ud* %10)
  store i32 %232, i32* %11, align 4
  %233 = load i32, i32* %11, align 4
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %220
  %236 = load i32, i32* @SPROTO_CB_ERROR, align 4
  store i32 %236, i32* %2, align 4
  br label %294

237:                                              ; preds = %220
  %238 = load i32, i32* %11, align 4
  %239 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %240 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = icmp ne i32 %238, %241
  br i1 %242, label %243, label %245

243:                                              ; preds = %237
  %244 = load i32, i32* %11, align 4
  store i32 %244, i32* %2, align 4
  br label %294

245:                                              ; preds = %237
  %246 = load i32*, i32** %5, align 8
  %247 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %10, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @lua_settop(i32* %246, i32 %248)
  br label %253

250:                                              ; preds = %83
  %251 = load i32*, i32** %5, align 8
  %252 = call i32 (i32*, i8*, ...) @luaL_error(i32* %251, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %253

253:                                              ; preds = %250, %245, %126, %117, %116
  %254 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %255 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 8
  %257 = icmp sgt i32 %256, 0
  br i1 %257, label %258, label %267

258:                                              ; preds = %253
  %259 = load i32*, i32** %5, align 8
  %260 = load %struct.decode_ud*, %struct.decode_ud** %4, align 8
  %261 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %264 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @lua_seti(i32* %259, i32 %262, i32 %265)
  br label %293

267:                                              ; preds = %253
  %268 = load %struct.decode_ud*, %struct.decode_ud** %4, align 8
  %269 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 8
  %271 = sext i32 %270 to i64
  %272 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %273 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %272, i32 0, i32 4
  %274 = load i64, i64* %273, align 8
  %275 = icmp eq i64 %271, %274
  br i1 %275, label %276, label %284

276:                                              ; preds = %267
  %277 = load i32*, i32** %5, align 8
  %278 = call i32 @lua_pushvalue(i32* %277, i32 -1)
  %279 = load i32*, i32** %5, align 8
  %280 = load %struct.decode_ud*, %struct.decode_ud** %4, align 8
  %281 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %280, i32 0, i32 5
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @lua_replace(i32* %279, i32 %282)
  br label %284

284:                                              ; preds = %276, %267
  %285 = load i32*, i32** %5, align 8
  %286 = load %struct.decode_ud*, %struct.decode_ud** %4, align 8
  %287 = getelementptr inbounds %struct.decode_ud, %struct.decode_ud* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %290 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = call i32 @lua_setfield(i32* %285, i32 %288, i64 %291)
  br label %293

293:                                              ; preds = %284, %258
  store i32 0, i32* %2, align 4
  br label %294

294:                                              ; preds = %293, %243, %235, %205, %186, %178, %80, %23
  %295 = load i32, i32* %2, align 4
  ret i32 %295
}

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32 @luaL_checkstack(i32*, i32, i32*) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i64) #1

declare dso_local i32 @lua_replace(i32*, i32) #1

declare dso_local i8* @lua_gettop(i32*) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i64, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @sproto_decode(i32, i64, i32, i32 (%struct.sproto_arg*)*, %struct.decode_ud*) #1

declare dso_local i32 @lua_isnil(i32*, i32) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @lua_seti(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
