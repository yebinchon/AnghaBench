; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbEval.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbEval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"return \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"@ldb_eval\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"<error> %s\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"<retval> \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldbEval(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = load i32, i32* %6, align 4
  %12 = sub nsw i32 %11, 1
  %13 = call i32 @sdsjoinsds(i32* %10, i32 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %13, i32* %7, align 4
  %14 = call i32 @sdsnew(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @sdscatsds(i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @sdslen(i32 %19)
  %21 = call i64 @luaL_loadbuffer(i32* %17, i32 %18, i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %3
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @lua_pop(i32* %24, i32 1)
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @sdslen(i32 %28)
  %30 = call i64 @luaL_loadbuffer(i32* %26, i32 %27, i32 %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %23
  %33 = call i32 (...) @sdsempty()
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @lua_tostring(i32* %34, i32 -1)
  %36 = call i32 @sdscatfmt(i32 %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = call i32 @ldbLog(i32 %36)
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @lua_pop(i32* %38, i32 1)
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @sdsfree(i32 %40)
  br label %64

42:                                               ; preds = %23
  br label %43

43:                                               ; preds = %42, %3
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @sdsfree(i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @sdsfree(i32 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = call i64 @lua_pcall(i32* %48, i32 0, i32 1, i32 0)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = call i32 (...) @sdsempty()
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @lua_tostring(i32* %53, i32 -1)
  %55 = call i32 @sdscatfmt(i32 %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = call i32 @ldbLog(i32 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @lua_pop(i32* %57, i32 1)
  br label %64

59:                                               ; preds = %43
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @ldbLogStackValue(i32* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @lua_pop(i32* %62, i32 1)
  br label %64

64:                                               ; preds = %59, %51, %32
  ret void
}

declare dso_local i32 @sdsjoinsds(i32*, i32, i8*, i32) #1

declare dso_local i32 @sdscatsds(i32, i32) #1

declare dso_local i32 @sdsnew(i8*) #1

declare dso_local i64 @luaL_loadbuffer(i32*, i32, i32, i8*) #1

declare dso_local i32 @sdslen(i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @ldbLog(i32) #1

declare dso_local i32 @sdscatfmt(i32, i8*, i32) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i64 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32 @ldbLogStackValue(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
