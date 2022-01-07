; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_req_body.c_ngx_http_lua_ngx_req_get_body_data.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_req_body.c_ngx_http_lua_ngx_req_get_body_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64, i64 }

@.str = private unnamed_addr constant [34 x i8] c"expecting 0 arguments but seen %d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"request object not found\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"body chunk len: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_req_get_body_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_req_get_body_data(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @lua_gettop(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 (i32*, i8*, ...) @luaL_error(i32* %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 %17, i32* %2, align 4
  br label %165

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = call %struct.TYPE_8__* @ngx_http_lua_get_req(i32* %19)
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %4, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = icmp eq %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 (i32*, i8*, ...) @luaL_error(i32* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %2, align 4
  br label %165

26:                                               ; preds = %18
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = call i32 @ngx_http_lua_check_fake_request(i32* %27, %struct.TYPE_8__* %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = icmp eq %struct.TYPE_7__* %32, null
  br i1 %33, label %48, label %34

34:                                               ; preds = %26
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = icmp eq %struct.TYPE_9__* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %41, %34, %26
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @lua_pushnil(i32* %49)
  store i32 1, i32* %2, align 4
  br label %165

51:                                               ; preds = %41
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %7, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = icmp eq %struct.TYPE_9__* %59, null
  br i1 %60, label %61, label %88

61:                                               ; preds = %51
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub i64 %66, %71
  store i64 %72, i64* %6, align 8
  %73 = load i64, i64* %6, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %61
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @lua_pushnil(i32* %76)
  store i32 1, i32* %2, align 4
  br label %165

78:                                               ; preds = %61
  %79 = load i32*, i32** %3, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @lua_pushlstring(i32* %79, i8* %85, i64 %86)
  store i32 1, i32* %2, align 4
  br label %165

88:                                               ; preds = %51
  store i64 0, i64* %6, align 8
  br label %89

89:                                               ; preds = %112, %88
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %91 = icmp ne %struct.TYPE_9__* %90, null
  br i1 %91, label %92, label %116

92:                                               ; preds = %89
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = call i64 @ngx_buf_size(%struct.TYPE_10__* %95)
  %97 = trunc i64 %96 to i32
  %98 = call i32 @dd(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = sub i64 %103, %108
  %110 = load i64, i64* %6, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %6, align 8
  br label %112

112:                                              ; preds = %92
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  store %struct.TYPE_9__* %115, %struct.TYPE_9__** %7, align 8
  br label %89

116:                                              ; preds = %89
  %117 = load i64, i64* %6, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 @lua_pushnil(i32* %120)
  store i32 1, i32* %2, align 4
  br label %165

122:                                              ; preds = %116
  %123 = load i32*, i32** %3, align 8
  %124 = load i64, i64* %6, align 8
  %125 = call i64 @lua_newuserdata(i32* %123, i64 %124)
  %126 = inttoptr i64 %125 to i32*
  store i32* %126, i32** %9, align 8
  %127 = load i32*, i32** %9, align 8
  store i32* %127, i32** %8, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  store %struct.TYPE_9__* %132, %struct.TYPE_9__** %7, align 8
  br label %133

133:                                              ; preds = %155, %122
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %135 = icmp ne %struct.TYPE_9__* %134, null
  br i1 %135, label %136, label %159

136:                                              ; preds = %133
  %137 = load i32*, i32** %8, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = sub i64 %147, %152
  %154 = call i32* @ngx_copy(i32* %137, i64 %142, i64 %153)
  store i32* %154, i32** %8, align 8
  br label %155

155:                                              ; preds = %136
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  store %struct.TYPE_9__* %158, %struct.TYPE_9__** %7, align 8
  br label %133

159:                                              ; preds = %133
  %160 = load i32*, i32** %3, align 8
  %161 = load i32*, i32** %9, align 8
  %162 = bitcast i32* %161 to i8*
  %163 = load i64, i64* %6, align 8
  %164 = call i32 @lua_pushlstring(i32* %160, i8* %162, i64 %163)
  store i32 1, i32* %2, align 4
  br label %165

165:                                              ; preds = %159, %119, %78, %75, %48, %23, %14
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_8__* @ngx_http_lua_get_req(i32*) #1

declare dso_local i32 @ngx_http_lua_check_fake_request(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #1

declare dso_local i32 @dd(i8*, i32) #1

declare dso_local i64 @ngx_buf_size(%struct.TYPE_10__*) #1

declare dso_local i64 @lua_newuserdata(i32*, i64) #1

declare dso_local i32* @ngx_copy(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
