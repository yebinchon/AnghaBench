; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-cluster.c_packrequest.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-cluster.c_packrequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Invalid request message\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid request session %d\00", align 1
@LUA_TNUMBER = common dso_local global i32 0, align 4
@INT32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @packrequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packrequest(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i8* @lua_touserdata(i32* %12, i32 3)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 (i32*, i8*, ...) @luaL_error(i32* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %3, align 4
  br label %79

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @luaL_checkinteger(i32* %20, i32 4)
  store i32 %21, i32* %7, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @luaL_checkinteger(i32* %22, i32 2)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @skynet_free(i8* %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 (i32*, i8*, ...) @luaL_error(i32* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  store i32 %31, i32* %3, align 4
  br label %79

32:                                               ; preds = %19
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @lua_type(i32* %33, i32 1)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @LUA_TNUMBER, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @packreq_number(i32* %39, i32 %40, i8* %41, i32 %42, i32 %43)
  store i32 %44, i32* %10, align 4
  br label %52

45:                                               ; preds = %32
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @packreq_string(i32* %46, i32 %47, i8* %48, i32 %49, i32 %50)
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %45, %38
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @INT32_MAX, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 1, i32* %11, align 4
  br label %59

59:                                               ; preds = %58, %52
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @lua_pushinteger(i32* %60, i32 %61)
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @lua_createtable(i32* %66, i32 %67, i32 0)
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @packreq_multi(i32* %69, i32 %70, i8* %71, i32 %72)
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @skynet_free(i8* %74)
  store i32 3, i32* %3, align 4
  br label %79

76:                                               ; preds = %59
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @skynet_free(i8* %77)
  store i32 2, i32* %3, align 4
  br label %79

79:                                               ; preds = %76, %65, %26, %16
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i8* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @skynet_free(i8*) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @packreq_number(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @packreq_string(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @packreq_multi(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
