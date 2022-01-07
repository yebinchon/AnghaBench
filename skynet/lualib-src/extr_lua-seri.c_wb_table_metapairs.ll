; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_wb_table_metapairs.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_wb_table_metapairs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_block = type { i32 }

@TYPE_TABLE = common dso_local global i32 0, align 4
@LUA_TNIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.write_block*, i32, i32)* @wb_table_metapairs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wb_table_metapairs(i32* %0, %struct.write_block* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.write_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.write_block* %1, %struct.write_block** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @TYPE_TABLE, align 4
  %12 = call i32 @COMBINE_TYPE(i32 %11, i32 0)
  store i32 %12, i32* %9, align 4
  %13 = load %struct.write_block*, %struct.write_block** %6, align 8
  %14 = call i32 @wb_push(%struct.write_block* %13, i32* %9, i32 1)
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @lua_pushvalue(i32* %15, i32 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @lua_call(i32* %18, i32 1, i32 3)
  br label %20

20:                                               ; preds = %37, %4
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @lua_pushvalue(i32* %21, i32 -2)
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @lua_pushvalue(i32* %23, i32 -2)
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @lua_copy(i32* %25, i32 -5, i32 -3)
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @lua_call(i32* %27, i32 2, i32 2)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @lua_type(i32* %29, i32 -2)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @LUA_TNIL, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %20
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @lua_pop(i32* %35, i32 4)
  br label %48

37:                                               ; preds = %20
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.write_block*, %struct.write_block** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @pack_one(i32* %38, %struct.write_block* %39, i32 -2, i32 %40)
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.write_block*, %struct.write_block** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @pack_one(i32* %42, %struct.write_block* %43, i32 -1, i32 %44)
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @lua_pop(i32* %46, i32 1)
  br label %20

48:                                               ; preds = %34
  %49 = load %struct.write_block*, %struct.write_block** %6, align 8
  %50 = call i32 @wb_nil(%struct.write_block* %49)
  ret void
}

declare dso_local i32 @COMBINE_TYPE(i32, i32) #1

declare dso_local i32 @wb_push(%struct.write_block*, i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i32 @lua_copy(i32*, i32, i32) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @pack_one(i32*, %struct.write_block*, i32, i32) #1

declare dso_local i32 @wb_nil(%struct.write_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
