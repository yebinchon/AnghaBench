; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_lgc.c_luaC_checkfinalizer.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_lgc.c_luaC_checkfinalizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__** }

@TM_GC = common dso_local global i32 0, align 4
@FINALIZEDBIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaC_checkfinalizer(i32* %0, %struct.TYPE_13__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__**, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call %struct.TYPE_12__* @G(i32* %9)
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %7, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %12 = call i64 @tofinalize(%struct.TYPE_13__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* @TM_GC, align 4
  %18 = call i32* @gfasttm(%struct.TYPE_12__* %15, i32* %16, i32 %17)
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %3
  br label %75

21:                                               ; preds = %14
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = call i64 @issweepphase(%struct.TYPE_12__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %21
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = call i32 @makewhite(%struct.TYPE_12__* %26, %struct.TYPE_13__* %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %30, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = icmp eq %struct.TYPE_13__** %31, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %25
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %38, align 8
  %40 = call %struct.TYPE_13__** @sweeptolive(i32* %36, %struct.TYPE_13__** %39)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  store %struct.TYPE_13__** %40, %struct.TYPE_13__*** %42, align 8
  br label %43

43:                                               ; preds = %35, %25
  br label %44

44:                                               ; preds = %43, %21
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  store %struct.TYPE_13__** %46, %struct.TYPE_13__*** %8, align 8
  br label %47

47:                                               ; preds = %53, %44
  %48 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %8, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %51 = icmp ne %struct.TYPE_13__* %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %8, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  store %struct.TYPE_13__** %56, %struct.TYPE_13__*** %8, align 8
  br label %47

57:                                               ; preds = %47
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %8, align 8
  store %struct.TYPE_13__* %60, %struct.TYPE_13__** %61, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  store %struct.TYPE_13__* %64, %struct.TYPE_13__** %66, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  store %struct.TYPE_13__* %67, %struct.TYPE_13__** %69, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @FINALIZEDBIT, align 4
  %74 = call i32 @l_setbit(i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %20, %57
  ret void
}

declare dso_local %struct.TYPE_12__* @G(i32*) #1

declare dso_local i64 @tofinalize(%struct.TYPE_13__*) #1

declare dso_local i32* @gfasttm(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i64 @issweepphase(%struct.TYPE_12__*) #1

declare dso_local i32 @makewhite(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__** @sweeptolive(i32*, %struct.TYPE_13__**) #1

declare dso_local i32 @l_setbit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
