; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_ldblib.c_db_debug.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_ldblib.c_db_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"lua_debug> \00", align 1
@stderr = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"cont\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"=(debug command)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @db_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_debug(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [250 x i8], align 16
  store i32* %0, i32** %2, align 8
  br label %4

4:                                                ; preds = %34, %1
  %5 = load i32, i32* @stderr, align 4
  %6 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = getelementptr inbounds [250 x i8], [250 x i8]* %3, i64 0, i64 0
  %8 = load i32, i32* @stdin, align 4
  %9 = call i64 @fgets(i8* %7, i32 250, i32 %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds [250 x i8], [250 x i8]* %3, i64 0, i64 0
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %4
  ret i32 0

16:                                               ; preds = %11
  %17 = load i32*, i32** %2, align 8
  %18 = getelementptr inbounds [250 x i8], [250 x i8]* %3, i64 0, i64 0
  %19 = getelementptr inbounds [250 x i8], [250 x i8]* %3, i64 0, i64 0
  %20 = call i32 @strlen(i8* %19)
  %21 = call i64 @luaL_loadbuffer(i32* %17, i8* %18, i32 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = load i32*, i32** %2, align 8
  %25 = call i64 @lua_pcall(i32* %24, i32 0, i32 0, i32 0)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23, %16
  %28 = load i32*, i32** %2, align 8
  %29 = call i8* @lua_tostring(i32* %28, i32 -1)
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 @fputs(i8* %29, i32 %30)
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %27, %23
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @lua_settop(i32* %35, i32 0)
  br label %4
}

declare dso_local i32 @fputs(i8*, i32) #1

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
