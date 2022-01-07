; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-netpack.c_lfilter.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-netpack.c_lfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_socket_message = type { i8*, i32, i32, i32 }

@TYPE_CLOSE = common dso_local global i32 0, align 4
@TYPE_OPEN = common dso_local global i32 0, align 4
@TYPE_ERROR = common dso_local global i32 0, align 4
@TYPE_WARNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lfilter(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.skynet_socket_message*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.skynet_socket_message* @lua_touserdata(i32* %7, i32 2)
  store %struct.skynet_socket_message* %8, %struct.skynet_socket_message** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @luaL_checkinteger(i32* %9, i32 3)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %4, align 8
  %12 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %4, align 8
  %18 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %17, i64 1
  %19 = bitcast %struct.skynet_socket_message* %18 to i8*
  store i8* %19, i8** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = sub i64 %21, 24
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %5, align 4
  br label %25

24:                                               ; preds = %1
  store i32 -1, i32* %5, align 4
  br label %25

25:                                               ; preds = %24, %16
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @lua_settop(i32* %26, i32 1)
  %28 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %4, align 8
  %29 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %110 [
    i32 130, label %31
    i32 131, label %46
    i32 132, label %47
    i32 133, label %62
    i32 129, label %76
    i32 128, label %95
  ]

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, -1
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %4, align 8
  %38 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %4, align 8
  %43 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @filter_data(i32* %36, i32 %39, i32* %41, i32 %44)
  store i32 %45, i32* %2, align 4
  br label %111

46:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %111

47:                                               ; preds = %25
  %48 = load i32*, i32** %3, align 8
  %49 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %4, align 8
  %50 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @close_uncomplete(i32* %48, i32 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* @TYPE_CLOSE, align 4
  %55 = call i32 @lua_upvalueindex(i32 %54)
  %56 = call i32 @lua_pushvalue(i32* %53, i32 %55)
  %57 = load i32*, i32** %3, align 8
  %58 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %4, align 8
  %59 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @lua_pushinteger(i32* %57, i32 %60)
  store i32 3, i32* %2, align 4
  br label %111

62:                                               ; preds = %25
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* @TYPE_OPEN, align 4
  %65 = call i32 @lua_upvalueindex(i32 %64)
  %66 = call i32 @lua_pushvalue(i32* %63, i32 %65)
  %67 = load i32*, i32** %3, align 8
  %68 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %4, align 8
  %69 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @lua_pushinteger(i32* %67, i32 %70)
  %72 = load i32*, i32** %3, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @pushstring(i32* %72, i8* %73, i32 %74)
  store i32 4, i32* %2, align 4
  br label %111

76:                                               ; preds = %25
  %77 = load i32*, i32** %3, align 8
  %78 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %4, align 8
  %79 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @close_uncomplete(i32* %77, i32 %80)
  %82 = load i32*, i32** %3, align 8
  %83 = load i32, i32* @TYPE_ERROR, align 4
  %84 = call i32 @lua_upvalueindex(i32 %83)
  %85 = call i32 @lua_pushvalue(i32* %82, i32 %84)
  %86 = load i32*, i32** %3, align 8
  %87 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %4, align 8
  %88 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @lua_pushinteger(i32* %86, i32 %89)
  %91 = load i32*, i32** %3, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @pushstring(i32* %91, i8* %92, i32 %93)
  store i32 4, i32* %2, align 4
  br label %111

95:                                               ; preds = %25
  %96 = load i32*, i32** %3, align 8
  %97 = load i32, i32* @TYPE_WARNING, align 4
  %98 = call i32 @lua_upvalueindex(i32 %97)
  %99 = call i32 @lua_pushvalue(i32* %96, i32 %98)
  %100 = load i32*, i32** %3, align 8
  %101 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %4, align 8
  %102 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @lua_pushinteger(i32* %100, i32 %103)
  %105 = load i32*, i32** %3, align 8
  %106 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %4, align 8
  %107 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @lua_pushinteger(i32* %105, i32 %108)
  store i32 4, i32* %2, align 4
  br label %111

110:                                              ; preds = %25
  store i32 1, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %95, %76, %62, %47, %46, %31
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.skynet_socket_message* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @filter_data(i32*, i32, i32*, i32) #1

declare dso_local i32 @close_uncomplete(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @pushstring(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
