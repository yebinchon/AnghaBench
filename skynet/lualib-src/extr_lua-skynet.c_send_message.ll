; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-skynet.c_send_message.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-skynet.c_send_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_context = type { i32 }

@LUA_TNUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid service address 0\00", align 1
@PTYPE_TAG_ALLOCSESSION = common dso_local global i32 0, align 4
@PTYPE_TAG_DONTCOPY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid param %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @send_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_message(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.skynet_context*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @lua_upvalueindex(i32 1)
  %20 = call i8* @lua_touserdata(i32* %18, i32 %19)
  %21 = bitcast i8* %20 to %struct.skynet_context*
  store %struct.skynet_context* %21, %struct.skynet_context** %8, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @lua_tointeger(i32* %22, i32 1)
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %9, align 8
  store i8* null, i8** %10, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %3
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @lua_type(i32* %28, i32 1)
  %30 = load i32, i32* @LUA_TNUMBER, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 (i32*, i8*, ...) @luaL_error(i32* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 %34, i32* %4, align 4
  br label %153

35:                                               ; preds = %27
  %36 = load i32*, i32** %5, align 8
  %37 = call i8* @get_dest_string(i32* %36, i32 1)
  store i8* %37, i8** %10, align 8
  br label %38

38:                                               ; preds = %35, %3
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 0
  %42 = call i32 @luaL_checkinteger(i32* %39, i32 %41)
  store i32 %42, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i64 @lua_isnil(i32* %43, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load i32, i32* @PTYPE_TAG_ALLOCSESSION, align 4
  %50 = load i32, i32* %11, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %11, align 4
  br label %57

52:                                               ; preds = %38
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  %56 = call i32 @luaL_checkinteger(i32* %53, i32 %55)
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %52, %48
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 2
  %61 = call i32 @lua_type(i32* %58, i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  switch i32 %62, label %130 [
    i32 128, label %63
    i32 129, label %96
  ]

63:                                               ; preds = %57
  store i64 0, i64* %14, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 2
  %67 = call i64 @lua_tolstring(i32* %64, i32 %66, i64* %14)
  %68 = inttoptr i64 %67 to i8*
  store i8* %68, i8** %15, align 8
  %69 = load i64, i64* %14, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i8* null, i8** %15, align 8
  br label %72

72:                                               ; preds = %71, %63
  %73 = load i8*, i8** %10, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load %struct.skynet_context*, %struct.skynet_context** %8, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i8*, i8** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i8*, i8** %15, align 8
  %82 = load i64, i64* %14, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @skynet_sendname(%struct.skynet_context* %76, i32 %77, i8* %78, i32 %79, i32 %80, i8* %81, i32 %83)
  store i32 %84, i32* %12, align 4
  br label %95

85:                                               ; preds = %72
  %86 = load %struct.skynet_context*, %struct.skynet_context** %8, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i64, i64* %9, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i8*, i8** %15, align 8
  %92 = load i64, i64* %14, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 @skynet_send(%struct.skynet_context* %86, i32 %87, i64 %88, i32 %89, i32 %90, i8* %91, i32 %93)
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %85, %75
  br label %139

96:                                               ; preds = %57
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 2
  %100 = call i8* @lua_touserdata(i32* %97, i32 %99)
  store i8* %100, i8** %16, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 3
  %104 = call i32 @luaL_checkinteger(i32* %101, i32 %103)
  store i32 %104, i32* %17, align 4
  %105 = load i8*, i8** %10, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %118

107:                                              ; preds = %96
  %108 = load %struct.skynet_context*, %struct.skynet_context** %8, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load i8*, i8** %10, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @PTYPE_TAG_DONTCOPY, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* %12, align 4
  %115 = load i8*, i8** %16, align 8
  %116 = load i32, i32* %17, align 4
  %117 = call i32 @skynet_sendname(%struct.skynet_context* %108, i32 %109, i8* %110, i32 %113, i32 %114, i8* %115, i32 %116)
  store i32 %117, i32* %12, align 4
  br label %129

118:                                              ; preds = %96
  %119 = load %struct.skynet_context*, %struct.skynet_context** %8, align 8
  %120 = load i32, i32* %6, align 4
  %121 = load i64, i64* %9, align 8
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @PTYPE_TAG_DONTCOPY, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* %12, align 4
  %126 = load i8*, i8** %16, align 8
  %127 = load i32, i32* %17, align 4
  %128 = call i32 @skynet_send(%struct.skynet_context* %119, i32 %120, i64 %121, i32 %124, i32 %125, i8* %126, i32 %127)
  store i32 %128, i32* %12, align 4
  br label %129

129:                                              ; preds = %118, %107
  br label %139

130:                                              ; preds = %57
  %131 = load i32*, i32** %5, align 8
  %132 = load i32*, i32** %5, align 8
  %133 = load i32*, i32** %5, align 8
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %134, 2
  %136 = call i32 @lua_type(i32* %133, i32 %135)
  %137 = call i32 @lua_typename(i32* %132, i32 %136)
  %138 = call i32 (i32*, i8*, ...) @luaL_error(i32* %131, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %130, %129, %95
  %140 = load i32, i32* %12, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %139
  %143 = load i32, i32* %12, align 4
  %144 = icmp eq i32 %143, -2
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i32*, i32** %5, align 8
  %147 = call i32 @lua_pushboolean(i32* %146, i32 0)
  store i32 1, i32* %4, align 4
  br label %153

148:                                              ; preds = %142
  store i32 0, i32* %4, align 4
  br label %153

149:                                              ; preds = %139
  %150 = load i32*, i32** %5, align 8
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @lua_pushinteger(i32* %150, i32 %151)
  store i32 1, i32* %4, align 4
  br label %153

153:                                              ; preds = %149, %148, %145, %32
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i8* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i8* @get_dest_string(i32*, i32) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i64 @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @skynet_sendname(%struct.skynet_context*, i32, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @skynet_send(%struct.skynet_context*, i32, i64, i32, i32, i8*, i32) #1

declare dso_local i32 @lua_typename(i32*, i32) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
