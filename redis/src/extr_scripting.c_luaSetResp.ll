; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_luaSetResp.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_luaSetResp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"redis.setresp() requires one argument.\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"RESP version must be 2 or 3.\00", align 1
@server = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaSetResp(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @lua_gettop(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @lua_pushstring(i32* %11, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @lua_error(i32* %13)
  store i32 %14, i32* %2, align 4
  br label %34

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 0, %17
  %19 = call i32 @lua_tonumber(i32* %16, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 2
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 3
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @lua_pushstring(i32* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @lua_error(i32* %28)
  store i32 %29, i32* %2, align 4
  br label %34

30:                                               ; preds = %22, %15
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %25, %10
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_error(i32*) #1

declare dso_local i32 @lua_tonumber(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
