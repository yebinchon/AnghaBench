; ModuleID = '/home/carl/AnghaBench/redis/src/extr_db.c_dbOverwrite.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_db.c_dbOverwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }

@server = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@MAXMEMORY_FLAG_LFU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dbOverwrite(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32* @dictFind(i32 %12, i32 %15)
  store i32* %16, i32** %7, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @serverAssertWithInfo(i32* null, %struct.TYPE_11__* %17, i32 %20)
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = call %struct.TYPE_11__* @dictGetVal(i32* %24)
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %9, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 0), align 8
  %27 = load i32, i32* @MAXMEMORY_FLAG_LFU, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %3
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = call i32 @dictSetVal(i32 %39, i32* %40, %struct.TYPE_11__* %41)
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @server, i32 0, i32 1), align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %47 = call i32 @freeObjAsync(%struct.TYPE_11__* %46)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dictSetVal(i32 %50, i32* %8, %struct.TYPE_11__* null)
  br label %52

52:                                               ; preds = %45, %36
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dictFreeVal(i32 %55, i32* %8)
  ret void
}

declare dso_local i32* @dictFind(i32, i32) #1

declare dso_local i32 @serverAssertWithInfo(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_11__* @dictGetVal(i32*) #1

declare dso_local i32 @dictSetVal(i32, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @freeObjAsync(%struct.TYPE_11__*) #1

declare dso_local i32 @dictFreeVal(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
