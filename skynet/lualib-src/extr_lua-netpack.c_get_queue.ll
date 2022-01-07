; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-netpack.c_get_queue.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-netpack.c_get_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue = type { i32**, i64, i64, i32 }

@QUEUESIZE = common dso_local global i32 0, align 4
@HASHSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.queue* (i32*)* @get_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.queue* @get_queue(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.queue*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.queue* @lua_touserdata(i32* %5, i32 1)
  store %struct.queue* %6, %struct.queue** %3, align 8
  %7 = load %struct.queue*, %struct.queue** %3, align 8
  %8 = icmp eq %struct.queue* %7, null
  br i1 %8, label %9, label %36

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = call %struct.queue* @lua_newuserdata(i32* %10, i32 32)
  store %struct.queue* %11, %struct.queue** %3, align 8
  %12 = load i32, i32* @QUEUESIZE, align 4
  %13 = load %struct.queue*, %struct.queue** %3, align 8
  %14 = getelementptr inbounds %struct.queue, %struct.queue* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.queue*, %struct.queue** %3, align 8
  %16 = getelementptr inbounds %struct.queue, %struct.queue* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.queue*, %struct.queue** %3, align 8
  %18 = getelementptr inbounds %struct.queue, %struct.queue* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %30, %9
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @HASHSIZE, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load %struct.queue*, %struct.queue** %3, align 8
  %25 = getelementptr inbounds %struct.queue, %struct.queue* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %19

33:                                               ; preds = %19
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @lua_replace(i32* %34, i32 1)
  br label %36

36:                                               ; preds = %33, %1
  %37 = load %struct.queue*, %struct.queue** %3, align 8
  ret %struct.queue* %37
}

declare dso_local %struct.queue* @lua_touserdata(i32*, i32) #1

declare dso_local %struct.queue* @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @lua_replace(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
