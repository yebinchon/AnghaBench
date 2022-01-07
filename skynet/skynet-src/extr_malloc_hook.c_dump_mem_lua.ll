; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_malloc_hook.c_dump_mem_lua.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_malloc_hook.c_dump_mem_lua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_data = type { i64, i64 }

@SLOT_SIZE = common dso_local global i32 0, align 4
@mem_stats = common dso_local global %struct.mem_data* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dump_mem_lua(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mem_data*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @lua_newtable(i32* %5)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %38, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @SLOT_SIZE, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %41

11:                                               ; preds = %7
  %12 = load %struct.mem_data*, %struct.mem_data** @mem_stats, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %12, i64 %14
  store %struct.mem_data* %15, %struct.mem_data** %4, align 8
  %16 = load %struct.mem_data*, %struct.mem_data** %4, align 8
  %17 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %11
  %21 = load %struct.mem_data*, %struct.mem_data** %4, align 8
  %22 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load i32*, i32** %2, align 8
  %27 = load %struct.mem_data*, %struct.mem_data** %4, align 8
  %28 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @lua_pushinteger(i32* %26, i64 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = load %struct.mem_data*, %struct.mem_data** %4, align 8
  %33 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @lua_rawseti(i32* %31, i32 -2, i32 %35)
  br label %37

37:                                               ; preds = %25, %20, %11
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %7

41:                                               ; preds = %7
  ret i32 1
}

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i64) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
