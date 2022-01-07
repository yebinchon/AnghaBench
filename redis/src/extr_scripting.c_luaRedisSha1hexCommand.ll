; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_luaRedisSha1hexCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_luaRedisSha1hexCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"wrong number of arguments\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaRedisSha1hexCommand(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [41 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @lua_gettop(i32* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @lua_pushstring(i32* %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @lua_error(i32* %15)
  store i32 %16, i32* %2, align 4
  br label %28

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @lua_tolstring(i32* %18, i32 1, i64* %6)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %7, align 8
  %21 = getelementptr inbounds [41 x i8], [41 x i8]* %5, i64 0, i64 0
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @sha1hex(i8* %21, i8* %22, i64 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds [41 x i8], [41 x i8]* %5, i64 0, i64 0
  %27 = call i32 @lua_pushstring(i32* %25, i8* %26)
  store i32 1, i32* %2, align 4
  br label %28

28:                                               ; preds = %17, %12
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_error(i32*) #1

declare dso_local i64 @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @sha1hex(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
