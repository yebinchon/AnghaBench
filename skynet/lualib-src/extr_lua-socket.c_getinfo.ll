; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_getinfo.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_getinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_info = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"LISTEN\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"rtime\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"sock\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"BIND\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"wbuffer\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"wtime\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"peer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.socket_info*)* @getinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getinfo(i32* %0, %struct.socket_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.socket_info*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.socket_info* %1, %struct.socket_info** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @lua_newtable(i32* %5)
  %7 = load i32*, i32** %3, align 8
  %8 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %9 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %8, i32 0, i32 8
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @lua_pushinteger(i32* %7, i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @lua_setfield(i32* %12, i32 -2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %16 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @lua_pushinteger(i32* %14, i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @lua_setfield(i32* %19, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %22 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %67 [
    i32 130, label %24
    i32 129, label %58
    i32 128, label %61
    i32 131, label %64
  ]

24:                                               ; preds = %2
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @lua_pushstring(i32* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @lua_setfield(i32* %27, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %31 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @lua_pushinteger(i32* %29, i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @lua_setfield(i32* %34, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %36 = load i32*, i32** %3, align 8
  %37 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %38 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @lua_pushinteger(i32* %36, i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @lua_setfield(i32* %41, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %43 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %44 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %24
  %50 = load i32*, i32** %3, align 8
  %51 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %52 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @lua_pushstring(i32* %50, i8* %53)
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @lua_setfield(i32* %55, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %57

57:                                               ; preds = %49, %24
  br label %124

58:                                               ; preds = %2
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @lua_pushstring(i32* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %72

61:                                               ; preds = %2
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @lua_pushstring(i32* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %72

64:                                               ; preds = %2
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @lua_pushstring(i32* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %72

67:                                               ; preds = %2
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @lua_pushstring(i32* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @lua_setfield(i32* %70, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %124

72:                                               ; preds = %64, %61, %58
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @lua_setfield(i32* %73, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i32*, i32** %3, align 8
  %76 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %77 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @lua_pushinteger(i32* %75, i32 %78)
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @lua_setfield(i32* %80, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %82 = load i32*, i32** %3, align 8
  %83 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %84 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @lua_pushinteger(i32* %82, i32 %85)
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @lua_setfield(i32* %87, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %89 = load i32*, i32** %3, align 8
  %90 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %91 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @lua_pushinteger(i32* %89, i32 %92)
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @lua_setfield(i32* %94, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %96 = load i32*, i32** %3, align 8
  %97 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %98 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @lua_pushinteger(i32* %96, i32 %99)
  %101 = load i32*, i32** %3, align 8
  %102 = call i32 @lua_setfield(i32* %101, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %103 = load i32*, i32** %3, align 8
  %104 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %105 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @lua_pushinteger(i32* %103, i32 %106)
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @lua_setfield(i32* %108, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %110 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %111 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = icmp ne i8 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %72
  %117 = load i32*, i32** %3, align 8
  %118 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %119 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @lua_pushstring(i32* %117, i8* %120)
  %122 = load i32*, i32** %3, align 8
  %123 = call i32 @lua_setfield(i32* %122, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  br label %124

124:                                              ; preds = %57, %67, %116, %72
  ret void
}

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
