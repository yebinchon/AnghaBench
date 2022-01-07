; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_luajit.c_loadline.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_luajit.c_loadline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"=stdin\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @loadline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loadline(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @lua_settop(i32* %5, i32 0)
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @pushline(i32* %7, i32 1)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %40

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %29, %11
  %13 = load i32*, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @lua_tostring(i32* %14, i32 1)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @lua_strlen(i32* %16, i32 1)
  %18 = call i32 @luaL_loadbuffer(i32* %13, i32 %15, i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %4, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @incomplete(i32* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %12
  br label %36

24:                                               ; preds = %12
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @pushline(i32* %25, i32 0)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i32 -1, i32* %2, align 4
  br label %40

29:                                               ; preds = %24
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @lua_pushliteral(i32* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @lua_insert(i32* %32, i32 -2)
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @lua_concat(i32* %34, i32 3)
  br label %12

36:                                               ; preds = %23
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @lua_remove(i32* %37, i32 1)
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %36, %28, %10
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @pushline(i32*, i32) #1

declare dso_local i32 @luaL_loadbuffer(i32*, i32, i32, i8*) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_strlen(i32*, i32) #1

declare dso_local i32 @incomplete(i32*, i32) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i32 @lua_concat(i32*, i32) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
