; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_ltablib.c_tmove.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_ltablib.c_tmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAB_R = common dso_local global i32 0, align 4
@TAB_W = common dso_local global i32 0, align 4
@LUA_MAXINTEGER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"too many elements to move\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"destination wrap around\00", align 1
@LUA_OPEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @tmove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmove(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i64 @luaL_checkinteger(i32* %9, i32 2)
  store i64 %10, i64* %3, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i64 @luaL_checkinteger(i32* %11, i32 3)
  store i64 %12, i64* %4, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i64 @luaL_checkinteger(i32* %13, i32 4)
  store i64 %14, i64* %5, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @lua_isnoneornil(i32* %15, i32 5)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 5, i32 1
  store i32 %20, i32* %6, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @TAB_R, align 4
  %23 = call i32 @checktab(i32* %21, i32 1, i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @TAB_W, align 4
  %27 = call i32 @checktab(i32* %24, i32 %25, i32 %26)
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %3, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %118

31:                                               ; preds = %1
  %32 = load i32*, i32** %2, align 8
  %33 = load i64, i64* %3, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @LUA_MAXINTEGER, align 8
  %38 = load i64, i64* %3, align 8
  %39 = add nsw i64 %37, %38
  %40 = icmp slt i64 %36, %39
  br label %41

41:                                               ; preds = %35, %31
  %42 = phi i1 [ true, %31 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @luaL_argcheck(i32* %32, i32 %43, i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* %3, align 8
  %47 = sub nsw i64 %45, %46
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %7, align 8
  %49 = load i32*, i32** %2, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @LUA_MAXINTEGER, align 8
  %52 = load i64, i64* %7, align 8
  %53 = sub nsw i64 %51, %52
  %54 = add nsw i64 %53, 1
  %55 = icmp sle i64 %50, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @luaL_argcheck(i32* %49, i32 %56, i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* %4, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %74, label %61

61:                                               ; preds = %41
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %3, align 8
  %64 = icmp sle i64 %62, %63
  br i1 %64, label %74, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 1
  br i1 %67, label %68, label %95

68:                                               ; preds = %65
  %69 = load i32*, i32** %2, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @LUA_OPEQ, align 4
  %72 = call i32 @lua_compare(i32* %69, i32 1, i32 %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %95, label %74

74:                                               ; preds = %68, %61, %41
  store i64 0, i64* %8, align 8
  br label %75

75:                                               ; preds = %91, %74
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %7, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %75
  %80 = load i32*, i32** %2, align 8
  %81 = load i64, i64* %3, align 8
  %82 = load i64, i64* %8, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @lua_geti(i32* %80, i32 1, i64 %83)
  %85 = load i32*, i32** %2, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i64, i64* %5, align 8
  %88 = load i64, i64* %8, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @lua_seti(i32* %85, i32 %86, i64 %89)
  br label %91

91:                                               ; preds = %79
  %92 = load i64, i64* %8, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %8, align 8
  br label %75

94:                                               ; preds = %75
  br label %117

95:                                               ; preds = %68, %65
  %96 = load i64, i64* %7, align 8
  %97 = sub nsw i64 %96, 1
  store i64 %97, i64* %8, align 8
  br label %98

98:                                               ; preds = %113, %95
  %99 = load i64, i64* %8, align 8
  %100 = icmp sge i64 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %98
  %102 = load i32*, i32** %2, align 8
  %103 = load i64, i64* %3, align 8
  %104 = load i64, i64* %8, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @lua_geti(i32* %102, i32 1, i64 %105)
  %107 = load i32*, i32** %2, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load i64, i64* %5, align 8
  %110 = load i64, i64* %8, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @lua_seti(i32* %107, i32 %108, i64 %111)
  br label %113

113:                                              ; preds = %101
  %114 = load i64, i64* %8, align 8
  %115 = add nsw i64 %114, -1
  store i64 %115, i64* %8, align 8
  br label %98

116:                                              ; preds = %98
  br label %117

117:                                              ; preds = %116, %94
  br label %118

118:                                              ; preds = %117, %1
  %119 = load i32*, i32** %2, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @lua_pushvalue(i32* %119, i32 %120)
  ret i32 1
}

declare dso_local i64 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @lua_isnoneornil(i32*, i32) #1

declare dso_local i32 @checktab(i32*, i32, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @lua_compare(i32*, i32, i32, i32) #1

declare dso_local i32 @lua_geti(i32*, i32, i64) #1

declare dso_local i32 @lua_seti(i32*, i32, i64) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
