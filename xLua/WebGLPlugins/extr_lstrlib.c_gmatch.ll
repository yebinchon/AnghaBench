; ModuleID = '/home/carl/AnghaBench/xLua/WebGLPlugins/extr_lstrlib.c_gmatch.c'
source_filename = "/home/carl/AnghaBench/xLua/WebGLPlugins/extr_lstrlib.c_gmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i32*, i32 }

@gmatch_aux = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @gmatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmatch(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i8* @luaL_checklstring(i32* %8, i32 1, i64* %3)
  store i8* %9, i8** %5, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i8* @luaL_checklstring(i32* %10, i32 2, i64* %4)
  store i8* %11, i8** %6, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @lua_settop(i32* %12, i32 2)
  %14 = load i32*, i32** %2, align 8
  %15 = call i64 @lua_newuserdata(i32* %14, i32 32)
  %16 = inttoptr i64 %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %7, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load i32*, i32** %2, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @prepstate(i32* %18, i32* %19, i8* %20, i64 %21, i8* %22, i64 %23)
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i32* null, i32** %32, align 8
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* @gmatch_aux, align 4
  %35 = call i32 @lua_pushcclosure(i32* %33, i32 %34, i32 3)
  ret i32 1
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i64 @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @prepstate(i32*, i32*, i8*, i64, i8*, i64) #1

declare dso_local i32 @lua_pushcclosure(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
