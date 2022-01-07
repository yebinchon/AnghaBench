; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_buffer.c_buffer_meth_send.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_buffer.c_buffer_meth_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32 (i32, i32)* }

@IO_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @buffer_meth_send(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @lua_gettop(i32* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @IO_DONE, align 4
  store i32 %14, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i8* @luaL_checklstring(i32* %15, i32 2, i64* %7)
  store i8* %16, i8** %9, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @luaL_optnumber(i32* %17, i32 3, i32 1)
  store i64 %18, i64* %10, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @luaL_optnumber(i32* %19, i32 4, i32 -1)
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %10, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %10, align 8
  %26 = add i64 %24, %25
  %27 = add i64 %26, 1
  store i64 %27, i64* %10, align 8
  br label %28

28:                                               ; preds = %23, %2
  %29 = load i64, i64* %11, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %11, align 8
  %34 = add i64 %32, %33
  %35 = add i64 %34, 1
  store i64 %35, i64* %11, align 8
  br label %36

36:                                               ; preds = %31, %28
  %37 = load i64, i64* %10, align 8
  %38 = icmp slt i64 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i64 1, i64* %10, align 8
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i64, i64* %7, align 8
  store i64 %45, i64* %11, align 8
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = getelementptr inbounds i8, i8* %54, i64 -1
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %10, align 8
  %58 = sub nsw i64 %56, %57
  %59 = add nsw i64 %58, 1
  %60 = call i32 @sendraw(%struct.TYPE_6__* %51, i8* %55, i64 %59, i64* %8)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %50, %46
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @IO_DONE, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %61
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @lua_pushnil(i32* %66)
  %68 = load i32*, i32** %3, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32 (i32, i32)*, i32 (i32, i32)** %72, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 %73(i32 %78, i32 %79)
  %81 = call i32 @lua_pushstring(i32* %68, i32 %80)
  %82 = load i32*, i32** %3, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* %10, align 8
  %85 = add i64 %83, %84
  %86 = sub i64 %85, 1
  %87 = call i32 @lua_pushnumber(i32* %82, i64 %86)
  br label %99

88:                                               ; preds = %61
  %89 = load i32*, i32** %3, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* %10, align 8
  %92 = add i64 %90, %91
  %93 = sub i64 %92, 1
  %94 = call i32 @lua_pushnumber(i32* %89, i64 %93)
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 @lua_pushnil(i32* %95)
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 @lua_pushnil(i32* %97)
  br label %99

99:                                               ; preds = %88, %65
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @lua_gettop(i32* %100)
  %102 = load i32, i32* %5, align 4
  %103 = sub nsw i32 %101, %102
  ret i32 %103
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i64 @luaL_optnumber(i32*, i32, i32) #1

declare dso_local i32 @sendraw(%struct.TYPE_6__*, i8*, i64, i64*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @lua_pushnumber(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
