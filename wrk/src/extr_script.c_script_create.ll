; ModuleID = '/home/carl/AnghaBench/wrk/src/extr_script.c_script_create.c'
source_filename = "/home/carl/AnghaBench/wrk/src/extr_script.c_script_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_parser_url = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [20 x i8] c"wrk = require \22wrk\22\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"wrk.addr\00", align 1
@addrlib = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"wrk.stats\00", align 1
@statslib = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"wrk.thread\00", align 1
@threadlib = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@UF_PATH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"lookup\00", align 1
@LUA_TFUNCTION = common dso_local global i32 0, align 4
@script_wrk_lookup = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@script_wrk_connect = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@LUA_TSTRING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"wrk\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"scheme\00", align 1
@UF_SCHEMA = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@UF_HOST = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@UF_PORT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"headers\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @script_create(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.http_parser_url, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [4 x %struct.TYPE_5__], align 16
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %14 = call i32* (...) @luaL_newstate()
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @luaL_openlibs(i32* %15)
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @luaL_dostring(i32* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @luaL_newmetatable(i32* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* @addrlib, align 4
  %23 = call i32 @luaL_register(i32* %21, i32* null, i32 %22)
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @luaL_newmetatable(i32* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @statslib, align 4
  %28 = call i32 @luaL_register(i32* %26, i32* null, i32 %27)
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @luaL_newmetatable(i32* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @threadlib, align 4
  %33 = call i32 @luaL_register(i32* %31, i32* null, i32 %32)
  %34 = bitcast %struct.http_parser_url* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %34, i8 0, i64 16, i1 false)
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @script_parse_url(i8* %35, %struct.http_parser_url* %8)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  %37 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %8, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @UF_PATH, align 4
  %40 = shl i32 1, %39
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %3
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %8, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* @UF_PATH, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i8, i8* %44, i64 %51
  store i8* %52, i8** %9, align 8
  br label %53

53:                                               ; preds = %43, %3
  %54 = getelementptr inbounds [4 x %struct.TYPE_5__], [4 x %struct.TYPE_5__]* %10, i64 0, i64 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %57 = load i32, i32* @LUA_TFUNCTION, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  store i8* %59, i8** %56, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %61 = load i8*, i8** @script_wrk_lookup, align 8
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %60, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %66 = load i32, i32* @LUA_TFUNCTION, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  store i8* %68, i8** %65, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %70 = load i8*, i8** @script_wrk_connect, align 8
  %71 = ptrtoint i8* %70 to i32
  store i32 %71, i32* %69, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %75 = load i32, i32* @LUA_TSTRING, align 4
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  store i8* %77, i8** %74, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %79 = load i8*, i8** %9, align 8
  %80 = ptrtoint i8* %79 to i32
  store i32 %80, i32* %78, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 1
  %82 = bitcast %struct.TYPE_5__* %81 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %82, i8 0, i64 24, i1 false)
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  store i32 0, i32* %83, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @lua_getglobal(i32* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %86 = load i32*, i32** %7, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = load i32, i32* @UF_SCHEMA, align 4
  %90 = call i32 @push_url_part(i32* %87, i8* %88, %struct.http_parser_url* %8, i32 %89)
  %91 = call i32 @set_field(i32* %86, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %90)
  %92 = load i32*, i32** %7, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = load i32, i32* @UF_HOST, align 4
  %96 = call i32 @push_url_part(i32* %93, i8* %94, %struct.http_parser_url* %8, i32 %95)
  %97 = call i32 @set_field(i32* %92, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %96)
  %98 = load i32*, i32** %7, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = load i32, i32* @UF_PORT, align 4
  %102 = call i32 @push_url_part(i32* %99, i8* %100, %struct.http_parser_url* %8, i32 %101)
  %103 = call i32 @set_field(i32* %98, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %102)
  %104 = load i32*, i32** %7, align 8
  %105 = getelementptr inbounds [4 x %struct.TYPE_5__], [4 x %struct.TYPE_5__]* %10, i64 0, i64 0
  %106 = call i32 @set_fields(i32* %104, i32 4, %struct.TYPE_5__* %105)
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @lua_getfield(i32* %107, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %109 = load i8**, i8*** %6, align 8
  store i8** %109, i8*** %11, align 8
  br label %110

110:                                              ; preds = %145, %53
  %111 = load i8**, i8*** %11, align 8
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %148

114:                                              ; preds = %110
  %115 = load i8**, i8*** %11, align 8
  %116 = load i8*, i8** %115, align 8
  %117 = call i8* @strchr(i8* %116, i8 signext 58)
  store i8* %117, i8** %12, align 8
  %118 = load i8*, i8** %12, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %144

120:                                              ; preds = %114
  %121 = load i8*, i8** %12, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 32
  br i1 %125, label %126, label %144

126:                                              ; preds = %120
  %127 = load i32*, i32** %7, align 8
  %128 = load i8**, i8*** %11, align 8
  %129 = load i8*, i8** %128, align 8
  %130 = load i8*, i8** %12, align 8
  %131 = load i8**, i8*** %11, align 8
  %132 = load i8*, i8** %131, align 8
  %133 = ptrtoint i8* %130 to i64
  %134 = ptrtoint i8* %132 to i64
  %135 = sub i64 %133, %134
  %136 = trunc i64 %135 to i32
  %137 = call i32 @lua_pushlstring(i32* %127, i8* %129, i32 %136)
  %138 = load i32*, i32** %7, align 8
  %139 = load i8*, i8** %12, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 2
  %141 = call i32 @lua_pushstring(i32* %138, i8* %140)
  %142 = load i32*, i32** %7, align 8
  %143 = call i32 @lua_settable(i32* %142, i32 5)
  br label %144

144:                                              ; preds = %126, %120, %114
  br label %145

145:                                              ; preds = %144
  %146 = load i8**, i8*** %11, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i32 1
  store i8** %147, i8*** %11, align 8
  br label %110

148:                                              ; preds = %110
  %149 = load i32*, i32** %7, align 8
  %150 = call i32 @lua_pop(i32* %149, i32 5)
  %151 = load i8*, i8** %4, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %165

153:                                              ; preds = %148
  %154 = load i32*, i32** %7, align 8
  %155 = load i8*, i8** %4, align 8
  %156 = call i64 @luaL_dofile(i32* %154, i8* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %153
  %159 = load i32*, i32** %7, align 8
  %160 = call i8* @lua_tostring(i32* %159, i32 -1)
  store i8* %160, i8** %13, align 8
  %161 = load i32, i32* @stderr, align 4
  %162 = load i8*, i8** %4, align 8
  %163 = load i8*, i8** %13, align 8
  %164 = call i32 @fprintf(i32 %161, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* %162, i8* %163)
  br label %165

165:                                              ; preds = %158, %153, %148
  %166 = load i32*, i32** %7, align 8
  ret i32* %166
}

declare dso_local i32* @luaL_newstate(...) #1

declare dso_local i32 @luaL_openlibs(i32*) #1

declare dso_local i32 @luaL_dostring(i32*, i8*) #1

declare dso_local i32 @luaL_newmetatable(i32*, i8*) #1

declare dso_local i32 @luaL_register(i32*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @script_parse_url(i8*, %struct.http_parser_url*) #1

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i32 @set_field(i32*, i32, i8*, i32) #1

declare dso_local i32 @push_url_part(i32*, i8*, %struct.http_parser_url*, i32) #1

declare dso_local i32 @set_fields(i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i64 @luaL_dofile(i32*, i8*) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
