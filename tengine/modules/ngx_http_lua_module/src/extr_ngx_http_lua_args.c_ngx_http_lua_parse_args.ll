; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_args.c_ngx_http_lua_parse_args.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_args.c_ngx_http_lua_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@NGX_UNESCAPE_URI_COMPONENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"pushing key %.*s\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"pushing key or value %.*s\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"pushing boolean true\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"popping key and value...\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"setting table...\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"truncated\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@ngx_cycle = common dso_local global %struct.TYPE_2__* null, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"lua hit query args limit %d\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"pushing boolean true...\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"gettop: %d\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"type: %s\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"internal error: stack in bad state\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_lua_parse_args(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %16, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @lua_gettop(i32* %18)
  store i32 %19, i32* %17, align 4
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %10, align 8
  store i32 0, i32* %14, align 4
  %21 = load i8*, i8** %10, align 8
  store i8* %21, i8** %11, align 8
  br label %22

22:                                               ; preds = %144, %4
  %23 = load i8*, i8** %10, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %23, %24
  br i1 %25, label %26, label %145

26:                                               ; preds = %22
  %27 = load i8*, i8** %10, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 61
  br i1 %30, label %31, label %65

31:                                               ; preds = %26
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %65, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** %11, align 8
  store i8* %35, i8** %12, align 8
  %36 = load i8*, i8** %11, align 8
  store i8* %36, i8** %13, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @NGX_UNESCAPE_URI_COMPONENT, align 4
  %44 = call i32 @ngx_http_lua_unescape_uri(i8** %13, i8** %12, i32 %42, i32 %43)
  %45 = load i8*, i8** %13, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %50, i8* %51)
  %53 = load i32*, i32** %6, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32 @lua_pushlstring(i32* %53, i8* %54, i32 %60)
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %10, align 8
  %64 = load i8*, i8** %10, align 8
  store i8* %64, i8** %11, align 8
  store i32 1, i32* %14, align 4
  br label %144

65:                                               ; preds = %31, %26
  %66 = load i8*, i8** %10, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 38
  br i1 %69, label %70, label %140

70:                                               ; preds = %65
  %71 = load i8*, i8** %11, align 8
  store i8* %71, i8** %12, align 8
  %72 = load i8*, i8** %11, align 8
  store i8* %72, i8** %13, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = trunc i64 %77 to i32
  %79 = load i32, i32* @NGX_UNESCAPE_URI_COMPONENT, align 4
  %80 = call i32 @ngx_http_lua_unescape_uri(i8** %13, i8** %12, i32 %78, i32 %79)
  %81 = load i8*, i8** %13, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = ptrtoint i8* %81 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = trunc i64 %85 to i32
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %86, i8* %87)
  %89 = load i32*, i32** %6, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = ptrtoint i8* %91 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = trunc i64 %95 to i32
  %97 = call i32 @lua_pushlstring(i32* %89, i8* %90, i32 %96)
  %98 = load i8*, i8** %10, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %10, align 8
  %100 = load i8*, i8** %10, align 8
  store i8* %100, i8** %11, align 8
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %70
  store i32 0, i32* %14, align 4
  br label %108

104:                                              ; preds = %70
  %105 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i32*, i32** %6, align 8
  %107 = call i32 @lua_pushboolean(i32* %106, i32 1)
  br label %108

108:                                              ; preds = %104, %103
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @lua_tolstring(i32* %109, i32 -2, i64* %15)
  %111 = load i64, i64* %15, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %115 = load i32*, i32** %6, align 8
  %116 = call i32 @lua_pop(i32* %115, i32 2)
  br label %122

117:                                              ; preds = %108
  %118 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* %17, align 4
  %121 = call i32 @ngx_http_lua_set_multi_value_table(i32* %119, i32 %120)
  br label %122

122:                                              ; preds = %117, %113
  %123 = load i32, i32* %9, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %122
  %126 = load i32, i32* %16, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %125
  %131 = load i32*, i32** %6, align 8
  %132 = call i32 @lua_pushliteral(i32* %131, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %133 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ngx_cycle, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @ngx_log_debug1(i32 %133, i32 %136, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %137)
  store i32 2, i32* %5, align 4
  br label %218

139:                                              ; preds = %125, %122
  br label %143

140:                                              ; preds = %65
  %141 = load i8*, i8** %10, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %10, align 8
  br label %143

143:                                              ; preds = %140, %139
  br label %144

144:                                              ; preds = %143, %34
  br label %22

145:                                              ; preds = %22
  %146 = load i8*, i8** %10, align 8
  %147 = load i8*, i8** %11, align 8
  %148 = icmp ne i8* %146, %147
  br i1 %148, label %152, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* %14, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %201

152:                                              ; preds = %149, %145
  %153 = load i8*, i8** %11, align 8
  store i8* %153, i8** %12, align 8
  %154 = load i8*, i8** %11, align 8
  store i8* %154, i8** %13, align 8
  %155 = load i8*, i8** %10, align 8
  %156 = load i8*, i8** %11, align 8
  %157 = ptrtoint i8* %155 to i64
  %158 = ptrtoint i8* %156 to i64
  %159 = sub i64 %157, %158
  %160 = trunc i64 %159 to i32
  %161 = load i32, i32* @NGX_UNESCAPE_URI_COMPONENT, align 4
  %162 = call i32 @ngx_http_lua_unescape_uri(i8** %13, i8** %12, i32 %160, i32 %161)
  %163 = load i8*, i8** %13, align 8
  %164 = load i8*, i8** %11, align 8
  %165 = ptrtoint i8* %163 to i64
  %166 = ptrtoint i8* %164 to i64
  %167 = sub i64 %165, %166
  %168 = trunc i64 %167 to i32
  %169 = load i8*, i8** %11, align 8
  %170 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %168, i8* %169)
  %171 = load i32*, i32** %6, align 8
  %172 = load i8*, i8** %11, align 8
  %173 = load i8*, i8** %13, align 8
  %174 = load i8*, i8** %11, align 8
  %175 = ptrtoint i8* %173 to i64
  %176 = ptrtoint i8* %174 to i64
  %177 = sub i64 %175, %176
  %178 = trunc i64 %177 to i32
  %179 = call i32 @lua_pushlstring(i32* %171, i8* %172, i32 %178)
  %180 = load i32, i32* %14, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %152
  %183 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %184 = load i32*, i32** %6, align 8
  %185 = call i32 @lua_pushboolean(i32* %184, i32 1)
  br label %186

186:                                              ; preds = %182, %152
  %187 = load i32*, i32** %6, align 8
  %188 = call i32 @lua_tolstring(i32* %187, i32 -2, i64* %15)
  %189 = load i64, i64* %15, align 8
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %186
  %192 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %193 = load i32*, i32** %6, align 8
  %194 = call i32 @lua_pop(i32* %193, i32 2)
  br label %200

195:                                              ; preds = %186
  %196 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %197 = load i32*, i32** %6, align 8
  %198 = load i32, i32* %17, align 4
  %199 = call i32 @ngx_http_lua_set_multi_value_table(i32* %197, i32 %198)
  br label %200

200:                                              ; preds = %195, %191
  br label %201

201:                                              ; preds = %200, %149
  %202 = load i32*, i32** %6, align 8
  %203 = call i32 @lua_gettop(i32* %202)
  %204 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %203)
  %205 = load i32*, i32** %6, align 8
  %206 = load i32*, i32** %6, align 8
  %207 = call i32 @lua_type(i32* %206, i32 1)
  %208 = call i32 @lua_typename(i32* %205, i32 %207)
  %209 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %208)
  %210 = load i32*, i32** %6, align 8
  %211 = call i32 @lua_gettop(i32* %210)
  %212 = load i32, i32* %17, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %201
  %215 = load i32*, i32** %6, align 8
  %216 = call i32 @luaL_error(i32* %215, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  store i32 %216, i32* %5, align 4
  br label %218

217:                                              ; preds = %201
  store i32 1, i32* %5, align 4
  br label %218

218:                                              ; preds = %217, %214, %130
  %219 = load i32, i32* %5, align 4
  ret i32 %219
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @ngx_http_lua_unescape_uri(i8**, i8**, i32, i32) #1

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_set_multi_value_table(i32*, i32) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @lua_typename(i32*, i32) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
