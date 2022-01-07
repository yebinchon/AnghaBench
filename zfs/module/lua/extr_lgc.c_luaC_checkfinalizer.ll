; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_lgc.c_luaC_checkfinalizer.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_lgc.c_luaC_checkfinalizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32*, i32** }
%struct.TYPE_10__ = type { i32, i32* }

@SEPARATED = common dso_local global i32 0, align 4
@TM_GC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaC_checkfinalizer(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call %struct.TYPE_9__* @G(i32* %10)
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.TYPE_10__* @gch(i32* %12)
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SEPARATED, align 4
  %17 = call i64 @testbit(i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @isfinalized(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @TM_GC, align 4
  %27 = call i32* @gfasttm(%struct.TYPE_9__* %24, i32* %25, i32 %26)
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %19, %3
  br label %93

30:                                               ; preds = %23
  %31 = load i32*, i32** %5, align 8
  %32 = call %struct.TYPE_10__* @gch(i32* %31)
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %9, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = load i32**, i32*** %34, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = icmp eq i32** %35, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %30
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %41 = call i32 @issweepphase(%struct.TYPE_9__* %40)
  %42 = call i32 @lua_assert(i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load i32**, i32*** %45, align 8
  %47 = call i32** @sweeptolive(i32* %43, i32** %46, i32* null)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  store i32** %47, i32*** %49, align 8
  br label %50

50:                                               ; preds = %39, %30
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  store i32** %52, i32*** %8, align 8
  br label %53

53:                                               ; preds = %59, %50
  %54 = load i32**, i32*** %8, align 8
  %55 = load i32*, i32** %54, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = icmp ne i32* %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58
  %60 = load i32**, i32*** %8, align 8
  %61 = load i32*, i32** %60, align 8
  %62 = call %struct.TYPE_10__* @gch(i32* %61)
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  store i32** %63, i32*** %8, align 8
  br label %53

64:                                               ; preds = %53
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32**, i32*** %8, align 8
  store i32* %67, i32** %68, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  store i32* %71, i32** %73, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  store i32* %74, i32** %76, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @SEPARATED, align 4
  %81 = call i32 @l_setbit(i32 %79, i32 %80)
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %83 = call i32 @keepinvariantout(%struct.TYPE_9__* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %64
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @makewhite(%struct.TYPE_9__* %86, i32* %87)
  br label %92

89:                                               ; preds = %64
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @resetoldbit(i32* %90)
  br label %92

92:                                               ; preds = %89, %85
  br label %93

93:                                               ; preds = %29, %92
  ret void
}

declare dso_local %struct.TYPE_9__* @G(i32*) #1

declare dso_local i64 @testbit(i32, i32) #1

declare dso_local %struct.TYPE_10__* @gch(i32*) #1

declare dso_local i64 @isfinalized(i32*) #1

declare dso_local i32* @gfasttm(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @issweepphase(%struct.TYPE_9__*) #1

declare dso_local i32** @sweeptolive(i32*, i32**, i32*) #1

declare dso_local i32 @l_setbit(i32, i32) #1

declare dso_local i32 @keepinvariantout(%struct.TYPE_9__*) #1

declare dso_local i32 @makewhite(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @resetoldbit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
