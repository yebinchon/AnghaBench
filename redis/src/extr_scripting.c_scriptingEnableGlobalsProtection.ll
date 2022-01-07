; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_scriptingEnableGlobalsProtection.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_scriptingEnableGlobalsProtection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"local dbg=debug\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"local mt = {}\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"setmetatable(_G, mt)\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"mt.__newindex = function (t, n, v)\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"  if dbg.getinfo(2) then\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"    local w = dbg.getinfo(2, \22S\22).what\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"    if w ~= \22main\22 and w ~= \22C\22 then\0A\00", align 1
@.str.7 = private unnamed_addr constant [82 x i8] c"      error(\22Script attempted to create global variable '\22..tostring(n)..\22'\22, 2)\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"    end\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"  end\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"  rawset(t, n, v)\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"end\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"mt.__index = function (t, n)\0A\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"  if dbg.getinfo(2) and dbg.getinfo(2, \22S\22).what ~= \22C\22 then\0A\00", align 1
@.str.14 = private unnamed_addr constant [92 x i8] c"    error(\22Script attempted to access nonexistent global variable '\22..tostring(n)..\22'\22, 2)\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"  return rawget(t, n)\0A\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"debug = nil\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"@enable_strict_lua\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scriptingEnableGlobalsProtection(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [32 x i8*], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = call i32 (...) @sdsempty()
  store i32 %6, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %5, align 4
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 %9
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 %13
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %5, align 4
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 %17
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 %21
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8** %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 %25
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8** %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 %29
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8** %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 %33
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8** %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 %37
  store i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.7, i64 0, i64 0), i8** %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 %41
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 %45
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 %49
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8** %50, align 8
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 %53
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %54, align 8
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 %57
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i8** %58, align 8
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 %61
  store i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i64 0, i64 0), i8** %62, align 8
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 %65
  store i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.14, i64 0, i64 0), i8** %66, align 8
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 %69
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %70, align 8
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 %73
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i8** %74, align 8
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 %77
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %78, align 8
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 %81
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8** %82, align 8
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 %85
  store i8* null, i8** %86, align 8
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %105, %1
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %108

93:                                               ; preds = %87
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @strlen(i8* %102)
  %104 = call i32 @sdscatlen(i32 %94, i8* %98, i32 %103)
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %93
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %87

108:                                              ; preds = %87
  %109 = load i32*, i32** %2, align 8
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @sdslen(i32 %111)
  %113 = call i32 @luaL_loadbuffer(i32* %109, i32 %110, i32 %112, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  %114 = load i32*, i32** %2, align 8
  %115 = call i32 @lua_pcall(i32* %114, i32 0, i32 0, i32 0)
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @sdsfree(i32 %116)
  ret void
}

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @luaL_loadbuffer(i32*, i32, i32, i8*) #1

declare dso_local i32 @sdslen(i32) #1

declare dso_local i32 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32 @sdsfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
