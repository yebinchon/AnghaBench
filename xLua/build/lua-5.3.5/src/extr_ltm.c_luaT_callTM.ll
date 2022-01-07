; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_ltm.c_luaT_callTM.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_ltm.c_luaT_callTM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaT_callTM(%struct.TYPE_9__* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = call i32 @savestack(%struct.TYPE_9__* %15, i32* %16)
  store i32 %17, i32* %13, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %14, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %22 = load i64, i64* %14, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @setobj2s(%struct.TYPE_9__* %21, i64 %22, i32* %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = load i64, i64* %14, align 8
  %27 = add nsw i64 %26, 1
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @setobj2s(%struct.TYPE_9__* %25, i64 %27, i32* %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %31 = load i64, i64* %14, align 8
  %32 = add nsw i64 %31, 2
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @setobj2s(%struct.TYPE_9__* %30, i64 %32, i32* %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 3
  store i64 %38, i64* %36, align 8
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %6
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @setobj2s(%struct.TYPE_9__* %42, i64 %45, i32* %47)
  br label %49

49:                                               ; preds = %41, %6
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @isLua(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %57 = load i64, i64* %14, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @luaD_call(%struct.TYPE_9__* %56, i64 %57, i32 %58)
  br label %65

60:                                               ; preds = %49
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @luaD_callnoyield(%struct.TYPE_9__* %61, i64 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %55
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %70 = load i32, i32* %13, align 4
  %71 = call i32* @restorestack(%struct.TYPE_9__* %69, i32 %70)
  store i32* %71, i32** %11, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, -1
  store i64 %77, i64* %75, align 8
  %78 = call i32 @setobjs2s(%struct.TYPE_9__* %72, i32* %73, i64 %77)
  br label %79

79:                                               ; preds = %68, %65
  ret void
}

declare dso_local i32 @savestack(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @setobj2s(%struct.TYPE_9__*, i64, i32*) #1

declare dso_local i64 @isLua(i32) #1

declare dso_local i32 @luaD_call(%struct.TYPE_9__*, i64, i32) #1

declare dso_local i32 @luaD_callnoyield(%struct.TYPE_9__*, i64, i32) #1

declare dso_local i32* @restorestack(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @setobjs2s(%struct.TYPE_9__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
