; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_open_func.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_open_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_17__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32*, i64, i64, i64, i64, i64, i64, %struct.TYPE_14__*, %struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_17__*)* @open_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @open_func(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* %9, %struct.TYPE_14__** %5, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %11 = call %struct.TYPE_15__* @luaF_newproto(%struct.TYPE_14__* %10)
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %6, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 13
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %14, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 12
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %19, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 11
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %22, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 10
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %25, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %28, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 9
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  store i32 -1, i32* %34, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 8
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 7
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 6
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 5
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 3
  store i32* null, i32** %46, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  store i32 2, i32* %53, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %55 = call i32 @luaH_new(%struct.TYPE_14__* %54, i32 0, i32 0)
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @sethvalue(%struct.TYPE_14__* %58, i32 %61, i32 %64)
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %67 = call i32 @incr_top(%struct.TYPE_14__* %66)
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %73 = call i32 @setptvalue(%struct.TYPE_14__* %68, i32 %71, %struct.TYPE_15__* %72)
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %75 = call i32 @incr_top(%struct.TYPE_14__* %74)
  ret void
}

declare dso_local %struct.TYPE_15__* @luaF_newproto(%struct.TYPE_14__*) #1

declare dso_local i32 @luaH_new(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @sethvalue(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @incr_top(%struct.TYPE_14__*) #1

declare dso_local i32 @setptvalue(%struct.TYPE_14__*, i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
