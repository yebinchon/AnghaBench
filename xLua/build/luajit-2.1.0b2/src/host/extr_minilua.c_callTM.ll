; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_callTM.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_callTM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32*, i32*, i32*)* @callTM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @callTM(%struct.TYPE_6__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @setobj(%struct.TYPE_6__* %11, i64 %14, i32* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @setobj(%struct.TYPE_6__* %17, i64 %21, i32* %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 2
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @setobj(%struct.TYPE_6__* %24, i64 %28, i32* %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 3
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @setobj(%struct.TYPE_6__* %31, i64 %35, i32* %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = call i32 @luaD_checkstack(%struct.TYPE_6__* %38, i32 4)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 4
  store i64 %43, i64* %41, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %47, 4
  %49 = call i32 @luaD_call(%struct.TYPE_6__* %44, i64 %48, i32 0)
  ret void
}

declare dso_local i32 @setobj(%struct.TYPE_6__*, i64, i32*) #1

declare dso_local i32 @luaD_checkstack(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @luaD_call(%struct.TYPE_6__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
