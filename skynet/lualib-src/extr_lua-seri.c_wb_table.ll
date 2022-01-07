; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_wb_table.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_wb_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_block = type { i32 }

@LUA_MINSTACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"__pairs\00", align 1
@LUA_TNIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.write_block*, i32, i32)* @wb_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wb_table(i32* %0, %struct.write_block* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.write_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.write_block* %1, %struct.write_block** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* @LUA_MINSTACK, align 4
  %12 = call i32 @luaL_checkstack(i32* %10, i32 %11, i32* null)
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @lua_gettop(i32* %16)
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %17, %18
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %15, %4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @luaL_getmetafield(i32* %22, i32 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %25 = load i64, i64* @LUA_TNIL, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.write_block*, %struct.write_block** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @wb_table_metapairs(i32* %28, %struct.write_block* %29, i32 %30, i32 %31)
  br label %45

33:                                               ; preds = %21
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.write_block*, %struct.write_block** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @wb_table_array(i32* %34, %struct.write_block* %35, i32 %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.write_block*, %struct.write_block** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @wb_table_hash(i32* %39, %struct.write_block* %40, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %33, %27
  ret void
}

declare dso_local i32 @luaL_checkstack(i32*, i32, i32*) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i64 @luaL_getmetafield(i32*, i32, i8*) #1

declare dso_local i32 @wb_table_metapairs(i32*, %struct.write_block*, i32, i32) #1

declare dso_local i32 @wb_table_array(i32*, %struct.write_block*, i32, i32) #1

declare dso_local i32 @wb_table_hash(i32*, %struct.write_block*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
