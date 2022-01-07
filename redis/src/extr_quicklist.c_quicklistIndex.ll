; ModuleID = '/home/carl/AnghaBench/redis/src/extr_quicklist.c_quicklistIndex.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_quicklist.c_quicklistIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_11__* }

@.str = private unnamed_addr constant [36 x i8] c"Skipping over (%p) %u at accum %lld\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Found node: %p at accum %llu, idx %llu, sub+ %llu, sub- %llu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quicklistIndex(%struct.TYPE_11__* %0, i64 %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store i64 0, i64* %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp slt i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 0, i32 1
  store i32 %15, i32* %11, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = call i32 @initEntry(%struct.TYPE_10__* %16)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 6
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %20, align 8
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %3
  %24 = load i64, i64* %6, align 8
  %25 = sub nsw i64 0, %24
  %26 = sub nsw i64 %25, 1
  store i64 %26, i64* %10, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %8, align 8
  br label %35

30:                                               ; preds = %3
  %31 = load i64, i64* %6, align 8
  store i64 %31, i64* %10, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %8, align 8
  br label %35

35:                                               ; preds = %30, %23
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp uge i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %145

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %81, %42
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = call i64 @likely(%struct.TYPE_9__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %82

47:                                               ; preds = %43
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %48, %51
  %53 = load i64, i64* %10, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %82

56:                                               ; preds = %47
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %58 = bitcast %struct.TYPE_9__* %57 to i8*
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i32 (i8*, i8*, i64, i64, ...) @D(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %58, i64 %61, i64 %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %9, align 8
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %56
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  br label %79

75:                                               ; preds = %56
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi %struct.TYPE_9__* [ %74, %71 ], [ %78, %75 ]
  store %struct.TYPE_9__* %80, %struct.TYPE_9__** %8, align 8
  br label %81

81:                                               ; preds = %79
  br label %43

82:                                               ; preds = %55, %43
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %84 = icmp ne %struct.TYPE_9__* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %145

86:                                               ; preds = %82
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %88 = bitcast %struct.TYPE_9__* %87 to i8*
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* %9, align 8
  %93 = sub i64 %91, %92
  %94 = load i64, i64* %10, align 8
  %95 = sub i64 0, %94
  %96 = sub i64 %95, 1
  %97 = load i64, i64* %9, align 8
  %98 = add i64 %96, %97
  %99 = call i32 (i8*, i8*, i64, i64, ...) @D(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* %88, i64 %89, i64 %90, i64 %93, i64 %98)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 5
  store %struct.TYPE_9__* %100, %struct.TYPE_9__** %102, align 8
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %86
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* %9, align 8
  %108 = sub i64 %106, %107
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  br label %119

111:                                              ; preds = %86
  %112 = load i64, i64* %10, align 8
  %113 = sub i64 0, %112
  %114 = sub i64 %113, 1
  %115 = load i64, i64* %9, align 8
  %116 = add i64 %114, %115
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %111, %105
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 5
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = call i32 @quicklistDecompressNodeForUse(%struct.TYPE_9__* %122)
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 5
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @ziplistIndex(i32 %128, i64 %131)
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = call i32 @ziplistGet(i32 %137, i32* %139, i32* %141, i32* %143)
  store i32 1, i32* %4, align 4
  br label %145

145:                                              ; preds = %119, %85, %41
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i32 @initEntry(%struct.TYPE_10__*) #1

declare dso_local i64 @likely(%struct.TYPE_9__*) #1

declare dso_local i32 @D(i8*, i8*, i64, i64, ...) #1

declare dso_local i32 @quicklistDecompressNodeForUse(%struct.TYPE_9__*) #1

declare dso_local i32 @ziplistIndex(i32, i64) #1

declare dso_local i32 @ziplistGet(i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
