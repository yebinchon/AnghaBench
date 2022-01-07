; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_lstring.c_createstrobj.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_lstring.c_createstrobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32*, i8*, i64, i32, i32, i32**)* @createstrobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @createstrobj(i32* %0, i8* %1, i64 %2, i32 %3, i32 %4, i32** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32** %5, i32*** %12, align 8
  %16 = load i64, i64* %9, align 8
  %17 = add i64 %16, 1
  %18 = mul i64 %17, 1
  %19 = add i64 24, %18
  store i64 %19, i64* %15, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i64, i64* %15, align 8
  %23 = load i32**, i32*** %12, align 8
  %24 = call %struct.TYPE_7__* @luaC_newobj(i32* %20, i32 %21, i64 %22, i32** %23, i32 0)
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %13, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 1
  %39 = bitcast %struct.TYPE_6__* %38 to i8*
  store i8* %39, i8** %14, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = mul i64 %42, 1
  %44 = call i32 @memcpy(i8* %40, i8* %41, i64 %43)
  %45 = load i8*, i8** %14, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8 0, i8* %47, align 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  ret %struct.TYPE_6__* %48
}

declare dso_local %struct.TYPE_7__* @luaC_newobj(i32*, i32, i64, i32**, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
