; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_req_body.c_ngx_http_lua_ngx_req_init_body.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_req_body.c_ngx_http_lua_ngx_req_init_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, %struct.TYPE_17__, %struct.TYPE_20__*, i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_14__*, i32*, %struct.TYPE_18__* }
%struct.TYPE_14__ = type { i32*, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_21__ = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"expecting 0 or 1 argument but seen %d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"no request found\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"request body already discarded asynchronously\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"request body not read yet\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"bad size argument: %d\00", align 1
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_INVALID_FILE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"cleaning temp file %.*s\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"temp file cleaned: %.*s\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_req_init_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_req_init_body(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @lua_gettop(i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 (i32*, i8*, ...) @luaL_error(i32* %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 %21, i32* %2, align 4
  br label %181

22:                                               ; preds = %15, %1
  %23 = load i32*, i32** %3, align 8
  %24 = call %struct.TYPE_19__* @ngx_http_lua_get_req(i32* %23)
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %4, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %26 = icmp eq %struct.TYPE_19__* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 (i32*, i8*, ...) @luaL_error(i32* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %29, i32* %2, align 4
  br label %181

30:                                               ; preds = %22
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %33 = call i32 @ngx_http_lua_check_fake_request(i32* %31, %struct.TYPE_19__* %32)
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 (i32*, i8*, ...) @luaL_error(i32* %39, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  store i32 %40, i32* %2, align 4
  br label %181

41:                                               ; preds = %30
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %43, align 8
  %45 = icmp eq %struct.TYPE_20__* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 (i32*, i8*, ...) @luaL_error(i32* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 %48, i32* %2, align 4
  br label %181

49:                                               ; preds = %41
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load i32*, i32** %3, align 8
  %54 = call i64 @luaL_checkinteger(i32* %53, i32 1)
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i32*, i32** %3, align 8
  %59 = load i64, i64* %8, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 (i32*, i8*, ...) @luaL_error(i32* %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  store i32 %61, i32* %2, align 4
  br label %181

62:                                               ; preds = %52
  %63 = load i64, i64* %8, align 8
  store i64 %63, i64* %7, align 8
  br label %71

64:                                               ; preds = %49
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %66 = load i32, i32* @ngx_http_core_module, align 4
  %67 = call %struct.TYPE_21__* @ngx_http_get_module_loc_conf(%struct.TYPE_19__* %65, i32 %66)
  store %struct.TYPE_21__* %67, %struct.TYPE_21__** %10, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %7, align 8
  br label %71

71:                                               ; preds = %64, %62
  %72 = load i64, i64* %7, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %71
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %79, align 8
  store %struct.TYPE_20__* %80, %struct.TYPE_20__** %6, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %82, align 8
  store %struct.TYPE_18__* %83, %struct.TYPE_18__** %9, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %85 = icmp ne %struct.TYPE_18__* %84, null
  br i1 %85, label %86, label %135

86:                                               ; preds = %77
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @NGX_INVALID_FILE, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %132

93:                                               ; preds = %86
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @dd(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %99, i32 %104)
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @ngx_http_lua_pool_cleanup_file(i32 %108, i64 %112)
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %115 = call i32 @ngx_memzero(%struct.TYPE_18__* %114, i32 24)
  %116 = load i64, i64* @NGX_INVALID_FILE, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  store i64 %116, i64* %119, align 8
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @dd(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %125, i32 %130)
  br label %132

132:                                              ; preds = %93, %86
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 2
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %134, align 8
  br label %135

135:                                              ; preds = %132, %77
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 1
  store i32 1, i32* %137, align 4
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  store i64 0, i64* %140, align 8
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i64, i64* %7, align 8
  %145 = call i32* @ngx_create_temp_buf(i32 %143, i64 %144)
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 1
  store i32* %145, i32** %147, align 8
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = icmp eq i32* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %135
  %153 = load i32*, i32** %3, align 8
  %154 = call i32 (i32*, i8*, ...) @luaL_error(i32* %153, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store i32 %154, i32* %2, align 4
  br label %181

155:                                              ; preds = %135
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call %struct.TYPE_14__* @ngx_alloc_chain_link(i32 %158)
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 0
  store %struct.TYPE_14__* %159, %struct.TYPE_14__** %161, align 8
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %163, align 8
  %165 = icmp eq %struct.TYPE_14__* %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %155
  %167 = load i32*, i32** %3, align 8
  %168 = call i32 (i32*, i8*, ...) @luaL_error(i32* %167, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store i32 %168, i32* %2, align 4
  br label %181

169:                                              ; preds = %155
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 1
  store i32* %172, i32** %176, align 8
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  store i32* null, i32** %180, align 8
  store i32 0, i32* %2, align 4
  br label %181

181:                                              ; preds = %169, %166, %152, %57, %46, %38, %27, %18
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_19__* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @ngx_http_lua_check_fake_request(i32*, %struct.TYPE_19__*) #1

declare dso_local i64 @luaL_checkinteger(i32*, i32) #1

declare dso_local %struct.TYPE_21__* @ngx_http_get_module_loc_conf(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @dd(i8*, i32, i32) #1

declare dso_local i32 @ngx_http_lua_pool_cleanup_file(i32, i64) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_18__*, i32) #1

declare dso_local i32* @ngx_create_temp_buf(i32, i64) #1

declare dso_local %struct.TYPE_14__* @ngx_alloc_chain_link(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
