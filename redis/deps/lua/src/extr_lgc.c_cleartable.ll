; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lgc.c_cleartable.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lgc.c_cleartable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32*, i32 }

@VALUEWEAKBIT = common dso_local global i32 0, align 4
@KEYWEAKBIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @cleartable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleartable(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  br label %7

7:                                                ; preds = %91, %1
  %8 = load i32*, i32** %2, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %95

10:                                               ; preds = %7
  %11 = load i32*, i32** %2, align 8
  %12 = call %struct.TYPE_5__* @gco2h(i32* %11)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %3, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @VALUEWEAKBIT, align 4
  %20 = call i64 @testbit(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %10
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @KEYWEAKBIT, align 4
  %27 = call i64 @testbit(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %22, %10
  %30 = phi i1 [ true, %10 ], [ %28, %22 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @lua_assert(i32 %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @VALUEWEAKBIT, align 4
  %37 = call i64 @testbit(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %57, %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %4, align 4
  %43 = icmp ne i32 %41, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32* %50, i32** %5, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = call i64 @iscleared(i32* %51, i32 0)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @setnilvalue(i32* %55)
  br label %57

57:                                               ; preds = %54, %44
  br label %40

58:                                               ; preds = %40
  br label %59

59:                                               ; preds = %58, %29
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = call i32 @sizenode(%struct.TYPE_5__* %60)
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %90, %59
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %4, align 4
  %65 = icmp ne i32 %63, 0
  br i1 %65, label %66, label %91

66:                                               ; preds = %62
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32* @gnode(%struct.TYPE_5__* %67, i32 %68)
  store i32* %69, i32** %6, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = call i32* @gval(i32* %70)
  %72 = call i32 @ttisnil(i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %66
  %75 = load i32*, i32** %6, align 8
  %76 = call i32* @key2tval(i32* %75)
  %77 = call i64 @iscleared(i32* %76, i32 1)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load i32*, i32** %6, align 8
  %81 = call i32* @gval(i32* %80)
  %82 = call i64 @iscleared(i32* %81, i32 0)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79, %74
  %85 = load i32*, i32** %6, align 8
  %86 = call i32* @gval(i32* %85)
  %87 = call i32 @setnilvalue(i32* %86)
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @removeentry(i32* %88)
  br label %90

90:                                               ; preds = %84, %79, %66
  br label %62

91:                                               ; preds = %62
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %2, align 8
  br label %7

95:                                               ; preds = %7
  ret void
}

declare dso_local %struct.TYPE_5__* @gco2h(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @testbit(i32, i32) #1

declare dso_local i64 @iscleared(i32*, i32) #1

declare dso_local i32 @setnilvalue(i32*) #1

declare dso_local i32 @sizenode(%struct.TYPE_5__*) #1

declare dso_local i32* @gnode(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ttisnil(i32*) #1

declare dso_local i32* @gval(i32*) #1

declare dso_local i32* @key2tval(i32*) #1

declare dso_local i32 @removeentry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
