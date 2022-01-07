; ModuleID = '/home/carl/AnghaBench/xLua/WebGLPlugins/extr_ltable.c_luaH_getshortstr.c'
source_filename = "/home/carl/AnghaBench/xLua/WebGLPlugins/extr_ltable.c_luaH_getshortstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@LUA_TSHRSTR = common dso_local global i64 0, align 8
@luaO_nilobject = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @luaH_getshortstr(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = call i32* @hashstr(i32* %9, %struct.TYPE_5__* %10)
  store i32* %11, i32** %6, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @LUA_TSHRSTR, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @lua_assert(i32 %17)
  br label %19

19:                                               ; preds = %46, %2
  %20 = load i32*, i32** %6, align 8
  %21 = call i32* @gkey(i32* %20)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @ttisshrstring(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @tsvalue(i32* %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = call i64 @eqshrstr(i32 %27, %struct.TYPE_5__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32*, i32** %6, align 8
  %33 = call i32* @gval(i32* %32)
  store i32* %33, i32** %3, align 8
  br label %47

34:                                               ; preds = %25, %19
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @gnext(i32* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32*, i32** @luaO_nilobject, align 8
  store i32* %40, i32** %3, align 8
  br label %47

41:                                               ; preds = %34
  %42 = load i32, i32* %8, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32* %45, i32** %6, align 8
  br label %46

46:                                               ; preds = %41
  br label %19

47:                                               ; preds = %39, %31
  %48 = load i32*, i32** %3, align 8
  ret i32* %48
}

declare dso_local i32* @hashstr(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32* @gkey(i32*) #1

declare dso_local i64 @ttisshrstring(i32*) #1

declare dso_local i64 @eqshrstr(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @tsvalue(i32*) #1

declare dso_local i32* @gval(i32*) #1

declare dso_local i32 @gnext(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
