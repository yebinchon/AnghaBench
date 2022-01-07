; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_scan.c_count_block.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_scan.c_count_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_18__*, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__** }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32* }

@DN_MAX_LEVELS = common dso_local global i32 0, align 4
@DMU_OT_TOTAL = common dso_local global i32 0, align 4
@DMU_OT_NEWTYPE = common dso_local global i32 0, align 4
@DMU_OT_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_23__*)* @count_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @count_block(%struct.TYPE_22__* %0, %struct.TYPE_20__* %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %6, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %14 = call i64 @BP_IS_EMBEDDED(%struct.TYPE_23__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %229

17:                                               ; preds = %3
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = call i32 @DVA_GET_ASIZE(i32* %32)
  %34 = call i32 @atomic_add_64(i32* %28, i32 %33)
  br label %61

35:                                               ; preds = %17
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  store %struct.TYPE_21__* %40, %struct.TYPE_21__** %8, align 8
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %57, %35
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %44 = call i32 @BP_GET_NDVAS(%struct.TYPE_23__* %43)
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call i32 @DVA_GET_ASIZE(i32* %54)
  %56 = call i32 @atomic_add_64(i32* %48, i32 %55)
  br label %57

57:                                               ; preds = %46
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %41

60:                                               ; preds = %41
  br label %61

61:                                               ; preds = %60, %22
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %63 = icmp eq %struct.TYPE_20__* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %229

65:                                               ; preds = %61
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = call i32 @mutex_enter(i32* %67)
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %222, %65
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 4
  br i1 %71, label %72, label %225

72:                                               ; preds = %69
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 2
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %77 = call i32 @BP_GET_LEVEL(%struct.TYPE_23__* %76)
  br label %80

78:                                               ; preds = %72
  %79 = load i32, i32* @DN_MAX_LEVELS, align 4
  br label %80

80:                                               ; preds = %78, %75
  %81 = phi i32 [ %77, %75 ], [ %79, %78 ]
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %7, align 4
  %83 = and i32 %82, 1
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %87 = call i32 @BP_GET_TYPE(%struct.TYPE_23__* %86)
  br label %90

88:                                               ; preds = %80
  %89 = load i32, i32* @DMU_OT_TOTAL, align 4
  br label %90

90:                                               ; preds = %88, %85
  %91 = phi i32 [ %87, %85 ], [ %89, %88 ]
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @DMU_OT_NEWTYPE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* @DMU_OT_OTHER, align 4
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %96, %90
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %101, i64 %103
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i64 %107
  store %struct.TYPE_19__* %108, %struct.TYPE_19__** %11, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %114 = call i64 @BP_GET_ASIZE(%struct.TYPE_23__* %113)
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %114
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %116, align 4
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %122 = call i64 @BP_GET_LSIZE(%struct.TYPE_23__* %121)
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %122
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %124, align 4
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %130 = call i64 @BP_GET_PSIZE(%struct.TYPE_23__* %129)
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %130
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %132, align 4
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %138 = call i64 @BP_COUNT_GANG(%struct.TYPE_23__* %137)
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %142, %138
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %140, align 4
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %146 = call i32 @BP_GET_NDVAS(%struct.TYPE_23__* %145)
  switch i32 %146, label %221 [
    i32 2, label %147
    i32 3, label %165
  ]

147:                                              ; preds = %98
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = call i32 @DVA_GET_VDEV(i32* %151)
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = call i32 @DVA_GET_VDEV(i32* %156)
  %158 = icmp eq i32 %152, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %147
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %159, %147
  br label %221

165:                                              ; preds = %98
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = call i32 @DVA_GET_VDEV(i32* %169)
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  %175 = call i32 @DVA_GET_VDEV(i32* %174)
  %176 = icmp eq i32 %170, %175
  %177 = zext i1 %176 to i32
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = call i32 @DVA_GET_VDEV(i32* %181)
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 2
  %187 = call i32 @DVA_GET_VDEV(i32* %186)
  %188 = icmp eq i32 %182, %187
  %189 = zext i1 %188 to i32
  %190 = add nsw i32 %177, %189
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 1
  %195 = call i32 @DVA_GET_VDEV(i32* %194)
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 2
  %200 = call i32 @DVA_GET_VDEV(i32* %199)
  %201 = icmp eq i32 %195, %200
  %202 = zext i1 %201 to i32
  %203 = add nsw i32 %190, %202
  store i32 %203, i32* %12, align 4
  %204 = load i32, i32* %12, align 4
  %205 = icmp eq i32 %204, 1
  br i1 %205, label %206, label %211

206:                                              ; preds = %165
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %208, align 4
  br label %220

211:                                              ; preds = %165
  %212 = load i32, i32* %12, align 4
  %213 = icmp eq i32 %212, 3
  br i1 %213, label %214, label %219

214:                                              ; preds = %211
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %216, align 4
  br label %219

219:                                              ; preds = %214, %211
  br label %220

220:                                              ; preds = %219, %206
  br label %221

221:                                              ; preds = %98, %220, %164
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %7, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %7, align 4
  br label %69

225:                                              ; preds = %69
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 0
  %228 = call i32 @mutex_exit(i32* %227)
  br label %229

229:                                              ; preds = %225, %64, %16
  ret void
}

declare dso_local i64 @BP_IS_EMBEDDED(%struct.TYPE_23__*) #1

declare dso_local i32 @atomic_add_64(i32*, i32) #1

declare dso_local i32 @DVA_GET_ASIZE(i32*) #1

declare dso_local i32 @BP_GET_NDVAS(%struct.TYPE_23__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @BP_GET_LEVEL(%struct.TYPE_23__*) #1

declare dso_local i32 @BP_GET_TYPE(%struct.TYPE_23__*) #1

declare dso_local i64 @BP_GET_ASIZE(%struct.TYPE_23__*) #1

declare dso_local i64 @BP_GET_LSIZE(%struct.TYPE_23__*) #1

declare dso_local i64 @BP_GET_PSIZE(%struct.TYPE_23__*) #1

declare dso_local i64 @BP_COUNT_GANG(%struct.TYPE_23__*) #1

declare dso_local i32 @DVA_GET_VDEV(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
