; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_loadlib.c_loader_Lua.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_loadlib.c_loader_Lua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"path\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @loader_Lua to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loader_Lua(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i8* @luaL_checkstring(i32* %6, i32 1)
  store i8* %7, i8** %5, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i8* @findfile(i32* %8, i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %24

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @luaL_loadfile(i32* %15, i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32*, i32** %3, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @loaderror(i32* %20, i8* %21)
  br label %23

23:                                               ; preds = %19, %14
  store i32 1, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %13
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i8* @findfile(i32*, i8*, i8*) #1

declare dso_local i64 @luaL_loadfile(i32*, i8*) #1

declare dso_local i32 @loaderror(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
