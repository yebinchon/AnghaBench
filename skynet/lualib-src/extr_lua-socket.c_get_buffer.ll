; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_get_buffer.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_get_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_sendbuffer = type { i64, i8*, i8* }

@SOCKET_BUFFER_RAWPOINTER = common dso_local global i8* null, align 8
@SOCKET_BUFFER_OBJECT = common dso_local global i8* null, align 8
@SOCKET_BUFFER_MEMORY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.socket_sendbuffer*)* @get_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_buffer(i32* %0, i32 %1, %struct.socket_sendbuffer* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket_sendbuffer*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.socket_sendbuffer* %2, %struct.socket_sendbuffer** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @lua_type(i32* %10, i32 %11)
  switch i32 %12, label %95 [
    i32 128, label %13
    i32 130, label %42
    i32 129, label %75
  ]

13:                                               ; preds = %3
  %14 = load i8*, i8** @SOCKET_BUFFER_RAWPOINTER, align 8
  %15 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %6, align 8
  %16 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i8* @lua_touserdata(i32* %17, i32 %18)
  %20 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %6, align 8
  %21 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  %25 = call i32 @lua_isinteger(i32* %22, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %13
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i8* @lua_tointeger(i32* %28, i32 %30)
  %32 = ptrtoint i8* %31 to i64
  %33 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %6, align 8
  %34 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %41

35:                                               ; preds = %13
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @lua_rawlen(i32* %36, i32 %37)
  %39 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %6, align 8
  %40 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %35, %27
  br label %106

42:                                               ; preds = %3
  store i32 -1, i32* %9, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i32 @lua_isinteger(i32* %43, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  %52 = call i8* @lua_tointeger(i32* %49, i32 %51)
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %48, %42
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i8*, i8** @SOCKET_BUFFER_OBJECT, align 8
  %59 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %6, align 8
  %60 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  br label %65

61:                                               ; preds = %54
  %62 = load i8*, i8** @SOCKET_BUFFER_MEMORY, align 8
  %63 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %6, align 8
  %64 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %61, %57
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i8* @lua_touserdata(i32* %66, i32 %67)
  %69 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %6, align 8
  %70 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %6, align 8
  %74 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %106

75:                                               ; preds = %3
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i64 @count_size(i32* %76, i32 %77)
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i8* @skynet_malloc(i64 %79)
  store i8* %80, i8** %7, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load i8*, i8** %7, align 8
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @concat_table(i32* %81, i32 %82, i8* %83, i64 %84)
  %86 = load i8*, i8** @SOCKET_BUFFER_MEMORY, align 8
  %87 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %6, align 8
  %88 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %6, align 8
  %91 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %6, align 8
  %94 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %106

95:                                               ; preds = %3
  %96 = load i8*, i8** @SOCKET_BUFFER_RAWPOINTER, align 8
  %97 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %6, align 8
  %98 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %97, i32 0, i32 2
  store i8* %96, i8** %98, align 8
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %6, align 8
  %102 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %101, i32 0, i32 0
  %103 = call i8* @luaL_checklstring(i32* %99, i32 %100, i64* %102)
  %104 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %6, align 8
  %105 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %95, %75, %65, %41
  ret void
}

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i8* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_isinteger(i32*, i32) #1

declare dso_local i8* @lua_tointeger(i32*, i32) #1

declare dso_local i64 @lua_rawlen(i32*, i32) #1

declare dso_local i64 @count_size(i32*, i32) #1

declare dso_local i8* @skynet_malloc(i64) #1

declare dso_local i32 @concat_table(i32*, i32, i8*, i64) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
