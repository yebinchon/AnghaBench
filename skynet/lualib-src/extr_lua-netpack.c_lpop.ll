; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-netpack.c_lpop.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-netpack.c_lpop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue = type { i64, i64, i64, %struct.netpack* }
%struct.netpack = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lpop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpop(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.queue*, align 8
  %5 = alloca %struct.netpack*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.queue* @lua_touserdata(i32* %6, i32 1)
  store %struct.queue* %7, %struct.queue** %4, align 8
  %8 = load %struct.queue*, %struct.queue** %4, align 8
  %9 = icmp eq %struct.queue* %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load %struct.queue*, %struct.queue** %4, align 8
  %12 = getelementptr inbounds %struct.queue, %struct.queue* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.queue*, %struct.queue** %4, align 8
  %15 = getelementptr inbounds %struct.queue, %struct.queue* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %54

19:                                               ; preds = %10
  %20 = load %struct.queue*, %struct.queue** %4, align 8
  %21 = getelementptr inbounds %struct.queue, %struct.queue* %20, i32 0, i32 3
  %22 = load %struct.netpack*, %struct.netpack** %21, align 8
  %23 = load %struct.queue*, %struct.queue** %4, align 8
  %24 = getelementptr inbounds %struct.queue, %struct.queue* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.netpack, %struct.netpack* %22, i64 %25
  store %struct.netpack* %26, %struct.netpack** %5, align 8
  %27 = load %struct.queue*, %struct.queue** %4, align 8
  %28 = getelementptr inbounds %struct.queue, %struct.queue* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %28, align 8
  %31 = load %struct.queue*, %struct.queue** %4, align 8
  %32 = getelementptr inbounds %struct.queue, %struct.queue* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp uge i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %19
  %36 = load %struct.queue*, %struct.queue** %4, align 8
  %37 = getelementptr inbounds %struct.queue, %struct.queue* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %35, %19
  %39 = load i32*, i32** %3, align 8
  %40 = load %struct.netpack*, %struct.netpack** %5, align 8
  %41 = getelementptr inbounds %struct.netpack, %struct.netpack* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @lua_pushinteger(i32* %39, i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load %struct.netpack*, %struct.netpack** %5, align 8
  %46 = getelementptr inbounds %struct.netpack, %struct.netpack* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @lua_pushlightuserdata(i32* %44, i32 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.netpack*, %struct.netpack** %5, align 8
  %51 = getelementptr inbounds %struct.netpack, %struct.netpack* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @lua_pushinteger(i32* %49, i32 %52)
  store i32 3, i32* %2, align 4
  br label %54

54:                                               ; preds = %38, %18
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.queue* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
