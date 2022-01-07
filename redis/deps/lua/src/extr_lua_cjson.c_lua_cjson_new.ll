; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_lua_cjson_new.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_lua_cjson_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 (i32*)* }

@.str = private unnamed_addr constant [7 x i8] c"encode\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"decode\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"encode_sparse_array\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"encode_max_depth\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"decode_max_depth\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"encode_number_precision\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"encode_keep_buffer\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"encode_invalid_numbers\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"decode_invalid_numbers\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@__const.lua_cjson_new.reg = private unnamed_addr constant [11 x %struct.TYPE_3__] [%struct.TYPE_3__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 (i32*)* @json_encode }, %struct.TYPE_3__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 (i32*)* @json_decode }, %struct.TYPE_3__ { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 (i32*)* @json_cfg_encode_sparse_array }, %struct.TYPE_3__ { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 (i32*)* @json_cfg_encode_max_depth }, %struct.TYPE_3__ { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 (i32*)* @json_cfg_decode_max_depth }, %struct.TYPE_3__ { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i32 (i32*)* @json_cfg_encode_number_precision }, %struct.TYPE_3__ { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i32 (i32*)* @json_cfg_encode_keep_buffer }, %struct.TYPE_3__ { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 (i32*)* @json_cfg_encode_invalid_numbers }, %struct.TYPE_3__ { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i32 (i32*)* @json_cfg_decode_invalid_numbers }, %struct.TYPE_3__ { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 (i32*)* @lua_cjson_new }, %struct.TYPE_3__ zeroinitializer], align 16
@.str.10 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@CJSON_MODNAME = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"_NAME\00", align 1
@CJSON_VERSION = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"_VERSION\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lua_cjson_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_cjson_new(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [11 x %struct.TYPE_3__], align 16
  store i32* %0, i32** %2, align 8
  %4 = bitcast [11 x %struct.TYPE_3__]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([11 x %struct.TYPE_3__]* @__const.lua_cjson_new.reg to i8*), i64 176, i1 false)
  %5 = call i32 (...) @fpconv_init()
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @lua_newtable(i32* %6)
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @json_create_config(i32* %8)
  %10 = load i32*, i32** %2, align 8
  %11 = getelementptr inbounds [11 x %struct.TYPE_3__], [11 x %struct.TYPE_3__]* %3, i64 0, i64 0
  %12 = call i32 @luaL_setfuncs(i32* %10, %struct.TYPE_3__* %11, i32 1)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @lua_pushlightuserdata(i32* %13, i32* null)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @lua_setfield(i32* %15, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @CJSON_MODNAME, align 4
  %19 = call i32 @lua_pushliteral(i32* %17, i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @lua_setfield(i32* %20, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* @CJSON_VERSION, align 4
  %24 = call i32 @lua_pushliteral(i32* %22, i32 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @lua_setfield(i32* %25, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  ret i32 1
}

declare dso_local i32 @json_encode(i32*) #1

declare dso_local i32 @json_decode(i32*) #1

declare dso_local i32 @json_cfg_encode_sparse_array(i32*) #1

declare dso_local i32 @json_cfg_encode_max_depth(i32*) #1

declare dso_local i32 @json_cfg_decode_max_depth(i32*) #1

declare dso_local i32 @json_cfg_encode_number_precision(i32*) #1

declare dso_local i32 @json_cfg_encode_keep_buffer(i32*) #1

declare dso_local i32 @json_cfg_encode_invalid_numbers(i32*) #1

declare dso_local i32 @json_cfg_decode_invalid_numbers(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fpconv_init(...) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @json_create_config(i32*) #1

declare dso_local i32 @luaL_setfuncs(i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32*) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushliteral(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
