; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_indirect.c_vdev_indirect_splits_damage.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_indirect.c_vdev_indirect_splits_damage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i64, i32, %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*)* @vdev_indirect_splits_damage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_indirect_splits_damage(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = call i8* @list_head(i32* %15)
  %17 = bitcast i8* %16 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %6, align 8
  br label %18

18:                                               ; preds = %63, %2
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = icmp ne %struct.TYPE_13__* %19, null
  br i1 %20, label %21, label %68

21:                                               ; preds = %18
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %51, %21
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %24
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i64 %35
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %8, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = icmp ne %struct.TYPE_11__* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %30
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %49 = call i32 @list_insert_tail(i32* %47, %struct.TYPE_14__* %48)
  br label %50

50:                                               ; preds = %41, %30
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %24

54:                                               ; preds = %24
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  %57 = call i64 @list_is_empty(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @EIO, align 4
  %61 = call i32 @SET_ERROR(i32 %60)
  store i32 %61, i32* %5, align 4
  br label %146

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %67 = call %struct.TYPE_13__* @list_next(i32* %65, %struct.TYPE_13__* %66)
  store %struct.TYPE_13__* %67, %struct.TYPE_13__** %6, align 8
  br label %18

68:                                               ; preds = %18
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @vdev_indirect_splits_enumerate_randomly(%struct.TYPE_12__* %69, i32* %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %146

75:                                               ; preds = %68
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = call i8* @list_head(i32* %79)
  %81 = bitcast i8* %80 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %81, %struct.TYPE_13__** %9, align 8
  br label %82

82:                                               ; preds = %140, %75
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %84 = icmp ne %struct.TYPE_13__* %83, null
  br i1 %84, label %85, label %145

85:                                               ; preds = %82
  store i32 0, i32* %10, align 4
  br label %86

86:                                               ; preds = %121, %85
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %124

92:                                               ; preds = %86
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i64 %97
  store %struct.TYPE_14__* %98, %struct.TYPE_14__** %11, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = icmp eq %struct.TYPE_14__* %99, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %92
  br label %121

105:                                              ; preds = %92
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = icmp eq %struct.TYPE_11__* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %121

111:                                              ; preds = %105
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @abd_zero(%struct.TYPE_11__* %114, i32 %119)
  br label %121

121:                                              ; preds = %111, %110, %104
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %86

124:                                              ; preds = %86
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %127, 2
  store i32 %128, i32* %126, align 4
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = icmp uge i64 %132, 4096
  br i1 %133, label %134, label %139

134:                                              ; preds = %124
  %135 = load i64, i64* @UINT64_MAX, align 8
  %136 = trunc i64 %135 to i32
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  br label %145

139:                                              ; preds = %124
  br label %140

140:                                              ; preds = %139
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %144 = call %struct.TYPE_13__* @list_next(i32* %142, %struct.TYPE_13__* %143)
  store %struct.TYPE_13__* %144, %struct.TYPE_13__** %9, align 8
  br label %82

145:                                              ; preds = %134, %82
  br label %146

146:                                              ; preds = %145, %74, %59
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  %149 = call i8* @list_head(i32* %148)
  %150 = bitcast i8* %149 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %150, %struct.TYPE_13__** %12, align 8
  br label %151

151:                                              ; preds = %169, %146
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %153 = icmp ne %struct.TYPE_13__* %152, null
  br i1 %153, label %154, label %174

154:                                              ; preds = %151
  br label %155

155:                                              ; preds = %161, %154
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 2
  %158 = call i8* @list_head(i32* %157)
  %159 = bitcast i8* %158 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %159, %struct.TYPE_14__** %13, align 8
  %160 = icmp ne %struct.TYPE_14__* %159, null
  br i1 %160, label %161, label %166

161:                                              ; preds = %155
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %165 = call i32 @list_remove(i32* %163, %struct.TYPE_14__* %164)
  br label %155

166:                                              ; preds = %155
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 1
  store i64 0, i64* %168, align 8
  br label %169

169:                                              ; preds = %166
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %173 = call %struct.TYPE_13__* @list_next(i32* %171, %struct.TYPE_13__* %172)
  store %struct.TYPE_13__* %173, %struct.TYPE_13__** %12, align 8
  br label %151

174:                                              ; preds = %151
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local i8* @list_head(i32*) #1

declare dso_local i32 @list_insert_tail(i32*, %struct.TYPE_14__*) #1

declare dso_local i64 @list_is_empty(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local %struct.TYPE_13__* @list_next(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @vdev_indirect_splits_enumerate_randomly(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @abd_zero(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @list_remove(i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
