; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_shared.c_lsmWalkFreelist.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_shared.c_lsmWalkFreelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i32, i32 (i8*, i32, i32)*, i64, i8*, %struct.TYPE_9__*, %struct.TYPE_10__* }

@LSM_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmWalkFreelist(%struct.TYPE_10__* %0, i32 %1, i32 (i8*, i32, i32)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (i8*, i32, i32)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x %struct.TYPE_11__], align 16
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 (i8*, i32, i32)* %2, i32 (i8*, i32, i32)** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 -1, i32 1
  store i32 %20, i32* %10, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 6
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 16
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 5
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %32, align 16
  %33 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 5
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 16
  %36 = icmp ne %struct.TYPE_9__* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 5
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 16
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %52

49:                                               ; preds = %37, %4
  %50 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %40
  %53 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  store i32 (i8*, i32, i32)* @walkFreelistCb, i32 (i8*, i32, i32)** %54, align 8
  %55 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 1
  %56 = bitcast %struct.TYPE_11__* %55 to i8*
  %57 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 3
  store i64 0, i64* %60, align 16
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %62 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 1
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 6
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %63, align 8
  %64 = load i32, i32* %7, align 4
  %65 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 1
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 16
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 1
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 5
  store %struct.TYPE_9__* %69, %struct.TYPE_9__** %71, align 16
  %72 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 1
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 5
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 16
  %75 = icmp ne %struct.TYPE_9__* %74, null
  br i1 %75, label %76, label %88

76:                                               ; preds = %52
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 1
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 5
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 16
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %84, 1
  %86 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 1
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %91

88:                                               ; preds = %76, %52
  %89 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 1
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  store i32 0, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %79
  %92 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %8, align 8
  %93 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 1
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 2
  store i32 (i8*, i32, i32)* %92, i32 (i8*, i32, i32)** %94, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 1
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 4
  store i8* %95, i8** %97, align 8
  %98 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 1
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 3
  store i64 0, i64* %99, align 16
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 0
  %103 = bitcast %struct.TYPE_11__* %102 to i8*
  %104 = call i32 @lsmSortedWalkFreelist(%struct.TYPE_10__* %100, i32 %101, i32 (i8*, i32, i32)* @walkFreelistCb, i8* %103)
  store i32 %104, i32* %11, align 4
  %105 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 0
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 16
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %183

109:                                              ; preds = %91
  store i32 0, i32* %12, align 4
  br label %110

110:                                              ; preds = %179, %109
  %111 = load i32, i32* %12, align 4
  %112 = icmp slt i32 %111, 2
  br i1 %112, label %113, label %182

113:                                              ; preds = %110
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 %115
  store %struct.TYPE_11__* %116, %struct.TYPE_11__** %15, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %14, align 4
  br label %120

120:                                              ; preds = %174, %113
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 5
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = icmp ne %struct.TYPE_9__* %123, null
  br i1 %124, label %125, label %140

125:                                              ; preds = %120
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @LSM_OK, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %140

129:                                              ; preds = %125
  %130 = load i32, i32* %14, align 4
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 5
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %130, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %129
  %138 = load i32, i32* %14, align 4
  %139 = icmp sge i32 %138, 0
  br label %140

140:                                              ; preds = %137, %129, %125, %120
  %141 = phi i1 [ false, %129 ], [ false, %125 ], [ false, %120 ], [ %139, %137 ]
  br i1 %141, label %142, label %178

142:                                              ; preds = %140
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 5
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = load i32, i32* %14, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i64 %149
  store %struct.TYPE_12__* %150, %struct.TYPE_12__** %16, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp sge i64 %153, 0
  br i1 %154, label %155, label %173

155:                                              ; preds = %142
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 2
  %158 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %157, align 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 4
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = trunc i64 %167 to i32
  %169 = call i32 %158(i8* %161, i32 %164, i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %155
  %172 = load i32, i32* @LSM_OK, align 4
  store i32 %172, i32* %5, align 4
  br label %185

173:                                              ; preds = %155, %142
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %14, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %14, align 4
  br label %120

178:                                              ; preds = %140
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %12, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %12, align 4
  br label %110

182:                                              ; preds = %110
  br label %183

183:                                              ; preds = %182, %91
  %184 = load i32, i32* %11, align 4
  store i32 %184, i32* %5, align 4
  br label %185

185:                                              ; preds = %183, %171
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

declare dso_local i32 @walkFreelistCb(i8*, i32, i32) #1

declare dso_local i32 @lsmSortedWalkFreelist(%struct.TYPE_10__*, i32, i32 (i8*, i32, i32)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
