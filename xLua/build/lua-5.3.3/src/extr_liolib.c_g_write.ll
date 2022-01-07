; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_liolib.c_g_write.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_liolib.c_g_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TNUMBER = common dso_local global i64 0, align 8
@LUA_INTEGER_FMT = common dso_local global i8* null, align 8
@LUA_NUMBER_FMT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @g_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_write(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @lua_gettop(i32* %13)
  %15 = load i32, i32* %7, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %17

17:                                               ; preds = %73, %3
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %8, align 4
  %20 = icmp ne i32 %18, 0
  br i1 %20, label %21, label %76

21:                                               ; preds = %17
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @lua_type(i32* %22, i32 %23)
  %25 = load i64, i64* @LUA_TNUMBER, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %21
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @lua_isinteger(i32* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32*, i32** %6, align 8
  %34 = load i8*, i8** @LUA_INTEGER_FMT, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @lua_tointeger(i32* %35, i32 %36)
  %38 = call i32 @fprintf(i32* %33, i8* %34, i32 %37)
  br label %46

39:                                               ; preds = %27
  %40 = load i32*, i32** %6, align 8
  %41 = load i8*, i8** @LUA_NUMBER_FMT, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @lua_tonumber(i32* %42, i32 %43)
  %45 = call i32 @fprintf(i32* %40, i8* %41, i32 %44)
  br label %46

46:                                               ; preds = %39, %32
  %47 = phi i32 [ %38, %32 ], [ %45, %39 ]
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  %52 = icmp sgt i32 %51, 0
  br label %53

53:                                               ; preds = %50, %46
  %54 = phi i1 [ false, %46 ], [ %52, %50 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %9, align 4
  br label %72

56:                                               ; preds = %21
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i8* @luaL_checklstring(i32* %57, i32 %58, i64* %11)
  store i8* %59, i8** %12, align 8
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load i8*, i8** %12, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = call i64 @fwrite(i8* %63, i32 1, i64 %64, i32* %65)
  %67 = load i64, i64* %11, align 8
  %68 = icmp eq i64 %66, %67
  br label %69

69:                                               ; preds = %62, %56
  %70 = phi i1 [ false, %56 ], [ %68, %62 ]
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %69, %53
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %17

76:                                               ; preds = %17
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 1, i32* %4, align 4
  br label %84

80:                                               ; preds = %76
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @luaL_fileresult(i32* %81, i32 %82, i32* null)
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %80, %79
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i64 @lua_isinteger(i32*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @lua_tonumber(i32*, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i32 @luaL_fileresult(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
