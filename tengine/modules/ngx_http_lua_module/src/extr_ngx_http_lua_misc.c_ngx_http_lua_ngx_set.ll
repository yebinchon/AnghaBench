; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_misc.c_ngx_http_lua_ngx_set.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_misc.c_ngx_http_lua_ngx_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, i64, %struct.TYPE_7__*, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"no request object found\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"attempt to set ngx.status after sending out response headers\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"101 Switching Protocols\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_set(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @luaL_checklstring(i32* %7, i32 2, i64* %6)
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp eq i64 %10, 6
  br i1 %11, label %12, label %71

12:                                               ; preds = %1
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @ngx_strncmp(i32* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %71

16:                                               ; preds = %12
  %17 = load i32*, i32** %3, align 8
  %18 = call %struct.TYPE_9__* @ngx_http_lua_get_req(i32* %17)
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %4, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = icmp eq %struct.TYPE_9__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @luaL_error(i32* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 %23, i32* %2, align 4
  br label %92

24:                                               ; preds = %16
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i32, i32* @NGX_LOG_ERR, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ngx_log_error(i32 %30, i32 %35, i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %92

37:                                               ; preds = %24
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32*, i32** %3, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = call i32 @ngx_http_lua_check_fake_request(i32* %46, %struct.TYPE_9__* %47)
  %49 = load i32*, i32** %3, align 8
  %50 = call i64 @luaL_checknumber(i32* %49, i32 3)
  %51 = trunc i64 %50 to i32
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 101
  br i1 %59, label %60, label %65

60:                                               ; preds = %45
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = call i32 @ngx_str_set(%struct.TYPE_10__* %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %70

65:                                               ; preds = %45
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %65, %60
  store i32 0, i32* %2, align 4
  br label %92

71:                                               ; preds = %12, %1
  %72 = load i64, i64* %6, align 8
  %73 = icmp eq i64 %72, 3
  br i1 %73, label %74, label %89

74:                                               ; preds = %71
  %75 = load i32*, i32** %5, align 8
  %76 = call i64 @ngx_strncmp(i32* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %74
  %79 = load i32*, i32** %3, align 8
  %80 = call %struct.TYPE_9__* @ngx_http_lua_get_req(i32* %79)
  store %struct.TYPE_9__* %80, %struct.TYPE_9__** %4, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = icmp eq %struct.TYPE_9__* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @luaL_error(i32* %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 %85, i32* %2, align 4
  br label %92

86:                                               ; preds = %78
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @ngx_http_lua_ngx_set_ctx(i32* %87)
  store i32 %88, i32* %2, align 4
  br label %92

89:                                               ; preds = %74, %71
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @lua_rawset(i32* %90, i32 -3)
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %89, %86, %83, %70, %29, %21
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i64 @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i64 @ngx_strncmp(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_9__* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_http_lua_check_fake_request(i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @luaL_checknumber(i32*, i32) #1

declare dso_local i32 @ngx_str_set(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @ngx_http_lua_ngx_set_ctx(i32*) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
