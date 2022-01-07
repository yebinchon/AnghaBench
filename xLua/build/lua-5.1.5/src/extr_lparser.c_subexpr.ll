; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_lparser.c_subexpr.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_lparser.c_subexpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@OPR_NOUNOPR = common dso_local global i64 0, align 8
@UNARY_PRIORITY = common dso_local global i32 0, align 4
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
  br i1 %20, label %21, label %34

21:                                               ; preds = %3
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = call i32 @luaX_next(%struct.TYPE_10__* %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @UNARY_PRIORITY, align 4
  %27 = call i64 @subexpr(%struct.TYPE_10__* %24, i32* %25, i32 %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %8, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @luaK_prefix(i32 %30, i64 %31, i32* %32)
  br label %38

34:                                               ; preds = %3
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @simpleexp(%struct.TYPE_10__* %35, i32* %36)
  br label %38

38:                                               ; preds = %34, %21
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @getbinopr(i32 %42)
  store i64 %43, i64* %7, align 8
  br label %44

44:                                               ; preds = %58, %38
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @OPR_NOBINOPR, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** @priority, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ugt i32 %53, %54
  br label %56

56:                                               ; preds = %48, %44
  %57 = phi i1 [ false, %44 ], [ %55, %48 ]
  br i1 %57, label %58, label %81

58:                                               ; preds = %56
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = call i32 @luaX_next(%struct.TYPE_10__* %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %7, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @luaK_infix(i32 %63, i64 %64, i32* %65)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** @priority, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @subexpr(%struct.TYPE_10__* %67, i32* %9, i32 %72)
  store i64 %73, i64* %10, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %7, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @luaK_posfix(i32 %76, i64 %77, i32* %78, i32* %9)
  %80 = load i64, i64* %10, align 8
  store i64 %80, i64* %7, align 8
  br label %44

81:                                               ; preds = %56
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = call i32 @leavelevel(%struct.TYPE_10__* %82)
  %84 = load i64, i64* %7, align 8
  ret i64 %84
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
