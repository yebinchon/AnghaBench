; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_zslDeleteRangeByScore.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_zslDeleteRangeByScore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i64, i64, i64, i64 }

@ZSKIPLIST_MAXLEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zslDeleteRangeByScore(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i32, i32* @ZSKIPLIST_MAXLEVEL, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca %struct.TYPE_12__*, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  store i64 0, i64* %10, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %9, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %11, align 4
  br label %24

24:                                               ; preds = %94, %3
  %25 = load i32, i32* %11, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %97

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %80, %27
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = icmp ne %struct.TYPE_12__* %36, null
  br i1 %37, label %38, label %78

38:                                               ; preds = %28
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %38
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sle i64 %53, %56
  %58 = zext i1 %57 to i32
  br label %75

59:                                               ; preds = %38
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %69, %72
  %74 = zext i1 %73 to i32
  br label %75

75:                                               ; preds = %59, %43
  %76 = phi i32 [ %58, %43 ], [ %74, %59 ]
  %77 = icmp ne i32 %76, 0
  br label %78

78:                                               ; preds = %75, %28
  %79 = phi i1 [ false, %28 ], [ %77, %75 ]
  br i1 %79, label %80, label %89

80:                                               ; preds = %78
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  store %struct.TYPE_12__* %88, %struct.TYPE_12__** %9, align 8
  br label %28

89:                                               ; preds = %78
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %16, i64 %92
  store %struct.TYPE_12__* %90, %struct.TYPE_12__** %93, align 8
  br label %94

94:                                               ; preds = %89
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %11, align 4
  br label %24

97:                                               ; preds = %24
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  store %struct.TYPE_12__* %103, %struct.TYPE_12__** %9, align 8
  br label %104

104:                                              ; preds = %135, %97
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %106 = icmp ne %struct.TYPE_12__* %105, null
  br i1 %106, label %107, label %133

107:                                              ; preds = %104
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %107
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp slt i64 %115, %118
  %120 = zext i1 %119 to i32
  br label %130

121:                                              ; preds = %107
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp sle i64 %124, %127
  %129 = zext i1 %128 to i32
  br label %130

130:                                              ; preds = %121, %112
  %131 = phi i32 [ %120, %112 ], [ %129, %121 ]
  %132 = icmp ne i32 %131, 0
  br label %133

133:                                              ; preds = %130, %104
  %134 = phi i1 [ false, %104 ], [ %132, %130 ]
  br i1 %134, label %135, label %155

135:                                              ; preds = %133
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  store %struct.TYPE_12__* %141, %struct.TYPE_12__** %12, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %144 = call i32 @zslDeleteNode(%struct.TYPE_13__* %142, %struct.TYPE_12__* %143, %struct.TYPE_12__** %16)
  %145 = load i32*, i32** %6, align 8
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @dictDelete(i32* %145, i32 %148)
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %151 = call i32 @zslFreeNode(%struct.TYPE_12__* %150)
  %152 = load i64, i64* %10, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %10, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %154, %struct.TYPE_12__** %9, align 8
  br label %104

155:                                              ; preds = %133
  %156 = load i64, i64* %10, align 8
  %157 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %157)
  ret i64 %156
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @zslDeleteNode(%struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_12__**) #2

declare dso_local i32 @dictDelete(i32*, i32) #2

declare dso_local i32 @zslFreeNode(%struct.TYPE_12__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
