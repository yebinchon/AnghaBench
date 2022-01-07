; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_sortedMoveBlock.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_sortedMoveBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_22__*, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_20__, i64 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_24__ = type { i64, i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_23__ = type { i32, i64 }

@LSM_MAX_BLOCK_REDIRECTS = common dso_local global i32 0, align 4
@LSM_OK = common dso_local global i32 0, align 4
@moveBlockCb = common dso_local global i32 0, align 4
@LSM_LOG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i32*)* @sortedMoveBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sortedMoveBlock(%struct.TYPE_21__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_23__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  store %struct.TYPE_22__* %16, %struct.TYPE_22__** %6, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %18 = call %struct.TYPE_24__* @lsmDbSnapshotLevel(%struct.TYPE_22__* %17)
  store %struct.TYPE_24__* %18, %struct.TYPE_24__** %7, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br label %28

28:                                               ; preds = %23, %2
  %29 = phi i1 [ false, %2 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @LSM_MAX_BLOCK_REDIRECTS, align 4
  %37 = icmp sle i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32*, i32** %5, align 8
  store i32 0, i32* %40, align 4
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @LSM_MAX_BLOCK_REDIRECTS, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %28
  %48 = load i32, i32* @LSM_OK, align 4
  store i32 %48, i32* %3, align 4
  br label %229

49:                                               ; preds = %28
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 1
  store i64 %53, i64* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  store i32 0, i32* %55, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %57 = load i32, i32* @moveBlockCb, align 4
  %58 = call i32 @lsmWalkFreelist(%struct.TYPE_21__* %56, i32 1, i32 %57, %struct.TYPE_23__* %11)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @LSM_OK, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %49
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62, %49
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %3, align 4
  br label %229

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %8, align 4
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @lsmBlockAllocate(%struct.TYPE_21__* %71, i32 %72, i32* %9)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @LSM_OK, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %80, label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %9, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77, %68
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %3, align 4
  br label %229

82:                                               ; preds = %77
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 1
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %86, %87
  br label %89

89:                                               ; preds = %85, %82
  %90 = phi i1 [ false, %82 ], [ %88, %85 ]
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 2
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @lsmFsMoveBlock(i32 %95, %struct.TYPE_19__* %97, i32 %98, i32 %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @LSM_OK, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %227

104:                                              ; preds = %89
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %107, align 8
  %109 = icmp eq %struct.TYPE_25__* %108, null
  br i1 %109, label %110, label %123

110:                                              ; preds = %104
  %111 = load i32, i32* @LSM_MAX_BLOCK_REDIRECTS, align 4
  %112 = sext i32 %111 to i64
  %113 = mul i64 4, %112
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %12, align 4
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %12, align 4
  %119 = call %struct.TYPE_25__* @lsmMallocZeroRc(i32 %117, i32 %118, i32* %10)
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 1
  store %struct.TYPE_25__* %119, %struct.TYPE_25__** %122, align 8
  br label %123

123:                                              ; preds = %110, %104
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @LSM_OK, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %226

127:                                              ; preds = %123
  store i32 0, i32* %13, align 4
  br label %128

128:                                              ; preds = %149, %127
  %129 = load i32, i32* %13, align 4
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %129, %133
  br i1 %134, label %135, label %152

135:                                              ; preds = %128
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %138, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %135
  br label %152

148:                                              ; preds = %135
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %13, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %13, align 4
  br label %128

152:                                              ; preds = %147, %128
  %153 = load i32, i32* %13, align 4
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %153, %157
  br i1 %158, label %159, label %197

159:                                              ; preds = %152
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i64 1
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i64 0
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = mul i64 4, %174
  %176 = trunc i64 %175 to i32
  %177 = call i32 @memmove(%struct.TYPE_25__* %164, %struct.TYPE_25__* %169, i32 %176)
  %178 = load i32, i32* %8, align 4
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %182, i64 0
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 1
  store i32 %178, i32* %184, align 4
  %185 = load i32, i32* %9, align 4
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i64 0
  %191 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %190, i32 0, i32 0
  store i32 %185, i32* %191, align 4
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 8
  br label %207

197:                                              ; preds = %152
  %198 = load i32, i32* %9, align 4
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %201, align 8
  %203 = load i32, i32* %13, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 0
  store i32 %198, i32* %206, align 4
  br label %207

207:                                              ; preds = %197, %159
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %209 = load i32, i32* %8, align 4
  %210 = call i32 @lsmBlockFree(%struct.TYPE_21__* %208, i32 %209)
  store i32 %210, i32* %10, align 4
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @lsmFsBlockSize(i32 %213)
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @lsmFsPageSize(i32 %217)
  %219 = sdiv i32 %214, %218
  %220 = load i32*, i32** %5, align 8
  store i32 %219, i32* %220, align 4
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 0
  store %struct.TYPE_20__* %222, %struct.TYPE_20__** %225, align 8
  br label %226

226:                                              ; preds = %207, %123
  br label %227

227:                                              ; preds = %226, %89
  %228 = load i32, i32* %10, align 4
  store i32 %228, i32* %3, align 4
  br label %229

229:                                              ; preds = %227, %80, %66, %47
  %230 = load i32, i32* %3, align 4
  ret i32 %230
}

declare dso_local %struct.TYPE_24__* @lsmDbSnapshotLevel(%struct.TYPE_22__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lsmWalkFreelist(%struct.TYPE_21__*, i32, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @lsmBlockAllocate(%struct.TYPE_21__*, i32, i32*) #1

declare dso_local i32 @lsmFsMoveBlock(i32, %struct.TYPE_19__*, i32, i32) #1

declare dso_local %struct.TYPE_25__* @lsmMallocZeroRc(i32, i32, i32*) #1

declare dso_local i32 @memmove(%struct.TYPE_25__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @lsmBlockFree(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @lsmFsBlockSize(i32) #1

declare dso_local i32 @lsmFsPageSize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
