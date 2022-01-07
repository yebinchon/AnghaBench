; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_luaSortArray.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_luaSortArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"sort\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"__redis__compare_helper\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaSortArray(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @lua_getglobal(i32* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @lua_pushstring(i32* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @lua_gettable(i32* %7, i32 -2)
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @lua_pushvalue(i32* %9, i32 -3)
  %11 = load i32*, i32** %2, align 8
  %12 = call i64 @lua_pcall(i32* %11, i32 1, i32 0, i32 0)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @lua_pop(i32* %15, i32 1)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @lua_pushstring(i32* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @lua_gettable(i32* %19, i32 -2)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @lua_pushvalue(i32* %21, i32 -3)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @lua_getglobal(i32* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @lua_call(i32* %25, i32 2, i32 0)
  br label %27

27:                                               ; preds = %14, %1
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @lua_pop(i32* %28, i32 1)
  ret void
}

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_gettable(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i64 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
