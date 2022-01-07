; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_liolib.c_io_readline.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_liolib.c_io_readline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"file is already closed\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"too many arguments\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @io_readline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_readline(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @lua_upvalueindex(i32 1)
  %9 = call i64 @lua_touserdata(i32* %7, i32 %8)
  %10 = inttoptr i64 %9 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @lua_upvalueindex(i32 2)
  %13 = call i64 @lua_tointeger(i32* %11, i32 %12)
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = call i64 @isclosed(%struct.TYPE_3__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 (i32*, i8*, ...) @luaL_error(i32* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %2, align 4
  br label %82

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @lua_settop(i32* %22, i32 1)
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @luaL_checkstack(i32* %24, i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %27

27:                                               ; preds = %37, %21
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 3, %33
  %35 = call i32 @lua_upvalueindex(i32 %34)
  %36 = call i32 @lua_pushvalue(i32* %32, i32 %35)
  br label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %27

40:                                               ; preds = %27
  %41 = load i32*, i32** %3, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @g_read(i32* %41, i32 %44, i32 2)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp sgt i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @lua_assert(i32 %48)
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 0, %51
  %53 = call i64 @lua_toboolean(i32* %50, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %40
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %82

57:                                               ; preds = %40
  %58 = load i32, i32* %6, align 4
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load i32*, i32** %3, align 8
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sub nsw i32 0, %63
  %65 = add nsw i32 %64, 1
  %66 = call i32 @lua_tostring(i32* %62, i32 %65)
  %67 = call i32 (i32*, i8*, ...) @luaL_error(i32* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  store i32 %67, i32* %2, align 4
  br label %82

68:                                               ; preds = %57
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @lua_upvalueindex(i32 3)
  %71 = call i64 @lua_toboolean(i32* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @lua_settop(i32* %74, i32 0)
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @lua_upvalueindex(i32 1)
  %78 = call i32 @lua_pushvalue(i32* %76, i32 %77)
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @aux_close(i32* %79)
  br label %81

81:                                               ; preds = %73, %68
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %60, %55, %18
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i64 @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i64 @lua_tointeger(i32*, i32) #1

declare dso_local i64 @isclosed(%struct.TYPE_3__*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @luaL_checkstack(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @g_read(i32*, i32, i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i32 @aux_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
