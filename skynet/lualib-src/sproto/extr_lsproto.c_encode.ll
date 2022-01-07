; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_lsproto.c_encode.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_lsproto.c_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sproto_arg = type { i64, i64, i32, i32, i64, i64, i32, i32, %struct.encode_ud* }
%struct.encode_ud = type { i64, i64, i32, i32, i32, i32, i32, i32, i32* }

@ENCODE_DEEPLEVEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"The table is too deep\00", align 1
@SPROTO_CB_NOARRAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"__pairs\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c".*%s(%d) should be a table or an userdata with metamethods (Is a %s)\00", align 1
@SPROTO_CB_NIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c".%s[%d] is not an integer (Is a %s)\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c".%s[%d] is not a boolean (Is a %s)\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c".%s[%d] is not a string (Is a %s)\00", align 1
@SPROTO_CB_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"Invalid field type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sproto_arg*)* @encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode(%struct.sproto_arg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sproto_arg*, align 8
  %4 = alloca %struct.encode_ud*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.encode_ud, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sproto_arg* %0, %struct.sproto_arg** %3, align 8
  %17 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %18 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %17, i32 0, i32 8
  %19 = load %struct.encode_ud*, %struct.encode_ud** %18, align 8
  store %struct.encode_ud* %19, %struct.encode_ud** %4, align 8
  %20 = load %struct.encode_ud*, %struct.encode_ud** %4, align 8
  %21 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %20, i32 0, i32 8
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @luaL_checkstack(i32* %23, i32 12, i32* null)
  %25 = load %struct.encode_ud*, %struct.encode_ud** %4, align 8
  %26 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ENCODE_DEEPLEVEL, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 (i32*, i8*, ...) @luaL_error(i32* %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 %32, i32* %2, align 4
  br label %385

33:                                               ; preds = %1
  %34 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %35 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %195

38:                                               ; preds = %33
  %39 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %40 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.encode_ud*, %struct.encode_ud** %4, align 8
  %43 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %158

46:                                               ; preds = %38
  %47 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %48 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.encode_ud*, %struct.encode_ud** %4, align 8
  %51 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.encode_ud*, %struct.encode_ud** %4, align 8
  %54 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %57 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @lua_getfield(i32* %52, i32 %55, i64 %58)
  %60 = load i32*, i32** %5, align 8
  %61 = call i64 @lua_isnil(i32* %60, i32 -1)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %46
  %64 = load %struct.encode_ud*, %struct.encode_ud** %4, align 8
  %65 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32*, i32** %5, align 8
  %70 = load %struct.encode_ud*, %struct.encode_ud** %4, align 8
  %71 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @lua_replace(i32* %69, i32 %72)
  br label %74

74:                                               ; preds = %68, %63
  %75 = load %struct.encode_ud*, %struct.encode_ud** %4, align 8
  %76 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %75, i32 0, i32 3
  store i32 0, i32* %76, align 4
  %77 = load i32, i32* @SPROTO_CB_NOARRAY, align 4
  store i32 %77, i32* %2, align 4
  br label %385

78:                                               ; preds = %46
  %79 = load %struct.encode_ud*, %struct.encode_ud** %4, align 8
  %80 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i32*, i32** %5, align 8
  %85 = load %struct.encode_ud*, %struct.encode_ud** %4, align 8
  %86 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @lua_replace(i32* %84, i32 %87)
  br label %95

89:                                               ; preds = %78
  %90 = load i32*, i32** %5, align 8
  %91 = call i8* @lua_gettop(i32* %90)
  %92 = ptrtoint i8* %91 to i32
  %93 = load %struct.encode_ud*, %struct.encode_ud** %4, align 8
  %94 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %89, %83
  %96 = load i32*, i32** %5, align 8
  %97 = load %struct.encode_ud*, %struct.encode_ud** %4, align 8
  %98 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @luaL_getmetafield(i32* %96, i32 %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %124

102:                                              ; preds = %95
  %103 = load i32*, i32** %5, align 8
  %104 = load %struct.encode_ud*, %struct.encode_ud** %4, align 8
  %105 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @lua_pushvalue(i32* %103, i32 %106)
  %108 = load i32*, i32** %5, align 8
  %109 = call i32 @lua_call(i32* %108, i32 1, i32 3)
  %110 = load i32*, i32** %5, align 8
  %111 = call i8* @lua_gettop(i32* %110)
  %112 = ptrtoint i8* %111 to i32
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = sub nsw i32 %113, 2
  %115 = load %struct.encode_ud*, %struct.encode_ud** %4, align 8
  %116 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sub nsw i32 %117, 1
  %119 = load %struct.encode_ud*, %struct.encode_ud** %4, align 8
  %120 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.encode_ud*, %struct.encode_ud** %4, align 8
  %123 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %122, i32 0, i32 6
  store i32 %121, i32* %123, align 8
  br label %157

124:                                              ; preds = %95
  %125 = load i32*, i32** %5, align 8
  %126 = load %struct.encode_ud*, %struct.encode_ud** %4, align 8
  %127 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @lua_istable(i32* %125, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %144, label %131

131:                                              ; preds = %124
  %132 = load i32*, i32** %5, align 8
  %133 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %134 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %137 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %5, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = call i32 @lua_type(i32* %140, i32 -1)
  %142 = call i32 @lua_typename(i32* %139, i32 %141)
  %143 = call i32 (i32*, i8*, ...) @luaL_error(i32* %132, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i64 %135, i32 %138, i32 %142)
  store i32 %143, i32* %2, align 4
  br label %385

144:                                              ; preds = %124
  %145 = load i32*, i32** %5, align 8
  %146 = call i32 @lua_pushnil(i32* %145)
  %147 = load %struct.encode_ud*, %struct.encode_ud** %4, align 8
  %148 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %147, i32 0, i32 4
  store i32 0, i32* %148, align 8
  %149 = load %struct.encode_ud*, %struct.encode_ud** %4, align 8
  %150 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %149, i32 0, i32 5
  store i32 0, i32* %150, align 4
  %151 = load i32*, i32** %5, align 8
  %152 = call i8* @lua_gettop(i32* %151)
  %153 = ptrtoint i8* %152 to i32
  %154 = load %struct.encode_ud*, %struct.encode_ud** %4, align 8
  %155 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %154, i32 0, i32 6
  store i32 %153, i32* %155, align 8
  br label %156

156:                                              ; preds = %144
  br label %157

157:                                              ; preds = %156, %102
  br label %158

158:                                              ; preds = %157, %38
  %159 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %160 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp sge i64 %161, 0
  br i1 %162, label %163, label %185

163:                                              ; preds = %158
  %164 = load i32*, i32** %5, align 8
  %165 = load %struct.encode_ud*, %struct.encode_ud** %4, align 8
  %166 = call i32 @next_list(i32* %164, %struct.encode_ud* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %177, label %168

168:                                              ; preds = %163
  %169 = load i32*, i32** %5, align 8
  %170 = call i32 @lua_pushnil(i32* %169)
  %171 = load i32*, i32** %5, align 8
  %172 = load %struct.encode_ud*, %struct.encode_ud** %4, align 8
  %173 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @lua_replace(i32* %171, i32 %174)
  %176 = load i32, i32* @SPROTO_CB_NIL, align 4
  store i32 %176, i32* %2, align 4
  br label %385

177:                                              ; preds = %163
  %178 = load i32*, i32** %5, align 8
  %179 = call i32 @lua_insert(i32* %178, i32 -2)
  %180 = load i32*, i32** %5, align 8
  %181 = load %struct.encode_ud*, %struct.encode_ud** %4, align 8
  %182 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @lua_replace(i32* %180, i32 %183)
  br label %194

185:                                              ; preds = %158
  %186 = load i32*, i32** %5, align 8
  %187 = load %struct.encode_ud*, %struct.encode_ud** %4, align 8
  %188 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %191 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %190, i32 0, i32 7
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @lua_geti(i32* %186, i32 %189, i32 %192)
  br label %194

194:                                              ; preds = %185, %177
  br label %204

195:                                              ; preds = %33
  %196 = load i32*, i32** %5, align 8
  %197 = load %struct.encode_ud*, %struct.encode_ud** %4, align 8
  %198 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %201 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @lua_getfield(i32* %196, i32 %199, i64 %202)
  br label %204

204:                                              ; preds = %195, %194
  %205 = load i32*, i32** %5, align 8
  %206 = call i64 @lua_isnil(i32* %205, i32 -1)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %204
  %209 = load i32*, i32** %5, align 8
  %210 = call i32 @lua_pop(i32* %209, i32 1)
  %211 = load i32, i32* @SPROTO_CB_NIL, align 4
  store i32 %211, i32* %2, align 4
  br label %385

212:                                              ; preds = %204
  %213 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %214 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  switch i32 %215, label %379 [
    i32 130, label %216
    i32 131, label %271
    i32 129, label %298
    i32 128, label %337
  ]

216:                                              ; preds = %212
  %217 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %218 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %230

221:                                              ; preds = %216
  %222 = load i32*, i32** %5, align 8
  %223 = call i32 @lua_tonumber(i32* %222, i32 -1)
  store i32 %223, i32* %10, align 4
  %224 = load i32, i32* %10, align 4
  %225 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %226 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = mul nsw i32 %224, %227
  %229 = call i32 @round(i32 %228)
  store i32 %229, i32* %7, align 4
  br label %249

230:                                              ; preds = %216
  %231 = load i32*, i32** %5, align 8
  %232 = call i32 @lua_tointegerx(i32* %231, i32 -1, i32* %9)
  store i32 %232, i32* %7, align 4
  %233 = load i32, i32* %9, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %248, label %235

235:                                              ; preds = %230
  %236 = load i32*, i32** %5, align 8
  %237 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %238 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %241 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %240, i32 0, i32 7
  %242 = load i32, i32* %241, align 4
  %243 = load i32*, i32** %5, align 8
  %244 = load i32*, i32** %5, align 8
  %245 = call i32 @lua_type(i32* %244, i32 -1)
  %246 = call i32 @lua_typename(i32* %243, i32 %245)
  %247 = call i32 (i32*, i8*, ...) @luaL_error(i32* %236, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %239, i32 %242, i32 %246)
  store i32 %247, i32* %2, align 4
  br label %385

248:                                              ; preds = %230
  br label %249

249:                                              ; preds = %248, %221
  %250 = load i32*, i32** %5, align 8
  %251 = call i32 @lua_pop(i32* %250, i32 1)
  %252 = load i32, i32* %7, align 4
  %253 = ashr i32 %252, 31
  store i32 %253, i32* %8, align 4
  %254 = load i32, i32* %8, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %249
  %257 = load i32, i32* %8, align 4
  %258 = icmp eq i32 %257, -1
  br i1 %258, label %259, label %265

259:                                              ; preds = %256, %249
  %260 = load i32, i32* %7, align 4
  %261 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %262 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %261, i32 0, i32 5
  %263 = load i64, i64* %262, align 8
  %264 = inttoptr i64 %263 to i32*
  store i32 %260, i32* %264, align 4
  store i32 4, i32* %2, align 4
  br label %385

265:                                              ; preds = %256
  %266 = load i32, i32* %7, align 4
  %267 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %268 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %267, i32 0, i32 5
  %269 = load i64, i64* %268, align 8
  %270 = inttoptr i64 %269 to i32*
  store i32 %266, i32* %270, align 4
  store i32 8, i32* %2, align 4
  br label %385

271:                                              ; preds = %212
  %272 = load i32*, i32** %5, align 8
  %273 = call i32 @lua_toboolean(i32* %272, i32 -1)
  store i32 %273, i32* %11, align 4
  %274 = load i32*, i32** %5, align 8
  %275 = call i32 @lua_isboolean(i32* %274, i32 -1)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %290, label %277

277:                                              ; preds = %271
  %278 = load i32*, i32** %5, align 8
  %279 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %280 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %283 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %282, i32 0, i32 7
  %284 = load i32, i32* %283, align 4
  %285 = load i32*, i32** %5, align 8
  %286 = load i32*, i32** %5, align 8
  %287 = call i32 @lua_type(i32* %286, i32 -1)
  %288 = call i32 @lua_typename(i32* %285, i32 %287)
  %289 = call i32 (i32*, i8*, ...) @luaL_error(i32* %278, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i64 %281, i32 %284, i32 %288)
  store i32 %289, i32* %2, align 4
  br label %385

290:                                              ; preds = %271
  %291 = load i32, i32* %11, align 4
  %292 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %293 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %292, i32 0, i32 5
  %294 = load i64, i64* %293, align 8
  %295 = inttoptr i64 %294 to i32*
  store i32 %291, i32* %295, align 4
  %296 = load i32*, i32** %5, align 8
  %297 = call i32 @lua_pop(i32* %296, i32 1)
  store i32 4, i32* %2, align 4
  br label %385

298:                                              ; preds = %212
  store i64 0, i64* %12, align 8
  %299 = load i32*, i32** %5, align 8
  %300 = call i32 @lua_isstring(i32* %299, i32 -1)
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %315, label %302

302:                                              ; preds = %298
  %303 = load i32*, i32** %5, align 8
  %304 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %305 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %308 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %307, i32 0, i32 7
  %309 = load i32, i32* %308, align 4
  %310 = load i32*, i32** %5, align 8
  %311 = load i32*, i32** %5, align 8
  %312 = call i32 @lua_type(i32* %311, i32 -1)
  %313 = call i32 @lua_typename(i32* %310, i32 %312)
  %314 = call i32 (i32*, i8*, ...) @luaL_error(i32* %303, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i64 %306, i32 %309, i32 %313)
  store i32 %314, i32* %2, align 4
  br label %385

315:                                              ; preds = %298
  %316 = load i32*, i32** %5, align 8
  %317 = call i8* @lua_tolstring(i32* %316, i32 -1, i64* %12)
  store i8* %317, i8** %13, align 8
  br label %318

318:                                              ; preds = %315
  %319 = load i64, i64* %12, align 8
  %320 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %321 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %320, i32 0, i32 4
  %322 = load i64, i64* %321, align 8
  %323 = icmp ugt i64 %319, %322
  br i1 %323, label %324, label %326

324:                                              ; preds = %318
  %325 = load i32, i32* @SPROTO_CB_ERROR, align 4
  store i32 %325, i32* %2, align 4
  br label %385

326:                                              ; preds = %318
  %327 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %328 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %327, i32 0, i32 5
  %329 = load i64, i64* %328, align 8
  %330 = load i8*, i8** %13, align 8
  %331 = load i64, i64* %12, align 8
  %332 = call i32 @memcpy(i64 %329, i8* %330, i64 %331)
  %333 = load i32*, i32** %5, align 8
  %334 = call i32 @lua_pop(i32* %333, i32 1)
  %335 = load i64, i64* %12, align 8
  %336 = trunc i64 %335 to i32
  store i32 %336, i32* %2, align 4
  br label %385

337:                                              ; preds = %212
  %338 = load i32*, i32** %5, align 8
  %339 = call i8* @lua_gettop(i32* %338)
  %340 = ptrtoint i8* %339 to i32
  store i32 %340, i32* %16, align 4
  %341 = load i32*, i32** %5, align 8
  %342 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %14, i32 0, i32 8
  store i32* %341, i32** %342, align 8
  %343 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %344 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %343, i32 0, i32 6
  %345 = load i32, i32* %344, align 8
  %346 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %14, i32 0, i32 7
  store i32 %345, i32* %346, align 4
  %347 = load i32, i32* %16, align 4
  %348 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %14, i32 0, i32 2
  store i32 %347, i32* %348, align 8
  %349 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %14, i32 0, i32 1
  store i64 0, i64* %349, align 8
  %350 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %14, i32 0, i32 3
  store i32 0, i32* %350, align 4
  %351 = load %struct.encode_ud*, %struct.encode_ud** %4, align 8
  %352 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = add nsw i64 %353, 1
  %355 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %14, i32 0, i32 0
  store i64 %354, i64* %355, align 8
  %356 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %14, i32 0, i32 4
  store i32 0, i32* %356, align 8
  %357 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %14, i32 0, i32 5
  store i32 0, i32* %357, align 4
  %358 = getelementptr inbounds %struct.encode_ud, %struct.encode_ud* %14, i32 0, i32 6
  store i32 0, i32* %358, align 8
  %359 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %360 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %359, i32 0, i32 6
  %361 = load i32, i32* %360, align 8
  %362 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %363 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %362, i32 0, i32 5
  %364 = load i64, i64* %363, align 8
  %365 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %366 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %365, i32 0, i32 4
  %367 = load i64, i64* %366, align 8
  %368 = call i32 @sproto_encode(i32 %361, i64 %364, i64 %367, i32 (%struct.sproto_arg*)* @encode, %struct.encode_ud* %14)
  store i32 %368, i32* %15, align 4
  %369 = load i32*, i32** %5, align 8
  %370 = load i32, i32* %16, align 4
  %371 = sub nsw i32 %370, 1
  %372 = call i32 @lua_settop(i32* %369, i32 %371)
  %373 = load i32, i32* %15, align 4
  %374 = icmp slt i32 %373, 0
  br i1 %374, label %375, label %377

375:                                              ; preds = %337
  %376 = load i32, i32* @SPROTO_CB_ERROR, align 4
  store i32 %376, i32* %2, align 4
  br label %385

377:                                              ; preds = %337
  %378 = load i32, i32* %15, align 4
  store i32 %378, i32* %2, align 4
  br label %385

379:                                              ; preds = %212
  %380 = load i32*, i32** %5, align 8
  %381 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %382 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 8
  %384 = call i32 (i32*, i8*, ...) @luaL_error(i32* %380, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %383)
  store i32 %384, i32* %2, align 4
  br label %385

385:                                              ; preds = %379, %377, %375, %326, %324, %302, %290, %277, %265, %259, %235, %208, %168, %131, %74, %30
  %386 = load i32, i32* %2, align 4
  ret i32 %386
}

declare dso_local i32 @luaL_checkstack(i32*, i32, i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32 @lua_getfield(i32*, i32, i64) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i32 @lua_replace(i32*, i32) #1

declare dso_local i8* @lua_gettop(i32*) #1

declare dso_local i64 @luaL_getmetafield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i32 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_typename(i32*, i32) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @next_list(i32*, %struct.encode_ud*) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i32 @lua_geti(i32*, i32, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_tonumber(i32*, i32) #1

declare dso_local i32 @round(i32) #1

declare dso_local i32 @lua_tointegerx(i32*, i32, i32*) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @lua_isboolean(i32*, i32) #1

declare dso_local i32 @lua_isstring(i32*, i32) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @sproto_encode(i32, i64, i64, i32 (%struct.sproto_arg*)*, %struct.encode_ud*) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
