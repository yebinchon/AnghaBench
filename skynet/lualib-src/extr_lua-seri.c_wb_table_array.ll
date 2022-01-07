; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_wb_table_array.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_wb_table_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_block = type { i32 }

@MAX_COOKIE = common dso_local global i32 0, align 4
@TYPE_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.write_block*, i32, i32)* @wb_table_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wb_table_array(i32* %0, %struct.write_block* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.write_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.write_block* %1, %struct.write_block** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @lua_rawlen(i32* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @MAX_COOKIE, align 4
  %18 = sub nsw i32 %17, 1
  %19 = icmp sge i32 %16, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %4
  %21 = load i32, i32* @TYPE_TABLE, align 4
  %22 = load i32, i32* @MAX_COOKIE, align 4
  %23 = sub nsw i32 %22, 1
  %24 = call i32 @COMBINE_TYPE(i32 %21, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.write_block*, %struct.write_block** %6, align 8
  %26 = call i32 @wb_push(%struct.write_block* %25, i32* %10, i32 1)
  %27 = load %struct.write_block*, %struct.write_block** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @wb_integer(%struct.write_block* %27, i32 %28)
  br label %36

30:                                               ; preds = %4
  %31 = load i32, i32* @TYPE_TABLE, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @COMBINE_TYPE(i32 %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load %struct.write_block*, %struct.write_block** %6, align 8
  %35 = call i32 @wb_push(%struct.write_block* %34, i32* %11, i32 1)
  br label %36

36:                                               ; preds = %30, %20
  store i32 1, i32* %12, align 4
  br label %37

37:                                               ; preds = %52, %36
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @lua_rawgeti(i32* %42, i32 %43, i32 %44)
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.write_block*, %struct.write_block** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @pack_one(i32* %46, %struct.write_block* %47, i32 -1, i32 %48)
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @lua_pop(i32* %50, i32 1)
  br label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  br label %37

55:                                               ; preds = %37
  %56 = load i32, i32* %9, align 4
  ret i32 %56
}

declare dso_local i32 @lua_rawlen(i32*, i32) #1

declare dso_local i32 @COMBINE_TYPE(i32, i32) #1

declare dso_local i32 @wb_push(%struct.write_block*, i32*, i32) #1

declare dso_local i32 @wb_integer(%struct.write_block*, i32) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i32 @pack_one(i32*, %struct.write_block*, i32, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
