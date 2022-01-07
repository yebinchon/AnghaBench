; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_subexpr.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_subexpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@OPR_NOUNOPR = common dso_local global i64 0, align 8
@OPR_NOBINOPR = common dso_local global i64 0, align 8
@priority = common dso_local global %struct.TYPE_11__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i32*, i32)* @subexpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @subexpr(%struct.TYPE_10__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = call i32 @enterlevel(%struct.TYPE_10__* %11)
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @getunopr(i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @OPR_NOUNOPR, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %3
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = call i32 @luaX_next(%struct.TYPE_10__* %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @subexpr(%struct.TYPE_10__* %24, i32* %25, i32 8)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %8, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @luaK_prefix(i32 %29, i64 %30, i32* %31)
  br label %37

33:                                               ; preds = %3
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @simpleexp(%struct.TYPE_10__* %34, i32* %35)
  br label %37

37:                                               ; preds = %33, %21
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @getbinopr(i32 %41)
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %57, %37
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @OPR_NOBINOPR, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** @priority, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ugt i32 %52, %53
  br label %55

55:                                               ; preds = %47, %43
  %56 = phi i1 [ false, %43 ], [ %54, %47 ]
  br i1 %56, label %57, label %80

57:                                               ; preds = %55
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = call i32 @luaX_next(%struct.TYPE_10__* %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %7, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @luaK_infix(i32 %62, i64 %63, i32* %64)
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** @priority, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @subexpr(%struct.TYPE_10__* %66, i32* %9, i32 %71)
  store i64 %72, i64* %10, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %7, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @luaK_posfix(i32 %75, i64 %76, i32* %77, i32* %9)
  %79 = load i64, i64* %10, align 8
  store i64 %79, i64* %7, align 8
  br label %43

80:                                               ; preds = %55
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %82 = call i32 @leavelevel(%struct.TYPE_10__* %81)
  %83 = load i64, i64* %7, align 8
  ret i64 %83
}

declare dso_local i32 @enterlevel(%struct.TYPE_10__*) #1

declare dso_local i64 @getunopr(i32) #1

declare dso_local i32 @luaX_next(%struct.TYPE_10__*) #1

declare dso_local i32 @luaK_prefix(i32, i64, i32*) #1

declare dso_local i32 @simpleexp(%struct.TYPE_10__*, i32*) #1

declare dso_local i64 @getbinopr(i32) #1

declare dso_local i32 @luaK_infix(i32, i64, i32*) #1

declare dso_local i32 @luaK_posfix(i32, i64, i32*, i32*) #1

declare dso_local i32 @leavelevel(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
