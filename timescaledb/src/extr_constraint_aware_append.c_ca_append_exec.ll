; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_constraint_aware_append.c_ca_append_exec.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_constraint_aware_append.c_ca_append_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_12__ = type { i64 }

@ExprEndResult = common dso_local global i64 0, align 8
@ExprMultipleResult = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*)* @ca_append_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ca_append_exec(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = bitcast %struct.TYPE_11__* %7 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** %4, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %6, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %51

19:                                               ; preds = %1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = call i32 @ResetExprContext(%struct.TYPE_10__* %20)
  br label %22

22:                                               ; preds = %19
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @linitial(i32 %25)
  %27 = call i32* @ExecProcNode(i32 %26)
  store i32* %27, i32** %5, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i64 @TupIsNull(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32* null, i32** %2, align 8
  br label %51

32:                                               ; preds = %22
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = load i32*, i32** %5, align 8
  store i32* %40, i32** %2, align 8
  br label %51

41:                                               ; preds = %32
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i32* %42, i32** %44, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32* (i32, ...) @ExecProject(i32 %49)
  store i32* %50, i32** %2, align 8
  br label %51

51:                                               ; preds = %41, %39, %31, %18
  %52 = load i32*, i32** %2, align 8
  ret i32* %52
}

declare dso_local i32 @ResetExprContext(%struct.TYPE_10__*) #1

declare dso_local i32* @ExecProcNode(i32) #1

declare dso_local i32 @linitial(i32) #1

declare dso_local i64 @TupIsNull(i32*) #1

declare dso_local i32* @ExecProject(i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
