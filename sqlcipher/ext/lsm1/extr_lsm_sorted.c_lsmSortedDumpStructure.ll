; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_lsmSortedDumpStructure.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_lsmSortedDumpStructure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, i32*, i32, %struct.TYPE_11__*, i64, i64 }

@lsmSortedDumpStructure.nCall = internal global i32 0, align 4
@LSM_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Database structure %d (%s)\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"L%d: (age=%d) (flags=%.4x)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"% 25s % *s% -35s %s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Freelist: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lsmSortedDumpStructure(%struct.TYPE_10__* %0, i32* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [1024 x i8], align 16
  %17 = alloca [1024 x i8], align 16
  %18 = alloca i32, align 4
  %19 = alloca [24 x i32*], align 16
  %20 = alloca [24 x i32*], align 16
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca [32 x i8], align 16
  %26 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %27 = load i32*, i32** %7, align 8
  store i32* %27, i32** %11, align 8
  store i8* null, i8** %13, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @assert(i32* %28)
  %30 = load i32*, i32** %11, align 8
  %31 = call %struct.TYPE_11__* @lsmDbSnapshotLevel(i32* %30)
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %12, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %195

36:                                               ; preds = %5
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %38 = icmp ne %struct.TYPE_11__* %37, null
  br i1 %38, label %39, label %195

39:                                               ; preds = %36
  store i32 0, i32* %15, align 4
  %40 = load i32, i32* @lsmSortedDumpStructure.nCall, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @lsmSortedDumpStructure.nCall, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = load i32, i32* @LSM_OK, align 4
  %44 = load i32, i32* @lsmSortedDumpStructure.nCall, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @lsmLogMessage(%struct.TYPE_10__* %42, i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %44, i8* %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %14, align 8
  br label %48

48:                                               ; preds = %151, %39
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %50 = icmp ne %struct.TYPE_11__* %49, null
  br i1 %50, label %51, label %155

51:                                               ; preds = %48
  store i32 0, i32* %18, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  store i32* %53, i32** %23, align 8
  %54 = load i32*, i32** %23, align 8
  %55 = load i32, i32* %21, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %21, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds [24 x i32*], [24 x i32*]* %19, i64 0, i64 %57
  store i32* %54, i32** %58, align 8
  store i32 0, i32* %18, align 4
  br label %59

59:                                               ; preds = %76, %51
  %60 = load i32, i32* %18, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %59
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %18, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %22, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %22, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds [24 x i32*], [24 x i32*]* %20, i64 0, i64 %74
  store i32* %71, i32** %75, align 8
  br label %76

76:                                               ; preds = %65
  %77 = load i32, i32* %18, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %18, align 4
  br label %59

79:                                               ; preds = %59
  store i32 0, i32* %18, align 4
  br label %80

80:                                               ; preds = %145, %79
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* %21, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %22, align 4
  %87 = icmp slt i32 %85, %86
  br label %88

88:                                               ; preds = %84, %80
  %89 = phi i1 [ true, %80 ], [ %87, %84 ]
  br i1 %89, label %90, label %148

90:                                               ; preds = %88
  store i32 0, i32* %24, align 4
  %91 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  store i8 0, i8* %91, align 16
  %92 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  store i8 0, i8* %92, align 16
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %21, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %90
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %98 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %99 = load i32, i32* %18, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [24 x i32*], [24 x i32*]* %19, i64 0, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @fileToString(%struct.TYPE_10__* %97, i8* %98, i32 1024, i32 24, i32* %102)
  br label %104

104:                                              ; preds = %96, %90
  %105 = load i32, i32* %18, align 4
  %106 = load i32, i32* %22, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %110 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %111 = load i32, i32* %18, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [24 x i32*], [24 x i32*]* %20, i64 0, i64 %112
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @fileToString(%struct.TYPE_10__* %109, i8* %110, i32 1024, i32 24, i32* %114)
  br label %116

116:                                              ; preds = %108, %104
  %117 = load i32, i32* %18, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %116
  %120 = getelementptr inbounds [32 x i8], [32 x i8]* %25, i64 0, i64 0
  %121 = load i32, i32* %15, align 4
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  %130 = call i32 @snprintf(i8* %120, i32 32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %121, i32 %125, i32 %129)
  br label %133

131:                                              ; preds = %116
  %132 = getelementptr inbounds [32 x i8], [32 x i8]* %25, i64 0, i64 0
  store i8 0, i8* %132, align 16
  br label %133

133:                                              ; preds = %131, %119
  %134 = load i32, i32* %22, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 10, i32* %24, align 4
  br label %137

137:                                              ; preds = %136, %133
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %139 = load i32, i32* @LSM_OK, align 4
  %140 = getelementptr inbounds [32 x i8], [32 x i8]* %25, i64 0, i64 0
  %141 = load i32, i32* %24, align 4
  %142 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %143 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %144 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @lsmLogMessage(%struct.TYPE_10__* %138, i32 %139, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %140, i32 %141, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* %142, i8* %143)
  br label %145

145:                                              ; preds = %137
  %146 = load i32, i32* %18, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %18, align 4
  br label %80

148:                                              ; preds = %88
  %149 = load i32, i32* %15, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %15, align 4
  br label %151

151:                                              ; preds = %148
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  store %struct.TYPE_11__* %154, %struct.TYPE_11__** %14, align 8
  br label %48

155:                                              ; preds = %48
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %194

158:                                              ; preds = %155
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %159, %struct.TYPE_11__** %14, align 8
  br label %160

160:                                              ; preds = %189, %158
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %162 = icmp ne %struct.TYPE_11__* %161, null
  br i1 %162, label %163, label %193

163:                                              ; preds = %160
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 2
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @sortedDumpSegment(%struct.TYPE_10__* %164, i32* %166, i32 %167)
  store i32 0, i32* %26, align 4
  br label %169

169:                                              ; preds = %185, %163
  %170 = load i32, i32* %26, align 4
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp slt i32 %170, %173
  br i1 %174, label %175, label %188

175:                                              ; preds = %169
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %26, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %9, align 4
  %184 = call i32 @sortedDumpSegment(%struct.TYPE_10__* %176, i32* %182, i32 %183)
  br label %185

185:                                              ; preds = %175
  %186 = load i32, i32* %26, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %26, align 4
  br label %169

188:                                              ; preds = %169
  br label %189

189:                                              ; preds = %188
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 3
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %191, align 8
  store %struct.TYPE_11__* %192, %struct.TYPE_11__** %14, align 8
  br label %160

193:                                              ; preds = %160
  br label %194

194:                                              ; preds = %193, %155
  br label %195

195:                                              ; preds = %194, %36, %5
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %197 = call i32 @lsmInfoFreelist(%struct.TYPE_10__* %196, i8** %13)
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %199 = load i32, i32* @LSM_OK, align 4
  %200 = load i8*, i8** %13, align 8
  %201 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @lsmLogMessage(%struct.TYPE_10__* %198, i32 %199, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %200)
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i8*, i8** %13, align 8
  %206 = call i32 @lsmFree(i32 %204, i8* %205)
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %208 = call i32* @lsmFsIntegrityCheck(%struct.TYPE_10__* %207)
  %209 = call i32 @assert(i32* %208)
  ret void
}

declare dso_local i32 @assert(i32*) #1

declare dso_local %struct.TYPE_11__* @lsmDbSnapshotLevel(i32*) #1

declare dso_local i32 @lsmLogMessage(%struct.TYPE_10__*, i32, i8*, ...) #1

declare dso_local i32 @fileToString(%struct.TYPE_10__*, i8*, i32, i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @sortedDumpSegment(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @lsmInfoFreelist(%struct.TYPE_10__*, i8**) #1

declare dso_local i32 @lsmFree(i32, i8*) #1

declare dso_local i32* @lsmFsIntegrityCheck(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
