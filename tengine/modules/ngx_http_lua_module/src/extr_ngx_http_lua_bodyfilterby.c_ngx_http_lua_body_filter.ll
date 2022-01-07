; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_bodyfilterby.c_ngx_http_lua_body_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_bodyfilterby.c_ngx_http_lua_body_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_32__ = type { %struct.TYPE_26__*, %struct.TYPE_32__* }
%struct.TYPE_26__ = type { i32, i32, i32, i32 }
%struct.TYPE_29__ = type { i64 (%struct.TYPE_27__*, %struct.TYPE_32__*)* }
%struct.TYPE_30__ = type { i32, i32, i32, i32*, i64 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_30__* }
%struct.TYPE_28__ = type { %struct.TYPE_32__* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"lua body filter for user lua code, uri \22%V\22\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"no body filter handler found\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ctx = %p\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"mark the buf as consumed: %d\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_lua_request_cleanup_handler = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_BODY_FILTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"calling body filter handler\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"calling body filter handler returned %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_27__*, %struct.TYPE_32__*)* @ngx_http_lua_body_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_lua_body_filter(%struct.TYPE_27__* %0, %struct.TYPE_32__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_31__*, align 8
  %11 = alloca %struct.TYPE_32__*, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %5, align 8
  %13 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %14 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 1
  %21 = call i32 @ngx_log_debug1(i32 %13, i32 %18, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32* %20)
  %22 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %23 = icmp eq %struct.TYPE_32__* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %26 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %27 = call i64 @ngx_http_next_body_filter(%struct.TYPE_27__* %25, %struct.TYPE_32__* %26)
  store i64 %27, i64* %3, align 8
  br label %182

28:                                               ; preds = %2
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %30 = load i32, i32* @ngx_http_lua_module, align 4
  %31 = call %struct.TYPE_29__* @ngx_http_get_module_loc_conf(%struct.TYPE_27__* %29, i32 %30)
  store %struct.TYPE_29__* %31, %struct.TYPE_29__** %6, align 8
  %32 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %32, i32 0, i32 0
  %34 = load i64 (%struct.TYPE_27__*, %struct.TYPE_32__*)*, i64 (%struct.TYPE_27__*, %struct.TYPE_32__*)** %33, align 8
  %35 = icmp eq i64 (%struct.TYPE_27__*, %struct.TYPE_32__*)* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %39 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %40 = call i64 @ngx_http_next_body_filter(%struct.TYPE_27__* %38, %struct.TYPE_32__* %39)
  store i64 %40, i64* %3, align 8
  br label %182

41:                                               ; preds = %28
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %43 = load i32, i32* @ngx_http_lua_module, align 4
  %44 = call %struct.TYPE_30__* @ngx_http_get_module_ctx(%struct.TYPE_27__* %42, i32 %43)
  store %struct.TYPE_30__* %44, %struct.TYPE_30__** %7, align 8
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %46 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_30__* %45)
  %47 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %48 = icmp eq %struct.TYPE_30__* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %51 = call %struct.TYPE_30__* @ngx_http_lua_create_ctx(%struct.TYPE_27__* %50)
  store %struct.TYPE_30__* %51, %struct.TYPE_30__** %7, align 8
  %52 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %53 = icmp eq %struct.TYPE_30__* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i64, i64* @NGX_ERROR, align 8
  store i64 %55, i64* %3, align 8
  br label %182

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %41
  %58 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %97

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %91, %62
  %64 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %65 = icmp ne %struct.TYPE_32__* %64, null
  br i1 %65, label %66, label %95

66:                                               ; preds = %63
  %67 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %68, align 8
  %70 = call i64 @ngx_buf_size(%struct.TYPE_26__* %69)
  %71 = trunc i64 %70 to i32
  %72 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i32 0, i32 3
  store i32 %77, i32* %81, align 4
  %82 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 1
  store i32 %86, i32* %90, align 4
  br label %91

91:                                               ; preds = %66
  %92 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_32__*, %struct.TYPE_32__** %93, align 8
  store %struct.TYPE_32__* %94, %struct.TYPE_32__** %5, align 8
  br label %63

95:                                               ; preds = %63
  %96 = load i64, i64* @NGX_OK, align 8
  store i64 %96, i64* %3, align 8
  br label %182

97:                                               ; preds = %57
  %98 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %120

102:                                              ; preds = %97
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %104 = call %struct.TYPE_31__* @ngx_http_cleanup_add(%struct.TYPE_27__* %103, i32 0)
  store %struct.TYPE_31__* %104, %struct.TYPE_31__** %10, align 8
  %105 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %106 = icmp eq %struct.TYPE_31__* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i64, i64* @NGX_ERROR, align 8
  store i64 %108, i64* %3, align 8
  br label %182

109:                                              ; preds = %102
  %110 = load i32, i32* @ngx_http_lua_request_cleanup_handler, align 4
  %111 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %114 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %114, i32 0, i32 1
  store %struct.TYPE_30__* %113, %struct.TYPE_30__** %115, align 8
  %116 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %118, i32 0, i32 3
  store i32* %117, i32** %119, align 8
  br label %120

120:                                              ; preds = %109, %97
  %121 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_BODY_FILTER, align 4
  %125 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i32 0, i32 0
  %130 = load i64 (%struct.TYPE_27__*, %struct.TYPE_32__*)*, i64 (%struct.TYPE_27__*, %struct.TYPE_32__*)** %129, align 8
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %132 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %133 = call i64 %130(%struct.TYPE_27__* %131, %struct.TYPE_32__* %132)
  store i64 %133, i64* %8, align 8
  %134 = load i64, i64* %8, align 8
  %135 = trunc i64 %134 to i32
  %136 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load i64, i64* %8, align 8
  %141 = load i64, i64* @NGX_OK, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %120
  %144 = load i64, i64* @NGX_ERROR, align 8
  store i64 %144, i64* %3, align 8
  br label %182

145:                                              ; preds = %120
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %147 = load i32, i32* @ngx_http_lua_module, align 4
  %148 = call %struct.TYPE_28__* @ngx_http_get_module_main_conf(%struct.TYPE_27__* %146, i32 %147)
  store %struct.TYPE_28__* %148, %struct.TYPE_28__** %12, align 8
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_32__*, %struct.TYPE_32__** %150, align 8
  store %struct.TYPE_32__* %151, %struct.TYPE_32__** %11, align 8
  %152 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %153 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %154 = icmp eq %struct.TYPE_32__* %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %145
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %157 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %158 = call i64 @ngx_http_next_body_filter(%struct.TYPE_27__* %156, %struct.TYPE_32__* %157)
  store i64 %158, i64* %3, align 8
  br label %182

159:                                              ; preds = %145
  %160 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %161 = icmp eq %struct.TYPE_32__* %160, null
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = load i64, i64* @NGX_OK, align 8
  store i64 %163, i64* %3, align 8
  br label %182

164:                                              ; preds = %159
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %166 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %167 = call i64 @ngx_http_next_body_filter(%struct.TYPE_27__* %165, %struct.TYPE_32__* %166)
  store i64 %167, i64* %8, align 8
  %168 = load i64, i64* %8, align 8
  %169 = load i64, i64* @NGX_ERROR, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %164
  %172 = load i64, i64* @NGX_ERROR, align 8
  store i64 %172, i64* %3, align 8
  br label %182

173:                                              ; preds = %164
  %174 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %174, i32 0, i32 1
  %176 = ptrtoint i32* %175 to i32
  %177 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %177, i32 0, i32 0
  %179 = ptrtoint i32* %178 to i32
  %180 = call i32 (i32, i32, ...) @ngx_chain_update_chains(i32 %176, i32 %179, %struct.TYPE_32__** %11, i32 ptrtoint (i32* @ngx_http_lua_module to i32))
  %181 = load i64, i64* %8, align 8
  store i64 %181, i64* %3, align 8
  br label %182

182:                                              ; preds = %173, %171, %162, %155, %143, %107, %95, %54, %36, %24
  %183 = load i64, i64* %3, align 8
  ret i64 %183
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32*) #1

declare dso_local i64 @ngx_http_next_body_filter(%struct.TYPE_27__*, %struct.TYPE_32__*) #1

declare dso_local %struct.TYPE_29__* @ngx_http_get_module_loc_conf(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local %struct.TYPE_30__* @ngx_http_get_module_ctx(%struct.TYPE_27__*, i32) #1

declare dso_local %struct.TYPE_30__* @ngx_http_lua_create_ctx(%struct.TYPE_27__*) #1

declare dso_local i64 @ngx_buf_size(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_31__* @ngx_http_cleanup_add(%struct.TYPE_27__*, i32) #1

declare dso_local %struct.TYPE_28__* @ngx_http_get_module_main_conf(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @ngx_chain_update_chains(i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
