; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_wb_table_hash.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_wb_table_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_block = type { i32 }

@LUA_TNUMBER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.write_block*, i32, i32, i32)* @wb_table_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wb_table_hash(i32* %0, %struct.write_block* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.write_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.write_block* %1, %struct.write_block** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @lua_pushnil(i32* %12)
  br label %14

14:                                               ; preds = %42, %37, %5
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @lua_next(i32* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %14
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @lua_type(i32* %20, i32 -2)
  %22 = load i64, i64* @LUA_TNUMBER, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load i32*, i32** %6, align 8
  %26 = call i64 @lua_isinteger(i32* %25, i32 -2)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @lua_tointeger(i32* %29, i32 -2)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @lua_pop(i32* %38, i32 1)
  br label %14

40:                                               ; preds = %33, %28
  br label %41

41:                                               ; preds = %40, %24
  br label %42

42:                                               ; preds = %41, %19
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.write_block*, %struct.write_block** %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @pack_one(i32* %43, %struct.write_block* %44, i32 -2, i32 %45)
  %47 = load i32*, i32** %6, align 8
  %48 = load %struct.write_block*, %struct.write_block** %7, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @pack_one(i32* %47, %struct.write_block* %48, i32 -1, i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @lua_pop(i32* %51, i32 1)
  br label %14

53:                                               ; preds = %14
  %54 = load %struct.write_block*, %struct.write_block** %7, align 8
  %55 = call i32 @wb_nil(%struct.write_block* %54)
  ret void
}

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i64 @lua_isinteger(i32*, i32) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @pack_one(i32*, %struct.write_block*, i32, i32) #1

declare dso_local i32 @wb_nil(%struct.write_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
