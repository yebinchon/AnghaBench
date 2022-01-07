; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_auxiliar.c_auxiliar_newclass.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_auxiliar.c_auxiliar_newclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"class\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @auxiliar_newclass(i32* %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @luaL_newmetatable(i32* %7, i8* %8)
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @lua_pushstring(i32* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @lua_newtable(i32* %12)
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @lua_pushstring(i32* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32*, i32** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @lua_pushstring(i32* %16, i8* %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @lua_rawset(i32* %19, i32 -3)
  br label %21

21:                                               ; preds = %48, %3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %51

26:                                               ; preds = %21
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @lua_pushstring(i32* %27, i8* %30)
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @lua_pushcfunction(i32* %32, i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 95
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 -5, i32 -3
  %47 = call i32 @lua_rawset(i32* %37, i32 %46)
  br label %48

48:                                               ; preds = %26
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 1
  store %struct.TYPE_3__* %50, %struct.TYPE_3__** %6, align 8
  br label %21

51:                                               ; preds = %21
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @lua_rawset(i32* %52, i32 -3)
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @lua_pop(i32* %54, i32 1)
  ret void
}

declare dso_local i32 @luaL_newmetatable(i32*, i8*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
