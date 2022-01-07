; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_vc-common.c_get_independent_commits.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_vc-common.c_get_independent_commits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Get independent commits.\0A\00", align 1
@compare_commit_by_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (%struct.TYPE_17__*)* @get_independent_commits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @get_independent_commits(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_16__**, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %10 = call i32 @g_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %12 = call i32 @g_list_length(%struct.TYPE_17__* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.TYPE_16__** @calloc(i32 %13, i32 8)
  store %struct.TYPE_16__** %14, %struct.TYPE_16__*** %3, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %4, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %28, %1
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %18 = icmp ne %struct.TYPE_17__* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %3, align 8
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %23, i64 %26
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %27, align 8
  br label %28

28:                                               ; preds = %19
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  store %struct.TYPE_17__* %31, %struct.TYPE_17__** %4, align 8
  br label %16

32:                                               ; preds = %16
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %34 = call i32 @g_list_free(%struct.TYPE_17__* %33)
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %140, %32
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %37, 1
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %143

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %136, %40
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %139

47:                                               ; preds = %43
  %48 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %3, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %48, i64 %50
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = icmp ne %struct.TYPE_16__* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %3, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %55, i64 %57
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = icmp ne %struct.TYPE_16__* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %54, %47
  br label %136

62:                                               ; preds = %54
  %63 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %3, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %63, i64 %65
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %3, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %68, i64 %70
  %72 = call %struct.TYPE_17__* @merge_bases_many(%struct.TYPE_16__* %67, i32 1, %struct.TYPE_16__** %71)
  store %struct.TYPE_17__* %72, %struct.TYPE_17__** %5, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %73, %struct.TYPE_17__** %4, align 8
  br label %74

74:                                               ; preds = %131, %62
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %76 = icmp ne %struct.TYPE_17__* %75, null
  br i1 %76, label %77, label %135

77:                                               ; preds = %74
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  store %struct.TYPE_16__* %80, %struct.TYPE_16__** %9, align 8
  %81 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %3, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %81, i64 %83
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @strcmp(i32 %87, i32 %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %77
  %94 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %3, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %94, i64 %96
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %97, align 8
  %99 = call i32 @seaf_commit_unref(%struct.TYPE_16__* %98)
  %100 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %3, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %100, i64 %102
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %103, align 8
  br label %104

104:                                              ; preds = %93, %77
  %105 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %3, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %105, i64 %107
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @strcmp(i32 %111, i32 %114)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %104
  %118 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %3, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %118, i64 %120
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = call i32 @seaf_commit_unref(%struct.TYPE_16__* %122)
  %124 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %3, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %124, i64 %126
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %127, align 8
  br label %128

128:                                              ; preds = %117, %104
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %130 = call i32 @seaf_commit_unref(%struct.TYPE_16__* %129)
  br label %131

131:                                              ; preds = %128
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %133, align 8
  store %struct.TYPE_17__* %134, %struct.TYPE_17__** %4, align 8
  br label %74

135:                                              ; preds = %74
  br label %136

136:                                              ; preds = %135, %61
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  br label %43

139:                                              ; preds = %43
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %7, align 4
  br label %35

143:                                              ; preds = %35
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  store i32 0, i32* %7, align 4
  br label %144

144:                                              ; preds = %165, %143
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %6, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %168

148:                                              ; preds = %144
  %149 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %3, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %149, i64 %151
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %152, align 8
  %154 = icmp ne %struct.TYPE_16__* %153, null
  br i1 %154, label %155, label %164

155:                                              ; preds = %148
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %157 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %3, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %157, i64 %159
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %160, align 8
  %162 = load i32, i32* @compare_commit_by_time, align 4
  %163 = call %struct.TYPE_17__* @g_list_insert_sorted_with_data(%struct.TYPE_17__* %156, %struct.TYPE_16__* %161, i32 %162, i32* null)
  store %struct.TYPE_17__* %163, %struct.TYPE_17__** %5, align 8
  br label %164

164:                                              ; preds = %155, %148
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %7, align 4
  br label %144

168:                                              ; preds = %144
  %169 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %3, align 8
  %170 = call i32 @free(%struct.TYPE_16__** %169)
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  ret %struct.TYPE_17__* %171
}

declare dso_local i32 @g_debug(i8*) #1

declare dso_local i32 @g_list_length(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_16__** @calloc(i32, i32) #1

declare dso_local i32 @g_list_free(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @merge_bases_many(%struct.TYPE_16__*, i32, %struct.TYPE_16__**) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @seaf_commit_unref(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_17__* @g_list_insert_sorted_with_data(%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_16__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
