; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_unix.c_luaopen_socket_unix.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_unix.c_luaopen_socket_unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"unix{master}\00", align 1
@unix_methods = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"unix{client}\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"unix{server}\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"unix{any}\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@func = common dso_local global i32 0, align 4
@global_create = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaopen_socket_unix(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @unix_methods, align 4
  %5 = call i32 @auxiliar_newclass(i32* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @unix_methods, align 4
  %8 = call i32 @auxiliar_newclass(i32* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @unix_methods, align 4
  %11 = call i32 @auxiliar_newclass(i32* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %10)
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @auxiliar_add2group(i32* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @auxiliar_add2group(i32* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @auxiliar_add2group(i32* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @func, align 4
  %20 = call i32 @luaL_openlib(i32* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %19, i32 0)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @global_create, align 4
  %23 = call i32 @lua_pushcfunction(i32* %21, i32 %22)
  ret i32 1
}

declare dso_local i32 @auxiliar_newclass(i32*, i8*, i32) #1

declare dso_local i32 @auxiliar_add2group(i32*, i8*, i8*) #1

declare dso_local i32 @luaL_openlib(i32*, i8*, i32, i32) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
