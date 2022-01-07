; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_req_body.c_ngx_http_lua_ngx_req_append_body.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_req_body.c_ngx_http_lua_ngx_req_append_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_16__*, i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_12__*, %struct.TYPE_17__* }
%struct.TYPE_12__ = type { i64, i64, i64 }
%struct.TYPE_17__ = type { i32*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32*, i32*, i32*, i32* }
%struct.TYPE_14__ = type { i64, i32* }

@.str = private unnamed_addr constant [34 x i8] c"expecting 1 arguments but seen %d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"no request found\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"request_body not initialized\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"fail to write file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_req_append_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_req_append_body(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_14__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_17__, align 8
  %12 = alloca %struct.TYPE_18__, align 8
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %10, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @lua_gettop(i32* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (i32*, i8*, ...) @luaL_error(i32* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 %20, i32* %2, align 4
  br label %189

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %24 = call i64 @luaL_checklstring(i32* %22, i32 1, i64* %23)
  %25 = inttoptr i64 %24 to i32*
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  store i32* %25, i32** %26, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call %struct.TYPE_15__* @ngx_http_lua_get_req(i32* %27)
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %4, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = icmp eq %struct.TYPE_15__* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 (i32*, i8*, ...) @luaL_error(i32* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %33, i32* %2, align 4
  br label %189

34:                                               ; preds = %21
  %35 = load i32*, i32** %3, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %37 = call i32 @ngx_http_lua_check_fake_request(i32* %35, %struct.TYPE_15__* %36)
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = icmp eq %struct.TYPE_16__* %40, null
  br i1 %41, label %56, label %42

42:                                               ; preds = %34
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = icmp eq %struct.TYPE_12__* %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = icmp eq %struct.TYPE_17__* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %49, %42, %34
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 (i32*, i8*, ...) @luaL_error(i32* %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 %58, i32* %2, align 4
  br label %189

59:                                               ; preds = %49
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %98

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 3
  store i32* %66, i32** %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 4
  store i32* %69, i32** %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  store i32* %75, i32** %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 2
  store i32* %78, i32** %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  store i32* null, i32** %82, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %84 = call i64 @ngx_http_lua_write_request_body(%struct.TYPE_15__* %83, %struct.TYPE_17__* %11)
  %85 = load i64, i64* @NGX_OK, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %64
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 (i32*, i8*, ...) @luaL_error(i32* %88, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 %89, i32* %2, align 4
  br label %189

90:                                               ; preds = %64
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %96, %92
  store i64 %97, i64* %95, align 8
  store i32 0, i32* %2, align 4
  br label %189

98:                                               ; preds = %59
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  store %struct.TYPE_16__* %101, %struct.TYPE_16__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %9, align 8
  br label %104

104:                                              ; preds = %157, %98
  %105 = load i64, i64* %9, align 8
  %106 = icmp ugt i64 %105, 0
  br i1 %106, label %107, label %188

107:                                              ; preds = %104
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %112, %117
  br i1 %118, label %119, label %140

119:                                              ; preds = %107
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %122, align 8
  %124 = call i64 @ngx_http_lua_write_request_body(%struct.TYPE_15__* %120, %struct.TYPE_17__* %123)
  %125 = load i64, i64* @NGX_OK, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %119
  %128 = load i32*, i32** %3, align 8
  %129 = call i32 (i32*, i8*, ...) @luaL_error(i32* %128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 %129, i32* %2, align 4
  br label %189

130:                                              ; preds = %119
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  store i64 %135, i64* %139, align 8
  br label %140

140:                                              ; preds = %130, %107
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %145, %150
  store i64 %151, i64* %8, align 8
  %152 = load i64, i64* %8, align 8
  %153 = load i64, i64* %9, align 8
  %154 = icmp ugt i64 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %140
  %156 = load i64, i64* %9, align 8
  store i64 %156, i64* %8, align 8
  br label %157

157:                                              ; preds = %155, %140
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* %10, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = load i64, i64* %8, align 8
  %168 = call i32 @ngx_memcpy(i64 %162, i32* %166, i64 %167)
  %169 = load i64, i64* %8, align 8
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = add i64 %174, %169
  store i64 %175, i64* %173, align 8
  %176 = load i64, i64* %8, align 8
  %177 = load i64, i64* %9, align 8
  %178 = sub i64 %177, %176
  store i64 %178, i64* %9, align 8
  %179 = load i64, i64* %8, align 8
  %180 = load i64, i64* %10, align 8
  %181 = add i64 %180, %179
  store i64 %181, i64* %10, align 8
  %182 = load i64, i64* %8, align 8
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = add i64 %186, %182
  store i64 %187, i64* %185, align 8
  br label %104

188:                                              ; preds = %104
  store i32 0, i32* %2, align 4
  br label %189

189:                                              ; preds = %188, %127, %90, %87, %56, %31, %17
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i64 @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local %struct.TYPE_15__* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @ngx_http_lua_check_fake_request(i32*, %struct.TYPE_15__*) #1

declare dso_local i64 @ngx_http_lua_write_request_body(%struct.TYPE_15__*, %struct.TYPE_17__*) #1

declare dso_local i32 @ngx_memcpy(i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
