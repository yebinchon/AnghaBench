; ModuleID = '/home/carl/AnghaBench/xLua/WebGLPlugins/extr_ldblib.c_db_debug.c'
source_filename = "/home/carl/AnghaBench/xLua/WebGLPlugins/extr_ldblib.c_db_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"lua_debug> \00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"cont\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"=(debug command)\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @db_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_debug(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [250 x i8], align 16
  store i32* %0, i32** %2, align 8
  br label %4

4:                                                ; preds = %30, %1
  %5 = call i32 @lua_writestringerror(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %6 = getelementptr inbounds [250 x i8], [250 x i8]* %3, i64 0, i64 0
  %7 = load i32, i32* @stdin, align 4
  %8 = call i64 @fgets(i8* %6, i32 250, i32 %7)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds [250 x i8], [250 x i8]* %3, i64 0, i64 0
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %4
  ret i32 0

15:                                               ; preds = %10
  %16 = load i32*, i32** %2, align 8
  %17 = getelementptr inbounds [250 x i8], [250 x i8]* %3, i64 0, i64 0
  %18 = getelementptr inbounds [250 x i8], [250 x i8]* %3, i64 0, i64 0
  %19 = call i32 @strlen(i8* %18)
  %20 = call i64 @luaL_loadbuffer(i32* %16, i8* %17, i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = load i32*, i32** %2, align 8
  %24 = call i64 @lua_pcall(i32* %23, i32 0, i32 0, i32 0)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22, %15
  %27 = load i32*, i32** %2, align 8
  %28 = call i8* @lua_tostring(i32* %27, i32 -1)
  %29 = call i32 @lua_writestringerror(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @lua_settop(i32* %31, i32 0)
  br label %4
}

declare dso_local i32 @lua_writestringerror(i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @luaL_loadbuffer(i32*, i8*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
