; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_lsproto.c_push_default.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_lsproto.c_push_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sproto_arg = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"__type\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Invalid type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sproto_arg*, i32)* @push_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_default(%struct.sproto_arg* %0, i32 %1) #0 {
  %3 = alloca %struct.sproto_arg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.sproto_arg* %0, %struct.sproto_arg** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %7 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %5, align 8
  %9 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %10 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %52 [
    i32 130, label %12
    i32 131, label %24
    i32 129, label %27
    i32 128, label %30
  ]

12:                                               ; preds = %2
  %13 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %14 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @lua_pushnumber(i32* %18, double 0.000000e+00)
  br label %23

20:                                               ; preds = %12
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @lua_pushinteger(i32* %21, i32 0)
  br label %23

23:                                               ; preds = %20, %17
  br label %58

24:                                               ; preds = %2
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @lua_pushboolean(i32* %25, i32 0)
  br label %58

27:                                               ; preds = %2
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @lua_pushliteral(i32* %28, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %58

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %36 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sproto_name(i32 %37)
  %39 = call i32 @lua_pushstring(i32* %34, i32 %38)
  br label %51

40:                                               ; preds = %30
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @lua_createtable(i32* %41, i32 0, i32 1)
  %43 = load i32*, i32** %5, align 8
  %44 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %45 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @sproto_name(i32 %46)
  %48 = call i32 @lua_pushstring(i32* %43, i32 %47)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @lua_setfield(i32* %49, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %40, %33
  br label %58

52:                                               ; preds = %2
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.sproto_arg*, %struct.sproto_arg** %3, align 8
  %55 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @luaL_error(i32* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %52, %51, %27, %24, %23
  ret void
}

declare dso_local i32 @lua_pushnumber(i32*, double) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @sproto_name(i32) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
