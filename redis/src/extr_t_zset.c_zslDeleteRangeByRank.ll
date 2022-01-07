; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_zslDeleteRangeByRank.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_zslDeleteRangeByRank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_10__* }

@ZSKIPLIST_MAXLEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zslDeleteRangeByRank(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %16 = load i32, i32* @ZSKIPLIST_MAXLEVEL, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca %struct.TYPE_10__*, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %11, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %14, align 4
  br label %27

27:                                               ; preds = %81, %4
  %28 = load i32, i32* %14, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %84

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %57, %30
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = icmp ne %struct.TYPE_10__* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %31
  %42 = load i64, i64* %12, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %42, %50
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = icmp ult i64 %51, %53
  br label %55

55:                                               ; preds = %41, %31
  %56 = phi i1 [ false, %31 ], [ %54, %41 ]
  br i1 %56, label %57, label %76

57:                                               ; preds = %55
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %12, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %12, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %11, align 8
  br label %31

76:                                               ; preds = %55
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %19, i64 %79
  store %struct.TYPE_10__* %77, %struct.TYPE_10__** %80, align 8
  br label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %14, align 4
  br label %27

84:                                               ; preds = %27
  %85 = load i64, i64* %12, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %12, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  store %struct.TYPE_10__* %92, %struct.TYPE_10__** %11, align 8
  br label %93

93:                                               ; preds = %103, %84
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %95 = icmp ne %struct.TYPE_10__* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i64, i64* %12, align 8
  %98 = load i32, i32* %7, align 4
  %99 = zext i32 %98 to i64
  %100 = icmp ule i64 %97, %99
  br label %101

101:                                              ; preds = %96, %93
  %102 = phi i1 [ false, %93 ], [ %100, %96 ]
  br i1 %102, label %103, label %125

103:                                              ; preds = %101
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  store %struct.TYPE_10__* %109, %struct.TYPE_10__** %15, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %112 = call i32 @zslDeleteNode(%struct.TYPE_11__* %110, %struct.TYPE_10__* %111, %struct.TYPE_10__** %19)
  %113 = load i32*, i32** %8, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @dictDelete(i32* %113, i32 %116)
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %119 = call i32 @zslFreeNode(%struct.TYPE_10__* %118)
  %120 = load i64, i64* %13, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %13, align 8
  %122 = load i64, i64* %12, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %12, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %124, %struct.TYPE_10__** %11, align 8
  br label %93

125:                                              ; preds = %101
  %126 = load i64, i64* %13, align 8
  %127 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %127)
  ret i64 %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @zslDeleteNode(%struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_10__**) #2

declare dso_local i32 @dictDelete(i32*, i32) #2

declare dso_local i32 @zslFreeNode(%struct.TYPE_10__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
