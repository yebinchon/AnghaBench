; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_concat_table.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_concat_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TNIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Invalid strings table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i64)* @concat_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @concat_table(i32* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %9, align 8
  store i32 1, i32* %10, align 4
  br label %14

14:                                               ; preds = %44, %4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i64 @lua_geti(i32* %15, i32 %16, i32 %17)
  %19 = load i64, i64* @LUA_TNIL, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %14
  %22 = load i32*, i32** %5, align 8
  %23 = call i8* @lua_tolstring(i32* %22, i32 -1, i64* %11)
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %21
  br label %47

31:                                               ; preds = %26
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @memcpy(i8* %32, i8* %33, i64 %34)
  %36 = load i64, i64* %11, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 %36
  store i8* %38, i8** %9, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %8, align 8
  %41 = sub i64 %40, %39
  store i64 %41, i64* %8, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @lua_pop(i32* %42, i32 1)
  br label %44

44:                                               ; preds = %31
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %14

47:                                               ; preds = %30, %14
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @skynet_free(i8* %51)
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @luaL_error(i32* %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %50, %47
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @lua_pop(i32* %56, i32 1)
  ret void
}

declare dso_local i64 @lua_geti(i32*, i32, i32) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @skynet_free(i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
