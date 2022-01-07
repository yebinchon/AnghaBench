; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_dump_free.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_dump_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.drr_free }
%struct.drr_free = type { i64, i64, i64, i32 }

@PENDING_NONE = common dso_local global i64 0, align 8
@PENDING_FREE = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i64 0, align 8
@DRR_FREE = common dso_local global i32 0, align 4
@DMU_OBJECT_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64, i64, i64)* @dump_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_free(%struct.TYPE_7__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.drr_free*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.drr_free* %15, %struct.drr_free** %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %16, %19
  br i1 %20, label %35, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  br label %33

33:                                               ; preds = %27, %21
  %34 = phi i1 [ false, %21 ], [ %32, %27 ]
  br label %35

35:                                               ; preds = %33, %4
  %36 = phi i1 [ true, %4 ], [ %34, %33 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PENDING_NONE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %35
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PENDING_FREE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = call i64 @dump_record(%struct.TYPE_7__* %51, i32* null, i32 0)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @EINTR, align 4
  %56 = call i32 @SET_ERROR(i32 %55)
  store i32 %56, i32* %5, align 4
  br label %167

57:                                               ; preds = %50
  %58 = load i64, i64* @PENDING_NONE, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %57, %44, %35
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @PENDING_FREE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %116

67:                                               ; preds = %61
  %68 = load %struct.drr_free*, %struct.drr_free** %10, align 8
  %69 = getelementptr inbounds %struct.drr_free, %struct.drr_free* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %104

73:                                               ; preds = %67
  %74 = load %struct.drr_free*, %struct.drr_free** %10, align 8
  %75 = getelementptr inbounds %struct.drr_free, %struct.drr_free* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.drr_free*, %struct.drr_free** %10, align 8
  %78 = getelementptr inbounds %struct.drr_free, %struct.drr_free* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = load i64, i64* %8, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %104

83:                                               ; preds = %73
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* %9, align 8
  %86 = add nsw i64 %84, %85
  %87 = load i64, i64* %8, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %83
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* @UINT64_MAX, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %89, %83
  %94 = load i64, i64* @UINT64_MAX, align 8
  %95 = load %struct.drr_free*, %struct.drr_free** %10, align 8
  %96 = getelementptr inbounds %struct.drr_free, %struct.drr_free* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  br label %103

97:                                               ; preds = %89
  %98 = load i64, i64* %9, align 8
  %99 = load %struct.drr_free*, %struct.drr_free** %10, align 8
  %100 = getelementptr inbounds %struct.drr_free, %struct.drr_free* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, %98
  store i64 %102, i64* %100, align 8
  br label %103

103:                                              ; preds = %97, %93
  store i32 0, i32* %5, align 4
  br label %167

104:                                              ; preds = %73, %67
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %106 = call i64 @dump_record(%struct.TYPE_7__* %105, i32* null, i32 0)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* @EINTR, align 4
  %110 = call i32 @SET_ERROR(i32 %109)
  store i32 %110, i32* %5, align 4
  br label %167

111:                                              ; preds = %104
  %112 = load i64, i64* @PENDING_NONE, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  store i64 %112, i64* %114, align 8
  br label %115

115:                                              ; preds = %111
  br label %116

116:                                              ; preds = %115, %61
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = call i32 @bzero(%struct.TYPE_8__* %119, i32 4)
  %121 = load i32, i32* @DRR_FREE, align 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 4
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  store i32 %121, i32* %125, align 8
  %126 = load i64, i64* %7, align 8
  %127 = load %struct.drr_free*, %struct.drr_free** %10, align 8
  %128 = getelementptr inbounds %struct.drr_free, %struct.drr_free* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  %129 = load i64, i64* %8, align 8
  %130 = load %struct.drr_free*, %struct.drr_free** %10, align 8
  %131 = getelementptr inbounds %struct.drr_free, %struct.drr_free* %130, i32 0, i32 1
  store i64 %129, i64* %131, align 8
  %132 = load i64, i64* %8, align 8
  %133 = load i64, i64* %9, align 8
  %134 = add nsw i64 %132, %133
  %135 = load i64, i64* %8, align 8
  %136 = icmp slt i64 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %116
  %138 = load i64, i64* @DMU_OBJECT_END, align 8
  %139 = load %struct.drr_free*, %struct.drr_free** %10, align 8
  %140 = getelementptr inbounds %struct.drr_free, %struct.drr_free* %139, i32 0, i32 2
  store i64 %138, i64* %140, align 8
  br label %145

141:                                              ; preds = %116
  %142 = load i64, i64* %9, align 8
  %143 = load %struct.drr_free*, %struct.drr_free** %10, align 8
  %144 = getelementptr inbounds %struct.drr_free, %struct.drr_free* %143, i32 0, i32 2
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %141, %137
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.drr_free*, %struct.drr_free** %10, align 8
  %150 = getelementptr inbounds %struct.drr_free, %struct.drr_free* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 8
  %151 = load i64, i64* %9, align 8
  %152 = load i64, i64* @DMU_OBJECT_END, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %145
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %156 = call i64 @dump_record(%struct.TYPE_7__* %155, i32* null, i32 0)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load i32, i32* @EINTR, align 4
  %160 = call i32 @SET_ERROR(i32 %159)
  store i32 %160, i32* %5, align 4
  br label %167

161:                                              ; preds = %154
  br label %166

162:                                              ; preds = %145
  %163 = load i64, i64* @PENDING_FREE, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 2
  store i64 %163, i64* %165, align 8
  br label %166

166:                                              ; preds = %162, %161
  store i32 0, i32* %5, align 4
  br label %167

167:                                              ; preds = %166, %158, %108, %103, %54
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @dump_record(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
