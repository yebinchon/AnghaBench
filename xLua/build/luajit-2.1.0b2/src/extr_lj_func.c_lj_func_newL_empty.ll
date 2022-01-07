; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_func.c_lj_func_newL_empty.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_func.c_lj_func_newL_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @lj_func_newL_empty(i32* %0, %struct.TYPE_14__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call %struct.TYPE_15__* @func_newL(i32* %11, %struct.TYPE_14__* %12, i32* %13)
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %7, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %18

18:                                               ; preds = %48, %3
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %18
  %23 = load i32*, i32** %4, align 8
  %24 = call %struct.TYPE_13__* @func_emptyuv(i32* %23)
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %10, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = ptrtoint %struct.TYPE_14__* %25 to i64
  %27 = trunc i64 %26 to i32
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = call i64* @proto_uv(%struct.TYPE_14__* %28)
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = shl i32 %33, 24
  %35 = xor i32 %27, %34
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %46 = call i32 @obj2gco(%struct.TYPE_13__* %45)
  %47 = call i32 @setgcref(i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %22
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %8, align 8
  br label %18

51:                                               ; preds = %18
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  ret %struct.TYPE_15__* %56
}

declare dso_local %struct.TYPE_15__* @func_newL(i32*, %struct.TYPE_14__*, i32*) #1

declare dso_local %struct.TYPE_13__* @func_emptyuv(i32*) #1

declare dso_local i64* @proto_uv(%struct.TYPE_14__*) #1

declare dso_local i32 @setgcref(i32, i32) #1

declare dso_local i32 @obj2gco(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
