; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_loadlib_rel.c_setprogdir.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_loadlib_rel.c_setprogdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"/proc/self/exe\00", align 1
@LUA_DIRSEP = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"unable to get process executable path\00", align 1
@LUA_EXEC_DIR = common dso_local global i32 0, align 4
@CCP_WIN_A_TO_POSIX = common dso_local global i32 0, align 4
@CTL_KERN = common dso_local global i32 0, align 4
@KERN_PROC = common dso_local global i32 0, align 4
@KERN_PROC_PATHNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @setprogdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setprogdir(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32, i32* @_PATH_MAX, align 4
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = udiv i64 %10, 1
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @readlink(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %12, i64 %21
  store i8 0, i8* %22, align 1
  br label %23

23:                                               ; preds = %19, %1
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = load i64*, i64** @LUA_DIRSEP, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i8* @strrchr(i8* %12, i32 %34)
  store i8* %35, i8** %5, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %30, %26, %23
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @luaL_error(i32* %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %49

40:                                               ; preds = %30
  %41 = load i8*, i8** %5, align 8
  store i8 0, i8* %41, align 1
  %42 = load i32*, i32** %2, align 8
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @lua_tostring(i32* %43, i32 -1)
  %45 = load i32, i32* @LUA_EXEC_DIR, align 4
  %46 = call i32 @luaL_gsub(i32* %42, i32 %44, i32 %45, i8* %12)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @lua_remove(i32* %47, i32 -2)
  br label %49

49:                                               ; preds = %40, %37
  %50 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %50)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @readlink(i8*, i8*, i32) #2

declare dso_local i8* @strrchr(i8*, i32) #2

declare dso_local i32 @luaL_error(i32*, i8*) #2

declare dso_local i32 @luaL_gsub(i32*, i32, i32, i8*) #2

declare dso_local i32 @lua_tostring(i32*, i32) #2

declare dso_local i32 @lua_remove(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
