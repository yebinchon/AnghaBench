; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_bodyfilterby.c_ngx_http_lua_body_filter_param_get.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_bodyfilterby.c_ngx_http_lua_body_filter_param_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64, i64, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }

@.str = private unnamed_addr constant [10 x i8] c"index: %d\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"seen only single buffer\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"seen multiple buffers\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_lua_body_filter_param_get(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @luaL_checkint(i32* %14, i32 2)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 2
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @lua_pushnil(i32* %24)
  store i32 1, i32* %3, align 4
  br label %175

26:                                               ; preds = %20, %2
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @ngx_http_lua_module, align 4
  %29 = call %struct.TYPE_5__* @ngx_http_get_module_main_conf(i32* %27, i32 %28)
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %13, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %12, align 8
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %65

35:                                               ; preds = %26
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %9, align 8
  br label %37

37:                                               ; preds = %58, %35
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %39 = icmp ne %struct.TYPE_6__* %38, null
  br i1 %39, label %40, label %62

40:                                               ; preds = %37
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %40
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47, %40
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @lua_pushboolean(i32* %55, i32 1)
  store i32 1, i32* %3, align 4
  br label %175

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %9, align 8
  br label %37

62:                                               ; preds = %37
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @lua_pushboolean(i32* %63, i32 0)
  store i32 1, i32* %3, align 4
  br label %175

65:                                               ; preds = %26
  store i64 0, i64* %8, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %67 = icmp eq %struct.TYPE_6__* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @lua_pushliteral(i32* %69, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %175

71:                                               ; preds = %65
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = icmp eq %struct.TYPE_6__* %74, null
  br i1 %75, label %76, label %94

76:                                               ; preds = %71
  %77 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  store %struct.TYPE_7__* %80, %struct.TYPE_7__** %10, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = sub i64 %88, %91
  %93 = call i32 @lua_pushlstring(i32* %81, i8* %85, i64 %92)
  store i32 1, i32* %3, align 4
  br label %175

94:                                               ; preds = %71
  %95 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %96, %struct.TYPE_6__** %9, align 8
  br label %97

97:                                               ; preds = %124, %94
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %99 = icmp ne %struct.TYPE_6__* %98, null
  br i1 %99, label %100, label %128

100:                                              ; preds = %97
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  store %struct.TYPE_7__* %103, %struct.TYPE_7__** %10, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = sub i64 %106, %109
  %111 = load i64, i64* %8, align 8
  %112 = add i64 %111, %110
  store i64 %112, i64* %8, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %100
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117, %100
  br label %128

123:                                              ; preds = %117
  br label %124

124:                                              ; preds = %123
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  store %struct.TYPE_6__* %127, %struct.TYPE_6__** %9, align 8
  br label %97

128:                                              ; preds = %122, %97
  %129 = load i32*, i32** %4, align 8
  %130 = load i64, i64* %8, align 8
  %131 = call i64 @lua_newuserdata(i32* %129, i64 %130)
  %132 = inttoptr i64 %131 to i32*
  store i32* %132, i32** %6, align 8
  %133 = load i32*, i32** %6, align 8
  store i32* %133, i32** %7, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %134, %struct.TYPE_6__** %9, align 8
  br label %135

135:                                              ; preds = %165, %128
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %137 = icmp ne %struct.TYPE_6__* %136, null
  br i1 %137, label %138, label %169

138:                                              ; preds = %135
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  store %struct.TYPE_7__* %141, %struct.TYPE_7__** %10, align 8
  %142 = load i32*, i32** %7, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = sub i64 %148, %151
  %153 = call i32* @ngx_copy(i32* %142, i64 %145, i64 %152)
  store i32* %153, i32** %7, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %138
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %158, %138
  br label %169

164:                                              ; preds = %158
  br label %165

165:                                              ; preds = %164
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  store %struct.TYPE_6__* %168, %struct.TYPE_6__** %9, align 8
  br label %135

169:                                              ; preds = %163, %135
  %170 = load i32*, i32** %4, align 8
  %171 = load i32*, i32** %6, align 8
  %172 = bitcast i32* %171 to i8*
  %173 = load i64, i64* %8, align 8
  %174 = call i32 @lua_pushlstring(i32* %170, i8* %172, i64 %173)
  store i32 1, i32* %3, align 4
  br label %175

175:                                              ; preds = %169, %76, %68, %62, %54, %23
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @luaL_checkint(i32*, i32) #1

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local %struct.TYPE_5__* @ngx_http_get_module_main_conf(i32*, i32) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #1

declare dso_local i64 @lua_newuserdata(i32*, i64) #1

declare dso_local i32* @ngx_copy(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
