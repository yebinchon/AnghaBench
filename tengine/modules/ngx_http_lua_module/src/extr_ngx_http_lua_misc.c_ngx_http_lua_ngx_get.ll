; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_misc.c_ngx_http_lua_ngx_get.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_misc.c_ngx_http_lua_ngx_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i64, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ngx get %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@NGX_HTTP_VERSION_9 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"is_subrequest\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"headers_sent\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"headers sent: %d\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"key %s not matched\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_get(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.TYPE_9__* @ngx_http_lua_get_req(i32* %9)
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %5, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = icmp eq %struct.TYPE_9__* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @lua_pushnil(i32* %14)
  store i32 1, i32* %2, align 4
  br label %145

16:                                               ; preds = %1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = load i32, i32* @ngx_http_lua_module, align 4
  %19 = call %struct.TYPE_10__* @ngx_http_get_module_ctx(%struct.TYPE_9__* %17, i32 %18)
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %8, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %21 = icmp eq %struct.TYPE_10__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_pushnil(i32* %23)
  store i32 1, i32* %2, align 4
  br label %145

25:                                               ; preds = %16
  %26 = load i32*, i32** %3, align 8
  %27 = call i64 @luaL_checklstring(i32* %26, i32 -1, i64* %7)
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = ptrtoint i32* %29 to i32
  %31 = call i32 @dd(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %32, 6
  br i1 %33, label %34, label %75

34:                                               ; preds = %25
  %35 = load i32*, i32** %6, align 8
  %36 = call i64 @ngx_strncmp(i32* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %75

38:                                               ; preds = %34
  %39 = load i32*, i32** %3, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = call i32 @ngx_http_lua_check_fake_request(i32* %39, %struct.TYPE_9__* %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %4, align 4
  br label %71

50:                                               ; preds = %38
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %4, align 4
  br label %70

61:                                               ; preds = %50
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @NGX_HTTP_VERSION_9, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 9, i32* %4, align 4
  br label %69

68:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %67
  br label %70

70:                                               ; preds = %69, %56
  br label %71

71:                                               ; preds = %70, %46
  %72 = load i32*, i32** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @lua_pushinteger(i32* %72, i32 %73)
  store i32 1, i32* %2, align 4
  br label %145

75:                                               ; preds = %34, %25
  %76 = load i64, i64* %7, align 8
  %77 = icmp eq i64 %76, 3
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i32*, i32** %6, align 8
  %80 = call i64 @ngx_strncmp(i32* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @ngx_http_lua_ngx_get_ctx(i32* %83)
  store i32 %84, i32* %2, align 4
  br label %145

85:                                               ; preds = %78, %75
  %86 = load i64, i64* %7, align 8
  %87 = icmp eq i64 %86, 13
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = load i32*, i32** %6, align 8
  %90 = call i64 @ngx_strncmp(i32* %89, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 13)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load i32*, i32** %3, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = icmp ne %struct.TYPE_9__* %94, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @lua_pushboolean(i32* %93, i32 %99)
  store i32 1, i32* %2, align 4
  br label %145

101:                                              ; preds = %88, %85
  %102 = load i64, i64* %7, align 8
  %103 = icmp eq i64 %102, 12
  br i1 %103, label %104, label %139

104:                                              ; preds = %101
  %105 = load i32*, i32** %6, align 8
  %106 = call i64 @ngx_strncmp(i32* %105, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 12)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %139

108:                                              ; preds = %104
  %109 = load i32*, i32** %3, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %111 = call i32 @ngx_http_lua_check_fake_request(i32* %109, %struct.TYPE_9__* %110)
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %108
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br label %121

121:                                              ; preds = %116, %108
  %122 = phi i1 [ true, %108 ], [ %120, %116 ]
  %123 = zext i1 %122 to i32
  %124 = call i32 @dd(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %123)
  %125 = load i32*, i32** %3, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %121
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br label %135

135:                                              ; preds = %130, %121
  %136 = phi i1 [ true, %121 ], [ %134, %130 ]
  %137 = zext i1 %136 to i32
  %138 = call i32 @lua_pushboolean(i32* %125, i32 %137)
  store i32 1, i32* %2, align 4
  br label %145

139:                                              ; preds = %104, %101
  %140 = load i32*, i32** %6, align 8
  %141 = ptrtoint i32* %140 to i32
  %142 = call i32 @dd(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %141)
  %143 = load i32*, i32** %3, align 8
  %144 = call i32 @lua_pushnil(i32* %143)
  store i32 1, i32* %2, align 4
  br label %145

145:                                              ; preds = %139, %135, %92, %82, %71, %22, %13
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.TYPE_9__* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local %struct.TYPE_10__* @ngx_http_get_module_ctx(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @dd(i8*, i32) #1

declare dso_local i64 @ngx_strncmp(i32*, i8*, i32) #1

declare dso_local i32 @ngx_http_lua_check_fake_request(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_ngx_get_ctx(i32*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
