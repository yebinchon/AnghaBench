; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_lgc.c_sweeplist.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_lgc.c_sweeplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_15__ = type { i32 }

@LUA_TTHREAD = common dso_local global i64 0, align 8
@WHITEBITS = common dso_local global i32 0, align 4
@FIXEDBIT = common dso_local global i32 0, align 4
@SFIXEDBIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__** (i32*, %struct.TYPE_18__**, i32)* @sweeplist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__** @sweeplist(i32* %0, %struct.TYPE_18__** %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_18__** %1, %struct.TYPE_18__*** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call %struct.TYPE_17__* @G(i32* %10)
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %8, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %13 = call i32 @otherwhite(%struct.TYPE_17__* %12)
  store i32 %13, i32* %9, align 4
  br label %14

14:                                               ; preds = %105, %3
  %15 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %7, align 8
  %17 = icmp ne %struct.TYPE_18__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %6, align 4
  %21 = icmp sgt i32 %19, 0
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  br i1 %23, label %24, label %106

24:                                               ; preds = %22
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LUA_TTHREAD, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %34 = call %struct.TYPE_15__* @gco2th(%struct.TYPE_18__* %33)
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = call i32 @sweepwholelist(i32* %32, i32* %35)
  br label %37

37:                                               ; preds = %31, %24
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @WHITEBITS, align 4
  %43 = xor i32 %41, %42
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %37
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %50 = call i64 @isdead(%struct.TYPE_17__* %48, %struct.TYPE_18__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @FIXEDBIT, align 4
  %58 = call i64 @testbit(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %52, %47
  %61 = phi i1 [ true, %47 ], [ %59, %52 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @lua_assert(i32 %62)
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %66 = call i32 @makewhite(%struct.TYPE_17__* %64, %struct.TYPE_18__* %65)
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 2
  store %struct.TYPE_18__** %69, %struct.TYPE_18__*** %5, align 8
  br label %105

70:                                               ; preds = %37
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %73 = call i64 @isdead(%struct.TYPE_17__* %71, %struct.TYPE_18__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @SFIXEDBIT, align 4
  %78 = call i32 @bitmask(i32 %77)
  %79 = icmp eq i32 %76, %78
  br label %80

80:                                               ; preds = %75, %70
  %81 = phi i1 [ true, %70 ], [ %79, %75 ]
  %82 = zext i1 %81 to i32
  %83 = call i32 @lua_assert(i32 %82)
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %86, align 8
  %88 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  store %struct.TYPE_18__* %87, %struct.TYPE_18__** %88, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  %93 = icmp eq %struct.TYPE_18__* %89, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %80
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %97, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  store %struct.TYPE_18__* %98, %struct.TYPE_18__** %100, align 8
  br label %101

101:                                              ; preds = %94, %80
  %102 = load i32*, i32** %4, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %104 = call i32 @freeobj(i32* %102, %struct.TYPE_18__* %103)
  br label %105

105:                                              ; preds = %101, %60
  br label %14

106:                                              ; preds = %22
  %107 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  ret %struct.TYPE_18__** %107
}

declare dso_local %struct.TYPE_17__* @G(i32*) #1

declare dso_local i32 @otherwhite(%struct.TYPE_17__*) #1

declare dso_local i32 @sweepwholelist(i32*, i32*) #1

declare dso_local %struct.TYPE_15__* @gco2th(%struct.TYPE_18__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @isdead(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i64 @testbit(i32, i32) #1

declare dso_local i32 @makewhite(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @bitmask(i32) #1

declare dso_local i32 @freeobj(i32*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
