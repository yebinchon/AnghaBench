; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_strings.c_vlclua_from_charset.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_strings.c_vlclua_from_charset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_from_charset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_from_charset(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @lua_gettop(i32* %8)
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @vlclua_error(i32* %12)
  store i32 %13, i32* %2, align 4
  br label %40

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i8* @luaL_checklstring(i32* %15, i32 2, i64* %4)
  store i8* %16, i8** %5, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @vlclua_error(i32* %20)
  store i32 %21, i32* %2, align 4
  br label %40

22:                                               ; preds = %14
  %23 = load i32*, i32** %3, align 8
  %24 = call i8* @luaL_checkstring(i32* %23, i32 1)
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i8* @FromCharset(i8* %25, i8* %26, i64 %27)
  store i8* %28, i8** %7, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i8*, i8** %7, align 8
  br label %35

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i8* [ %33, %32 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %34 ]
  %37 = call i32 @lua_pushstring(i32* %29, i8* %36)
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @free(i8* %38)
  store i32 1, i32* %2, align 4
  br label %40

40:                                               ; preds = %35, %19, %11
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @vlclua_error(i32*) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i8* @FromCharset(i8*, i8*, i64) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
