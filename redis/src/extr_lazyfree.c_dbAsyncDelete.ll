; ModuleID = '/home/carl/AnghaBench/redis/src/extr_lazyfree.c_dbAsyncDelete.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_lazyfree.c_dbAsyncDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@LAZYFREE_THRESHOLD = common dso_local global i64 0, align 8
@lazyfree_objects = common dso_local global i32 0, align 4
@BIO_LAZY_FREE = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbAsyncDelete(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @dictSize(i32 %11)
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dictDelete(i32 %17, i32 %20)
  br label %22

22:                                               ; preds = %14, %2
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @dictUnlink(i32 %25, i32 %28)
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %57

32:                                               ; preds = %22
  %33 = load i32*, i32** %6, align 8
  %34 = call %struct.TYPE_10__* @dictGetVal(i32* %33)
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %7, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = call i64 @lazyfreeGetFreeEffort(%struct.TYPE_10__* %35)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @LAZYFREE_THRESHOLD, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %32
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load i32, i32* @lazyfree_objects, align 4
  %47 = call i32 @atomicIncr(i32 %46, i32 1)
  %48 = load i32, i32* @BIO_LAZY_FREE, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %50 = call i32 @bioCreateBackgroundJob(i32 %48, %struct.TYPE_10__* %49, i32* null, i32* null)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @dictSetVal(i32 %53, i32* %54, i32* null)
  br label %56

56:                                               ; preds = %45, %40, %32
  br label %57

57:                                               ; preds = %56, %22
  %58 = load i32*, i32** %6, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @dictFreeUnlinkedEntry(i32 %63, i32* %64)
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 0), align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = call i32 @slotToKeyDel(%struct.TYPE_10__* %69)
  br label %71

71:                                               ; preds = %68, %60
  store i32 1, i32* %3, align 4
  br label %73

72:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %71
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @dictSize(i32) #1

declare dso_local i32 @dictDelete(i32, i32) #1

declare dso_local i32* @dictUnlink(i32, i32) #1

declare dso_local %struct.TYPE_10__* @dictGetVal(i32*) #1

declare dso_local i64 @lazyfreeGetFreeEffort(%struct.TYPE_10__*) #1

declare dso_local i32 @atomicIncr(i32, i32) #1

declare dso_local i32 @bioCreateBackgroundJob(i32, %struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @dictSetVal(i32, i32*, i32*) #1

declare dso_local i32 @dictFreeUnlinkedEntry(i32, i32*) #1

declare dso_local i32 @slotToKeyDel(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
