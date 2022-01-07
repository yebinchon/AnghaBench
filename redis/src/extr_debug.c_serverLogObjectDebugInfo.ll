; ModuleID = '/home/carl/AnghaBench/redis/src/extr_debug.c_serverLogObjectDebugInfo.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_debug.c_serverLogObjectDebugInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Object type: %d\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Object encoding: %d\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Object refcount: %d\00", align 1
@OBJ_STRING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Object raw string len: %zu\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Object raw string content: %s\00", align 1
@OBJ_LIST = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"List length: %d\00", align 1
@OBJ_SET = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"Set size: %d\00", align 1
@OBJ_HASH = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"Hash size: %d\00", align 1
@OBJ_ZSET = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"Sorted set size: %d\00", align 1
@OBJ_ENCODING_SKIPLIST = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [19 x i8] c"Skiplist level: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serverLogObjectDebugInfo(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %4 = load i32, i32* @LL_WARNING, align 4
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @serverLog(i32 %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @LL_WARNING, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @serverLog(i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @LL_WARNING, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @serverLog(i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* @OBJ_STRING, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %57

25:                                               ; preds = %1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %27 = call i64 @sdsEncodedObject(%struct.TYPE_12__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %25
  %30 = load i32, i32* @LL_WARNING, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @sdslen(i64 %33)
  %35 = call i32 @serverLog(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @sdslen(i64 %38)
  %40 = icmp slt i32 %39, 4096
  br i1 %40, label %41, label %56

41:                                               ; preds = %29
  %42 = call i32 (...) @sdsempty()
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @sdslen(i64 %48)
  %50 = call i32 @sdscatrepr(i32 %42, i64 %45, i32 %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* @LL_WARNING, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @serverLog(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @sdsfree(i32 %54)
  br label %56

56:                                               ; preds = %41, %29
  br label %132

57:                                               ; preds = %25, %1
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* @OBJ_LIST, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load i32, i32* @LL_WARNING, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %67 = call i64 @listTypeLength(%struct.TYPE_12__* %66)
  %68 = trunc i64 %67 to i32
  %69 = call i32 @serverLog(i32 %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %68)
  br label %131

70:                                               ; preds = %57
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* @OBJ_SET, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load i32, i32* @LL_WARNING, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %80 = call i64 @setTypeSize(%struct.TYPE_12__* %79)
  %81 = trunc i64 %80 to i32
  %82 = call i32 @serverLog(i32 %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %81)
  br label %130

83:                                               ; preds = %70
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* @OBJ_HASH, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load i32, i32* @LL_WARNING, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %93 = call i64 @hashTypeLength(%struct.TYPE_12__* %92)
  %94 = trunc i64 %93 to i32
  %95 = call i32 @serverLog(i32 %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %94)
  br label %129

96:                                               ; preds = %83
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* @OBJ_ZSET, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %128

103:                                              ; preds = %96
  %104 = load i32, i32* @LL_WARNING, align 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %106 = call i64 @zsetLength(%struct.TYPE_12__* %105)
  %107 = trunc i64 %106 to i32
  %108 = call i32 @serverLog(i32 %104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %107)
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* @OBJ_ENCODING_SKIPLIST, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %103
  %116 = load i32, i32* @LL_WARNING, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to %struct.TYPE_11__*
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  %126 = call i32 @serverLog(i32 %116, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %115, %103
  br label %128

128:                                              ; preds = %127, %96
  br label %129

129:                                              ; preds = %128, %90
  br label %130

130:                                              ; preds = %129, %77
  br label %131

131:                                              ; preds = %130, %64
  br label %132

132:                                              ; preds = %131, %56
  ret void
}

declare dso_local i32 @serverLog(i32, i8*, i32) #1

declare dso_local i64 @sdsEncodedObject(%struct.TYPE_12__*) #1

declare dso_local i32 @sdslen(i64) #1

declare dso_local i32 @sdscatrepr(i32, i64, i32) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i64 @listTypeLength(%struct.TYPE_12__*) #1

declare dso_local i64 @setTypeSize(%struct.TYPE_12__*) #1

declare dso_local i64 @hashTypeLength(%struct.TYPE_12__*) #1

declare dso_local i64 @zsetLength(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
