; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headers.c_ngx_http_lua_ngx_header_get.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headers.c_ngx_http_lua_ngx_header_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"no request object found\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"no ctx found\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"key: %.*s, len %d\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_header_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_header_get(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32* @ngx_http_lua_get_req(i32* %12)
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @luaL_error(i32* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %2, align 4
  br label %99

19:                                               ; preds = %1
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @ngx_http_lua_module, align 4
  %22 = call i32* @ngx_http_get_module_ctx(i32* %20, i32 %21)
  store i32* %22, i32** %11, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @luaL_error(i32* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %27, i32* %2, align 4
  br label %99

28:                                               ; preds = %19
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @ngx_http_lua_check_fake_request(i32* %29, i32* %30)
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @luaL_checklstring(i32* %32, i32 2, i64* %9)
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %5, align 8
  %35 = load i64, i64* %9, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %9, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @dd(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %36, i8* %37, i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* @ngx_http_lua_module, align 4
  %43 = call %struct.TYPE_6__* @ngx_http_get_module_loc_conf(i32* %41, i32 %42)
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %10, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %89

48:                                               ; preds = %28
  %49 = load i8*, i8** %5, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32* @memchr(i8* %49, i8 signext 95, i64 %50)
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %89

53:                                               ; preds = %48
  %54 = load i32*, i32** %3, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i64 @lua_newuserdata(i32* %54, i64 %55)
  %57 = inttoptr i64 %56 to i8*
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i8* %57, i8** %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @luaL_error(i32* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 %64, i32* %2, align 4
  br label %99

65:                                               ; preds = %53
  store i64 0, i64* %8, align 8
  br label %66

66:                                               ; preds = %85, %65
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %88

70:                                               ; preds = %66
  %71 = load i8*, i8** %5, align 8
  %72 = load i64, i64* %8, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i8, i8* %73, align 1
  store i8 %74, i8* %6, align 1
  %75 = load i8, i8* %6, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 95
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  store i8 45, i8* %6, align 1
  br label %79

79:                                               ; preds = %78, %70
  %80 = load i8, i8* %6, align 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8 %80, i8* %84, align 1
  br label %85

85:                                               ; preds = %79
  %86 = load i64, i64* %8, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %8, align 8
  br label %66

88:                                               ; preds = %66
  br label %92

89:                                               ; preds = %48, %28
  %90 = load i8*, i8** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i8* %90, i8** %91, align 8
  br label %92

92:                                               ; preds = %89, %88
  %93 = load i64, i64* %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i64 %93, i64* %94, align 8
  %95 = load i32*, i32** %3, align 8
  %96 = load i32*, i32** %4, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @ngx_http_lua_get_output_header(i32* %95, i32* %96, i32* %97, %struct.TYPE_5__* %7)
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %92, %62, %25, %16
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32* @ngx_http_get_module_ctx(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_check_fake_request(i32*, i32*) #1

declare dso_local i64 @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @dd(i8*, i32, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @ngx_http_get_module_loc_conf(i32*, i32) #1

declare dso_local i32* @memchr(i8*, i8 signext, i64) #1

declare dso_local i64 @lua_newuserdata(i32*, i64) #1

declare dso_local i32 @ngx_http_lua_get_output_header(i32*, i32*, i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
