; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_liolib.c_g_write.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_liolib.c_g_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TNUMBER = common dso_local global i64 0, align 8
@LUA_NUMBER_FMT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @g_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_write(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @lua_gettop(i32* %11)
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %14

14:                                               ; preds = %55, %3
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %7, align 4
  %17 = icmp ne i32 %15, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @lua_type(i32* %19, i32 %20)
  %22 = load i64, i64* @LUA_TNUMBER, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32*, i32** %5, align 8
  %29 = load i8*, i8** @LUA_NUMBER_FMT, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @lua_tonumber(i32* %30, i32 %31)
  %33 = call i64 @fprintf(i32* %28, i8* %29, i32 %32)
  %34 = icmp sgt i64 %33, 0
  br label %35

35:                                               ; preds = %27, %24
  %36 = phi i1 [ false, %24 ], [ %34, %27 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %8, align 4
  br label %54

38:                                               ; preds = %18
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i8* @luaL_checklstring(i32* %39, i32 %40, i64* %9)
  store i8* %41, i8** %10, align 8
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i8*, i8** %10, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i64 @fwrite(i8* %45, i32 1, i64 %46, i32* %47)
  %49 = load i64, i64* %9, align 8
  %50 = icmp eq i64 %48, %49
  br label %51

51:                                               ; preds = %44, %38
  %52 = phi i1 [ false, %38 ], [ %50, %44 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %35
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %14

58:                                               ; preds = %14
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @pushresult(i32* %59, i32 %60, i32* null)
  ret i32 %61
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i64 @fprintf(i32*, i8*, i32) #1

declare dso_local i32 @lua_tonumber(i32*, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i32 @pushresult(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
