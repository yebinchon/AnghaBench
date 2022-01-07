; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_zuiClearIterator.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_zuiClearIterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_11__, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@OBJ_SET = common dso_local global i64 0, align 8
@OBJ_ENCODING_INTSET = common dso_local global i64 0, align 8
@OBJ_ENCODING_HT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Unknown set encoding\00", align 1
@OBJ_ZSET = common dso_local global i64 0, align 8
@OBJ_ENCODING_ZIPLIST = common dso_local global i64 0, align 8
@OBJ_ENCODING_SKIPLIST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Unknown sorted set encoding\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Unsupported type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zuiClearIterator(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 3
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %78

10:                                               ; preds = %1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @OBJ_SET, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %10
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %3, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @OBJ_ENCODING_INTSET, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = call i32 @UNUSED(%struct.TYPE_11__* %26)
  br label %43

28:                                               ; preds = %16
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @OBJ_ENCODING_HT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dictReleaseIterator(i32 %38)
  br label %42

40:                                               ; preds = %28
  %41 = call i32 @serverPanic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %34
  br label %43

43:                                               ; preds = %42, %25
  br label %78

44:                                               ; preds = %10
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @OBJ_ZSET, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %75

50:                                               ; preds = %44
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store %struct.TYPE_11__* %53, %struct.TYPE_11__** %4, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @OBJ_ENCODING_ZIPLIST, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %61 = call i32 @UNUSED(%struct.TYPE_11__* %60)
  br label %74

62:                                               ; preds = %50
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @OBJ_ENCODING_SKIPLIST, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %70 = call i32 @UNUSED(%struct.TYPE_11__* %69)
  br label %73

71:                                               ; preds = %62
  %72 = call i32 @serverPanic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %68
  br label %74

74:                                               ; preds = %73, %59
  br label %77

75:                                               ; preds = %44
  %76 = call i32 @serverPanic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %74
  br label %78

78:                                               ; preds = %9, %77, %43
  ret void
}

declare dso_local i32 @UNUSED(%struct.TYPE_11__*) #1

declare dso_local i32 @dictReleaseIterator(i32) #1

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
