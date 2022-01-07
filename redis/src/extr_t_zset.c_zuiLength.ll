; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_zuiLength.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_zuiLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

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
define dso_local i64 @zuiLength(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %9 = icmp eq %struct.TYPE_11__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %91

11:                                               ; preds = %1
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @OBJ_SET, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %11
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @OBJ_ENCODING_INTSET, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = call i64 @intsetLen(%struct.TYPE_13__* %28)
  store i64 %29, i64* %2, align 8
  br label %91

30:                                               ; preds = %17
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @OBJ_ENCODING_HT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %4, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = call i64 @dictSize(%struct.TYPE_13__* %42)
  store i64 %43, i64* %2, align 8
  br label %91

44:                                               ; preds = %30
  %45 = call i32 @serverPanic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %46
  br label %91

48:                                               ; preds = %11
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @OBJ_ZSET, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %88

54:                                               ; preds = %48
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @OBJ_ENCODING_ZIPLIST, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = call i64 @zzlLength(%struct.TYPE_13__* %65)
  store i64 %66, i64* %2, align 8
  br label %91

67:                                               ; preds = %54
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @OBJ_ENCODING_SKIPLIST, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %67
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  store %struct.TYPE_13__* %78, %struct.TYPE_13__** %5, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %2, align 8
  br label %91

84:                                               ; preds = %67
  %85 = call i32 @serverPanic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84
  br label %87

87:                                               ; preds = %86
  br label %90

88:                                               ; preds = %48
  %89 = call i32 @serverPanic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %87
  br label %91

91:                                               ; preds = %10, %23, %36, %60, %73, %90, %47
  %92 = load i64, i64* %2, align 8
  ret i64 %92
}

declare dso_local i64 @intsetLen(%struct.TYPE_13__*) #1

declare dso_local i64 @dictSize(%struct.TYPE_13__*) #1

declare dso_local i32 @serverPanic(i8*) #1

declare dso_local i64 @zzlLength(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
