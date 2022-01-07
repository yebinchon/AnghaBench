; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cmsgpack.c_mp_encode_lua_type.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cmsgpack.c_mp_encode_lua_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUACMSGPACK_MAX_NESTING = common dso_local global i32 0, align 4
@LUA_TNIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_encode_lua_type(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @lua_type(i32* %8, i32 -1)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 128
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @LUACMSGPACK_MAX_NESTING, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @LUA_TNIL, align 4
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %16, %12, %3
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %37 [
    i32 129, label %20
    i32 131, label %24
    i32 130, label %28
    i32 128, label %32
  ]

20:                                               ; preds = %18
  %21 = load i32*, i32** %4, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @mp_encode_lua_string(i32* %21, i32* %22)
  br label %41

24:                                               ; preds = %18
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @mp_encode_lua_bool(i32* %25, i32* %26)
  br label %41

28:                                               ; preds = %18
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @mp_encode_lua_number(i32* %29, i32* %30)
  br label %41

32:                                               ; preds = %18
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @mp_encode_lua_table(i32* %33, i32* %34, i32 %35)
  br label %41

37:                                               ; preds = %18
  %38 = load i32*, i32** %4, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @mp_encode_lua_null(i32* %38, i32* %39)
  br label %41

41:                                               ; preds = %37, %32, %28, %24, %20
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @lua_pop(i32* %42, i32 1)
  ret void
}

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @mp_encode_lua_string(i32*, i32*) #1

declare dso_local i32 @mp_encode_lua_bool(i32*, i32*) #1

declare dso_local i32 @mp_encode_lua_number(i32*, i32*) #1

declare dso_local i32 @mp_encode_lua_table(i32*, i32*, i32) #1

declare dso_local i32 @mp_encode_lua_null(i32*, i32*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
