; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_ldo.c_luaD_pcall.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_ldo.c_luaD_pcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i16, i8*, i32, i32* }

@LUA_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaD_pcall(%struct.TYPE_8__* %0, i32 %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %12, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %13, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i16, i16* %24, align 8
  store i16 %25, i16* %14, align 2
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %15, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @luaD_rawrunprotected(%struct.TYPE_8__* %32, i32 %33, i8* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @LUA_OK, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %5
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @restorestack(%struct.TYPE_8__* %40, i8* %41)
  store i32 %42, i32* %16, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = load i32, i32* %16, align 4
  %45 = call i32 @luaF_close(%struct.TYPE_8__* %43, i32 %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %16, align 4
  %49 = call i32 @seterrorobj(%struct.TYPE_8__* %46, i32 %47, i32 %48)
  %50 = load i32*, i32** %12, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  store i32* %50, i32** %52, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load i16, i16* %14, align 2
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i16 %56, i16* %58, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = call i32 @luaD_shrinkstack(%struct.TYPE_8__* %59)
  br label %61

61:                                               ; preds = %39, %5
  %62 = load i8*, i8** %15, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* %11, align 4
  ret i32 %65
}

declare dso_local i32 @luaD_rawrunprotected(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @restorestack(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @luaF_close(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @seterrorobj(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @luaD_shrinkstack(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
