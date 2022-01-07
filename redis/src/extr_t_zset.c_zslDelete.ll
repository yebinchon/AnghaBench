; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_zslDelete.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_zslDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { double, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }

@ZSKIPLIST_MAXLEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zslDelete(%struct.TYPE_12__* %0, double %1, i32 %2, %struct.TYPE_11__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store double %1, double* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_11__** %3, %struct.TYPE_11__*** %9, align 8
  %15 = load i32, i32* @ZSKIPLIST_MAXLEVEL, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca %struct.TYPE_11__*, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %12, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %13, align 4
  br label %26

26:                                               ; preds = %100, %4
  %27 = load i32, i32* %13, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %103

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %86, %29
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = icmp ne %struct.TYPE_11__* %38, null
  br i1 %39, label %40, label %84

40:                                               ; preds = %30
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load double, double* %49, align 8
  %51 = load double, double* %7, align 8
  %52 = fcmp olt double %50, %51
  br i1 %52, label %82, label %53

53:                                               ; preds = %40
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load double, double* %62, align 8
  %64 = load double, double* %7, align 8
  %65 = fcmp oeq double %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %53
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i64 @sdscmp(i32 %76, i32 %77)
  %79 = icmp slt i64 %78, 0
  br label %80

80:                                               ; preds = %66, %53
  %81 = phi i1 [ false, %53 ], [ %79, %66 ]
  br label %82

82:                                               ; preds = %80, %40
  %83 = phi i1 [ true, %40 ], [ %81, %80 ]
  br label %84

84:                                               ; preds = %82, %30
  %85 = phi i1 [ false, %30 ], [ %83, %82 ]
  br i1 %85, label %86, label %95

86:                                               ; preds = %84
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  store %struct.TYPE_11__* %94, %struct.TYPE_11__** %12, align 8
  br label %30

95:                                               ; preds = %84
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %18, i64 %98
  store %struct.TYPE_11__* %96, %struct.TYPE_11__** %99, align 8
  br label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %13, align 4
  br label %26

103:                                              ; preds = %26
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  store %struct.TYPE_11__* %109, %struct.TYPE_11__** %12, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %111 = icmp ne %struct.TYPE_11__* %110, null
  br i1 %111, label %112, label %138

112:                                              ; preds = %103
  %113 = load double, double* %7, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load double, double* %115, align 8
  %117 = fcmp oeq double %113, %116
  br i1 %117, label %118, label %138

118:                                              ; preds = %112
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = call i64 @sdscmp(i32 %121, i32 %122)
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %118
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %128 = call i32 @zslDeleteNode(%struct.TYPE_12__* %126, %struct.TYPE_11__* %127, %struct.TYPE_11__** %18)
  %129 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %130 = icmp ne %struct.TYPE_11__** %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %125
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %133 = call i32 @zslFreeNode(%struct.TYPE_11__* %132)
  br label %137

134:                                              ; preds = %125
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %136 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_11__* %135, %struct.TYPE_11__** %136, align 8
  br label %137

137:                                              ; preds = %134, %131
  store i32 1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %139

138:                                              ; preds = %118, %112, %103
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %139

139:                                              ; preds = %138, %137
  %140 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %140)
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sdscmp(i32, i32) #2

declare dso_local i32 @zslDeleteNode(%struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_11__**) #2

declare dso_local i32 @zslFreeNode(%struct.TYPE_11__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
