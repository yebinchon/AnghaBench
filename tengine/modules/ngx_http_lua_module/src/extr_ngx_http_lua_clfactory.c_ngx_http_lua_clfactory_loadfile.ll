; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_clfactory.c_ngx_http_lua_clfactory_loadfile.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_clfactory.c_ngx_http_lua_clfactory_loadfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32*, i64, i64, i32, %struct.TYPE_7__, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@NGX_LUA_TEXT_FILE = common dso_local global i64 0, align 8
@CLFACTORY_BEGIN_CODE = common dso_local global i32 0, align 4
@CLFACTORY_BEGIN_SIZE = common dso_local global i32 0, align 4
@CLFACTORY_END_CODE = common dso_local global i32 0, align 4
@CLFACTORY_END_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"@%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@EOF = common dso_local global i32 0, align 4
@LUA_SIGNATURE = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"reopen\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"_LOADED\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"jit\00", align 1
@NGX_LUA_BT_LJ = common dso_local global i64 0, align 8
@NGX_LUA_BT_LUA = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [27 x i8] c"bad byte-code header in %s\00", align 1
@LUA_ERRFILE = common dso_local global i32 0, align 4
@ngx_http_lua_clfactory_getF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"read\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_lua_clfactory_loadfile(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @lua_gettop(i32* %12)
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load i64, i64* @NGX_LUA_TEXT_FILE, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i64 %16, i64* %17, align 8
  %18 = load i32, i32* @CLFACTORY_BEGIN_CODE, align 4
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @CLFACTORY_BEGIN_SIZE, align 4
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 7
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @CLFACTORY_END_CODE, align 4
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @CLFACTORY_END_SIZE, align 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 5
  store i32 %26, i32* %27, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @lua_pushfstring(i32* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load i8*, i8** %5, align 8
  %32 = call i32* @fopen(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store i32* %32, i32** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @ngx_http_lua_clfactory_errfile(i32* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  store i32 %40, i32* %3, align 4
  br label %203

41:                                               ; preds = %2
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @getc(i32* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 35
  br i1 %46, label %47, label %69

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %60, %47
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @getc(i32* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* @EOF, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 10
  br label %58

58:                                               ; preds = %55, %49
  %59 = phi i1 [ false, %49 ], [ %57, %55 ]
  br i1 %59, label %60, label %61

60:                                               ; preds = %58
  br label %49

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 10
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @getc(i32* %66)
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %64, %61
  store i32 1, i32* %9, align 4
  br label %69

69:                                               ; preds = %68, %41
  %70 = load i32, i32* %6, align 4
  %71 = load i32*, i32** @LUA_SIGNATURE, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %161

75:                                               ; preds = %69
  %76 = load i8*, i8** %5, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %161

78:                                               ; preds = %75
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = call i32* @freopen(i8* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %81)
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store i32* %82, i32** %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %78
  %88 = load i32*, i32** %4, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @ngx_http_lua_clfactory_errfile(i32* %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  store i32 %90, i32* %3, align 4
  br label %203

91:                                               ; preds = %78
  %92 = load i32*, i32** %4, align 8
  %93 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %94 = call i32 @luaL_findtable(i32* %92, i32 %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @lua_getfield(i32* %95, i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %97 = load i32*, i32** %4, align 8
  %98 = call i64 @lua_istable(i32* %97, i32 -1)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load i64, i64* @NGX_LUA_BT_LJ, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i64 %101, i64* %102, align 8
  br label %106

103:                                              ; preds = %91
  %104 = load i64, i64* @NGX_LUA_BT_LUA, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i64 %104, i64* %105, align 8
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @lua_pop(i32* %107, i32 2)
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @NGX_LUA_BT_LJ, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %135

113:                                              ; preds = %106
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %135

116:                                              ; preds = %113
  %117 = load i8*, i8** %5, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @fclose(i32* %121)
  br label %123

123:                                              ; preds = %119, %116
  %124 = load i32*, i32** %4, align 8
  %125 = load i32, i32* %11, align 4
  %126 = call i8* @lua_tostring(i32* %124, i32 %125)
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  store i8* %127, i8** %5, align 8
  %128 = load i32*, i32** %4, align 8
  %129 = load i8*, i8** %5, align 8
  %130 = call i32 @lua_pushfstring(i32* %128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %129)
  %131 = load i32*, i32** %4, align 8
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @lua_remove(i32* %131, i32 %132)
  %134 = load i32, i32* @LUA_ERRFILE, align 4
  store i32 %134, i32* %3, align 4
  br label %203

135:                                              ; preds = %113, %106
  br label %136

136:                                              ; preds = %150, %135
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @getc(i32* %138)
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* @EOF, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %136
  %143 = load i32, i32* %6, align 4
  %144 = load i32*, i32** @LUA_SIGNATURE, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %143, %146
  br label %148

148:                                              ; preds = %142, %136
  %149 = phi i1 [ false, %136 ], [ %147, %142 ]
  br i1 %149, label %150, label %151

150:                                              ; preds = %148
  br label %136

151:                                              ; preds = %148
  %152 = load i32*, i32** %4, align 8
  %153 = load i32, i32* %11, align 4
  %154 = call i32 @ngx_http_lua_clfactory_bytecode_prepare(i32* %152, %struct.TYPE_8__* %10, i32 %153)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %151
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %3, align 4
  br label %203

159:                                              ; preds = %151
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i32 0, i32* %160, align 8
  br label %161

161:                                              ; preds = %159, %75, %69
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @NGX_LUA_TEXT_FILE, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %161
  %167 = load i32, i32* %6, align 4
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @ungetc(i32 %167, i32* %169)
  br label %171

171:                                              ; preds = %166, %161
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  store i64 0, i64* %172, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 4
  store i64 0, i64* %173, align 8
  %174 = load i32*, i32** %4, align 8
  %175 = load i32, i32* @ngx_http_lua_clfactory_getF, align 4
  %176 = load i32*, i32** %4, align 8
  %177 = call i8* @lua_tostring(i32* %176, i32 -1)
  %178 = call i32 @lua_load(i32* %174, i32 %175, %struct.TYPE_8__* %10, i8* %177)
  store i32 %178, i32* %7, align 4
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = call i32 @ferror(i32* %180)
  store i32 %181, i32* %8, align 4
  %182 = load i8*, i8** %5, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %188

184:                                              ; preds = %171
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @fclose(i32* %186)
  br label %188

188:                                              ; preds = %184, %171
  %189 = load i32, i32* %8, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %188
  %192 = load i32*, i32** %4, align 8
  %193 = load i32, i32* %11, align 4
  %194 = call i32 @lua_settop(i32* %192, i32 %193)
  %195 = load i32*, i32** %4, align 8
  %196 = load i32, i32* %11, align 4
  %197 = call i32 @ngx_http_lua_clfactory_errfile(i32* %195, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %196)
  store i32 %197, i32* %3, align 4
  br label %203

198:                                              ; preds = %188
  %199 = load i32*, i32** %4, align 8
  %200 = load i32, i32* %11, align 4
  %201 = call i32 @lua_remove(i32* %199, i32 %200)
  %202 = load i32, i32* %7, align 4
  store i32 %202, i32* %3, align 4
  br label %203

203:                                              ; preds = %198, %191, %157, %123, %87, %37
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_pushfstring(i32*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @ngx_http_lua_clfactory_errfile(i32*, i8*, i32) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32* @freopen(i8*, i8*, i32*) #1

declare dso_local i32 @luaL_findtable(i32*, i32, i8*, i32) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i64 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

declare dso_local i32 @ngx_http_lua_clfactory_bytecode_prepare(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @ungetc(i32, i32*) #1

declare dso_local i32 @lua_load(i32*, i32, %struct.TYPE_8__*, i8*) #1

declare dso_local i32 @ferror(i32*) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
