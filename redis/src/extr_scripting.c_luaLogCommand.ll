; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_luaLogCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_luaLogCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"redis.log() requires two arguments or more.\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"First argument must be a number (log level).\00", align 1
@LL_DEBUG = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Invalid debug level.\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaLogCommand(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @lua_gettop(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @lua_pushstring(i32* %15, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @lua_error(i32* %17)
  store i32 %18, i32* %2, align 4
  br label %85

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 0, %21
  %23 = call i32 @lua_isnumber(i32* %20, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @lua_pushstring(i32* %26, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @lua_error(i32* %28)
  store i32 %29, i32* %2, align 4
  br label %85

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sub nsw i32 0, %33
  %35 = call i32 @lua_tonumber(i32* %32, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @LL_DEBUG, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @LL_WARNING, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39, %31
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @lua_pushstring(i32* %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @lua_error(i32* %46)
  store i32 %47, i32* %2, align 4
  br label %85

48:                                               ; preds = %39
  %49 = call i32 (...) @sdsempty()
  store i32 %49, i32* %7, align 4
  store i32 1, i32* %4, align 4
  br label %50

50:                                               ; preds = %76, %48
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %50
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sub nsw i32 0, %56
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %57, %58
  %60 = call i64 @lua_tolstring(i32* %55, i32 %59, i64* %8)
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** %9, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %54
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 1
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @sdscatlen(i32 %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 1)
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* %7, align 4
  %72 = load i8*, i8** %9, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @sdscatlen(i32 %71, i8* %72, i64 %73)
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %70, %54
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %50

79:                                               ; preds = %50
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @serverLogRaw(i32 %80, i32 %81)
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @sdsfree(i32 %83)
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %79, %43, %25, %14
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_error(i32*) #1

declare dso_local i32 @lua_isnumber(i32*, i32) #1

declare dso_local i32 @lua_tonumber(i32*, i32) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i64 @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @sdscatlen(i32, i8*, i64) #1

declare dso_local i32 @serverLogRaw(i32, i32) #1

declare dso_local i32 @sdsfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
