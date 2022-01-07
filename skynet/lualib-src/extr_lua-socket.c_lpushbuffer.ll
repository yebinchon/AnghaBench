; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_lpushbuffer.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_lpushbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_buffer = type { i32, %struct.buffer_node*, %struct.buffer_node* }
%struct.buffer_node = type { i8*, i32, %struct.buffer_node* }

@.str = private unnamed_addr constant [30 x i8] c"need buffer object at param 1\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"need message block at param 3\00", align 1
@LUA_TTABLE = common dso_local global i32 0, align 4
@LARGE_PAGE_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lpushbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpushbuffer(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.socket_buffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i8* @lua_touserdata(i32* %11, i32 1)
  %13 = bitcast i8* %12 to %struct.socket_buffer*
  store %struct.socket_buffer* %13, %struct.socket_buffer** %4, align 8
  %14 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %15 = icmp eq %struct.socket_buffer* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @luaL_error(i32* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %2, align 4
  br label %132

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i8* @lua_touserdata(i32* %20, i32 3)
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @luaL_error(i32* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %2, align 4
  br label %132

27:                                               ; preds = %19
  store i32 2, i32* %6, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @LUA_TTABLE, align 4
  %31 = call i32 @luaL_checktype(i32* %28, i32 %29, i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @luaL_checkinteger(i32* %32, i32 4)
  store i32 %33, i32* %7, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @lua_rawgeti(i32* %34, i32 %35, i32 1)
  %37 = load i32*, i32** %3, align 8
  %38 = call i8* @lua_touserdata(i32* %37, i32 -1)
  %39 = bitcast i8* %38 to %struct.buffer_node*
  store %struct.buffer_node* %39, %struct.buffer_node** %8, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @lua_pop(i32* %40, i32 1)
  %42 = load %struct.buffer_node*, %struct.buffer_node** %8, align 8
  %43 = icmp eq %struct.buffer_node* %42, null
  br i1 %43, label %44, label %79

44:                                               ; preds = %27
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @lua_rawlen(i32* %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %50, %44
  store i32 8, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @LARGE_PAGE_NODE, align 4
  %56 = sub nsw i32 %55, 3
  %57 = icmp sle i32 %54, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = shl i32 %60, %59
  store i32 %61, i32* %10, align 4
  br label %67

62:                                               ; preds = %53
  %63 = load i32, i32* @LARGE_PAGE_NODE, align 4
  %64 = sub nsw i32 %63, 3
  %65 = load i32, i32* %10, align 4
  %66 = shl i32 %65, %64
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %62, %58
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @lnewpool(i32* %68, i32 %69)
  %71 = load i32*, i32** %3, align 8
  %72 = call i8* @lua_touserdata(i32* %71, i32 -1)
  %73 = bitcast i8* %72 to %struct.buffer_node*
  store %struct.buffer_node* %73, %struct.buffer_node** %8, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  %78 = call i32 @lua_rawseti(i32* %74, i32 %75, i32 %77)
  br label %79

79:                                               ; preds = %67, %27
  %80 = load i32*, i32** %3, align 8
  %81 = load %struct.buffer_node*, %struct.buffer_node** %8, align 8
  %82 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %81, i32 0, i32 2
  %83 = load %struct.buffer_node*, %struct.buffer_node** %82, align 8
  %84 = call i32 @lua_pushlightuserdata(i32* %80, %struct.buffer_node* %83)
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @lua_rawseti(i32* %85, i32 %86, i32 1)
  %88 = load i8*, i8** %5, align 8
  %89 = load %struct.buffer_node*, %struct.buffer_node** %8, align 8
  %90 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.buffer_node*, %struct.buffer_node** %8, align 8
  %93 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load %struct.buffer_node*, %struct.buffer_node** %8, align 8
  %95 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %94, i32 0, i32 2
  store %struct.buffer_node* null, %struct.buffer_node** %95, align 8
  %96 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %97 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %96, i32 0, i32 2
  %98 = load %struct.buffer_node*, %struct.buffer_node** %97, align 8
  %99 = icmp eq %struct.buffer_node* %98, null
  br i1 %99, label %100, label %112

100:                                              ; preds = %79
  %101 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %102 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %101, i32 0, i32 1
  %103 = load %struct.buffer_node*, %struct.buffer_node** %102, align 8
  %104 = icmp eq %struct.buffer_node* %103, null
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = load %struct.buffer_node*, %struct.buffer_node** %8, align 8
  %108 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %109 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %108, i32 0, i32 1
  store %struct.buffer_node* %107, %struct.buffer_node** %109, align 8
  %110 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %111 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %110, i32 0, i32 2
  store %struct.buffer_node* %107, %struct.buffer_node** %111, align 8
  br label %121

112:                                              ; preds = %79
  %113 = load %struct.buffer_node*, %struct.buffer_node** %8, align 8
  %114 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %115 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %114, i32 0, i32 1
  %116 = load %struct.buffer_node*, %struct.buffer_node** %115, align 8
  %117 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %116, i32 0, i32 2
  store %struct.buffer_node* %113, %struct.buffer_node** %117, align 8
  %118 = load %struct.buffer_node*, %struct.buffer_node** %8, align 8
  %119 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %120 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %119, i32 0, i32 1
  store %struct.buffer_node* %118, %struct.buffer_node** %120, align 8
  br label %121

121:                                              ; preds = %112, %100
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %124 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load i32*, i32** %3, align 8
  %128 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %129 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @lua_pushinteger(i32* %127, i32 %130)
  store i32 1, i32* %2, align 4
  br label %132

132:                                              ; preds = %121, %24, %16
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i8* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_rawlen(i32*, i32) #1

declare dso_local i32 @lnewpool(i32*, i32) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i32) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, %struct.buffer_node*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
