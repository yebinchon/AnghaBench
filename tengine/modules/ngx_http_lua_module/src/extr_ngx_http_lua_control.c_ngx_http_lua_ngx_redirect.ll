; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_control.c_ngx_http_lua_ngx_redirect.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_control.c_ngx_http_lua_ngx_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_18__, i32, i64 }
%struct.TYPE_18__ = type { i64, i8* }
%struct.TYPE_16__ = type { %struct.TYPE_14__, %struct.TYPE_13__*, i32, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_15__*, i64, i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"expecting one or two arguments\00", align 1
@NGX_HTTP_MOVED_TEMPORARILY = common dso_local global i64 0, align 8
@NGX_HTTP_MOVED_PERMANENTLY = common dso_local global i64 0, align 8
@NGX_HTTP_SEE_OTHER = common dso_local global i64 0, align 8
@NGX_HTTP_PERMANENT_REDIRECT = common dso_local global i64 0, align 8
@NGX_HTTP_TEMPORARY_REDIRECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [154 x i8] c"only ngx.HTTP_MOVED_TEMPORARILY, ngx.HTTP_MOVED_PERMANENTLY, ngx.HTTP_PERMANENT_REDIRECT, ngx.HTTP_SEE_OTHER, and ngx.HTTP_TEMPORARY_REDIRECT are allowed\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"no request object found\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"no request ctx found\00", align 1
@NGX_HTTP_LUA_CONTEXT_REWRITE = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_ACCESS = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_CONTENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"attempt to call ngx.redirect after sending out the headers\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@ngx_http_lua_location_hash = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"lua redirect to \22%V\22 with code %i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_redirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_redirect(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @lua_gettop(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 2
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @luaL_error(i32* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %2, align 4
  br label %174

22:                                               ; preds = %16, %1
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @luaL_checklstring(i32* %23, i32 1, i64* %9)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %7, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %54

28:                                               ; preds = %22
  %29 = load i32*, i32** %3, align 8
  %30 = call i64 @luaL_checknumber(i32* %29, i32 2)
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @NGX_HTTP_MOVED_TEMPORARILY, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %28
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @NGX_HTTP_MOVED_PERMANENTLY, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @NGX_HTTP_SEE_OTHER, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @NGX_HTTP_PERMANENT_REDIRECT, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @NGX_HTTP_TEMPORARY_REDIRECT, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @luaL_error(i32* %51, i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.1, i64 0, i64 0))
  store i32 %52, i32* %2, align 4
  br label %174

53:                                               ; preds = %46, %42, %38, %34, %28
  br label %56

54:                                               ; preds = %22
  %55 = load i64, i64* @NGX_HTTP_MOVED_TEMPORARILY, align 8
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %54, %53
  %57 = load i32*, i32** %3, align 8
  %58 = call %struct.TYPE_16__* @ngx_http_lua_get_req(i32* %57)
  store %struct.TYPE_16__* %58, %struct.TYPE_16__** %11, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %60 = icmp eq %struct.TYPE_16__* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @luaL_error(i32* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 %63, i32* %2, align 4
  br label %174

64:                                               ; preds = %56
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %66 = load i32, i32* @ngx_http_lua_module, align 4
  %67 = call %struct.TYPE_17__* @ngx_http_get_module_ctx(%struct.TYPE_16__* %65, i32 %66)
  store %struct.TYPE_17__* %67, %struct.TYPE_17__** %4, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %69 = icmp eq %struct.TYPE_17__* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @luaL_error(i32* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 %72, i32* %2, align 4
  br label %174

73:                                               ; preds = %64
  %74 = load i32*, i32** %3, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %76 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_REWRITE, align 4
  %77 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_ACCESS, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_CONTENT, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @ngx_http_lua_check_context(i32* %74, %struct.TYPE_17__* %75, i32 %80)
  %82 = load i32*, i32** %3, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %84 = call i32 @ngx_http_lua_check_if_abortable(i32* %82, %struct.TYPE_17__* %83)
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %73
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89, %73
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 @luaL_error(i32* %95, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  store i32 %96, i32* %2, align 4
  br label %174

97:                                               ; preds = %89
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i64, i64* %9, align 8
  %102 = call i8* @ngx_palloc(i32 %100, i64 %101)
  store i8* %102, i8** %8, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = icmp eq i8* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %97
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @luaL_error(i32* %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32 %107, i32* %2, align 4
  br label %174

108:                                              ; preds = %97
  %109 = load i8*, i8** %8, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = load i64, i64* %9, align 8
  %112 = call i32 @ngx_memcpy(i8* %109, i8* %110, i64 %111)
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 2
  %116 = call %struct.TYPE_15__* @ngx_list_push(i32* %115)
  store %struct.TYPE_15__* %116, %struct.TYPE_15__** %10, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %118 = icmp eq %struct.TYPE_15__* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %108
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 @luaL_error(i32* %120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32 %121, i32* %2, align 4
  br label %174

122:                                              ; preds = %108
  %123 = load i64, i64* @ngx_http_lua_location_hash, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 2
  store i64 %123, i64* %125, align 8
  %126 = load i64, i64* %9, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  store i64 %126, i64* %129, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 1
  store i8* %130, i8** %133, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = call i32 @ngx_str_set(i32* %135, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %137 = load i64, i64* %5, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  store i64 %137, i64* %140, align 8
  %141 = load i64, i64* %5, align 8
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 1
  store i64 %141, i64* %143, align 8
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  store i32 1, i32* %145, align 8
  %146 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @ngx_log_debug2(i32 %146, i32 %151, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_18__* %153, i64 %156)
  %158 = load i64, i64* %9, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %122
  %161 = load i8*, i8** %8, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 47
  br i1 %165, label %166, label %171

166:                                              ; preds = %160
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  store %struct.TYPE_15__* %167, %struct.TYPE_15__** %170, align 8
  br label %171

171:                                              ; preds = %166, %160, %122
  %172 = load i32*, i32** %3, align 8
  %173 = call i32 @lua_yield(i32* %172, i32 0)
  store i32 %173, i32* %2, align 4
  br label %174

174:                                              ; preds = %171, %119, %105, %94, %70, %61, %50, %19
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i64 @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i64 @luaL_checknumber(i32*, i32) #1

declare dso_local %struct.TYPE_16__* @ngx_http_lua_get_req(i32*) #1

declare dso_local %struct.TYPE_17__* @ngx_http_get_module_ctx(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ngx_http_lua_check_context(i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @ngx_http_lua_check_if_abortable(i32*, %struct.TYPE_17__*) #1

declare dso_local i8* @ngx_palloc(i32, i64) #1

declare dso_local i32 @ngx_memcpy(i8*, i8*, i64) #1

declare dso_local %struct.TYPE_15__* @ngx_list_push(i32*) #1

declare dso_local i32 @ngx_str_set(i32*, i8*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, %struct.TYPE_18__*, i64) #1

declare dso_local i32 @lua_yield(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
