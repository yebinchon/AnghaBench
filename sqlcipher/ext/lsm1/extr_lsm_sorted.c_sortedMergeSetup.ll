; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_sortedMergeSetup.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_sortedMergeSetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64, i32, i64, %struct.TYPE_12__, %struct.TYPE_14__*, %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32* }

@LSM_OK = common dso_local global i32 0, align 4
@LEVEL_FREELIST_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_14__*, i32, %struct.TYPE_14__**)* @sortedMergeSetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sortedMergeSetup(%struct.TYPE_11__* %0, %struct.TYPE_14__* %1, i32 %2, %struct.TYPE_14__** %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca %struct.TYPE_14__*, align 8
  %19 = alloca %struct.TYPE_14__**, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_14__** %3, %struct.TYPE_14__*** %8, align 8
  %20 = load i32, i32* @LSM_OK, align 4
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @lsmMallocZeroRc(i32 %23, i32 56, i32* %9)
  %25 = inttoptr i64 %24 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %10, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %27 = icmp ne %struct.TYPE_14__* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 8
  %35 = trunc i64 %34 to i32
  %36 = call i64 @lsmMallocZeroRc(i32 %31, i32 %35, i32* %9)
  %37 = inttoptr i64 %36 to %struct.TYPE_12__*
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 5
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %39, align 8
  br label %40

40:                                               ; preds = %28, %4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @LSM_OK, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %160

44:                                               ; preds = %40
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %14, align 8
  store i32 1, i32* %16, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %18, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 6
  store i64 %53, i64* %55, align 8
  store i32 0, i32* %15, align 4
  br label %56

56:                                               ; preds = %94, %44
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %97

60:                                               ; preds = %56
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  store %struct.TYPE_14__* %69, %struct.TYPE_14__** %14, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 5
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i64 %74
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 3
  %78 = bitcast %struct.TYPE_12__* %75 to i8*
  %79 = bitcast %struct.TYPE_12__* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 8, i1 false)
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @LEVEL_FREELIST_ONLY, align 4
  %84 = and i32 %82, %83
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %60
  store i32 0, i32* %16, align 4
  br label %87

87:                                               ; preds = %86, %60
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %92 = call i32 @sortedFreeLevel(i32 %90, %struct.TYPE_14__* %91)
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %93, %struct.TYPE_14__** %18, align 8
  br label %94

94:                                               ; preds = %87
  %95 = load i32, i32* %15, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %15, align 4
  br label %56

97:                                               ; preds = %56
  %98 = load i32, i32* %16, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i32, i32* @LEVEL_FREELIST_ONLY, align 4
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %100, %97
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call %struct.TYPE_14__* @lsmDbSnapshotLevel(i32 %109)
  store %struct.TYPE_14__* %110, %struct.TYPE_14__** %17, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 4
  store %struct.TYPE_14__* %111, %struct.TYPE_14__** %113, align 8
  store %struct.TYPE_14__** %17, %struct.TYPE_14__*** %19, align 8
  br label %114

114:                                              ; preds = %120, %106
  %115 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %19, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %118 = icmp ne %struct.TYPE_14__* %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  br label %120

120:                                              ; preds = %119
  %121 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %19, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 4
  store %struct.TYPE_14__** %123, %struct.TYPE_14__*** %19, align 8
  br label %114

124:                                              ; preds = %114
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %126 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %19, align 8
  store %struct.TYPE_14__* %125, %struct.TYPE_14__** %126, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %131 = call i32 @lsmDbSnapshotSetLevel(i32 %129, %struct.TYPE_14__* %130)
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %133 = icmp ne %struct.TYPE_14__* %132, null
  br i1 %133, label %134, label %159

134:                                              ; preds = %124
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %159

139:                                              ; preds = %134
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %159

145:                                              ; preds = %139
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %147 = icmp ne %struct.TYPE_14__* %146, null
  br i1 %147, label %148, label %159

148:                                              ; preds = %145
  %149 = load i32, i32* %16, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %148
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @LEVEL_FREELIST_ONLY, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %151, %148
  store i32 1, i32* %11, align 4
  br label %159

159:                                              ; preds = %158, %151, %145, %139, %134, %124
  br label %160

160:                                              ; preds = %159, %40
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %161, %162
  %164 = sext i32 %163 to i64
  %165 = mul i64 4, %164
  %166 = add i64 16, %165
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %13, align 4
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %13, align 4
  %172 = call i64 @lsmMallocZeroRc(i32 %170, i32 %171, i32* %9)
  %173 = inttoptr i64 %172 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %173, %struct.TYPE_13__** %12, align 8
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %175 = icmp ne %struct.TYPE_13__* %174, null
  br i1 %175, label %176, label %191

176:                                              ; preds = %160
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i64 1
  %179 = bitcast %struct.TYPE_13__* %178 to i32*
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 1
  store i32* %179, i32** %181, align 8
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %182, %183
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %188 = ptrtoint %struct.TYPE_13__* %187 to i64
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 2
  store i64 %188, i64* %190, align 8
  br label %191

191:                                              ; preds = %176, %160
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %193 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  store %struct.TYPE_14__* %192, %struct.TYPE_14__** %193, align 8
  %194 = load i32, i32* %9, align 4
  ret i32 %194
}

declare dso_local i64 @lsmMallocZeroRc(i32, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sortedFreeLevel(i32, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @lsmDbSnapshotLevel(i32) #1

declare dso_local i32 @lsmDbSnapshotSetLevel(i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
