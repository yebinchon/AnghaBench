; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz.c_vdev_raidz_generate_parity_pq.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz.c_vdev_raidz_generate_parity_pq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.pqr_struct = type { i64*, i64*, i32* }

@VDEV_RAIDZ_P = common dso_local global i64 0, align 8
@VDEV_RAIDZ_Q = common dso_local global i64 0, align 8
@vdev_raidz_pq_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @vdev_raidz_generate_parity_pq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_raidz_generate_parity_pq(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.pqr_struct, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load i64, i64* @VDEV_RAIDZ_P, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = udiv i64 %19, 8
  store i64 %20, i64* %5, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i64, i64* @VDEV_RAIDZ_P, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i64, i64* @VDEV_RAIDZ_Q, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %27, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %175, %1
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %178

47:                                               ; preds = %41
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %10, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i64, i64* @VDEV_RAIDZ_P, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i64* @abd_to_buf(i32* %62)
  store i64* %63, i64** %3, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i64, i64* @VDEV_RAIDZ_Q, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = call i64* @abd_to_buf(i32* %70)
  store i64* %71, i64** %4, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = udiv i64 %80, 8
  store i64 %81, i64* %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %82, %85
  br i1 %86, label %87, label %136

87:                                               ; preds = %47
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* %5, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load i64, i64* %6, align 8
  %93 = icmp eq i64 %92, 0
  br label %94

94:                                               ; preds = %91, %87
  %95 = phi i1 [ true, %87 ], [ %93, %91 ]
  %96 = zext i1 %95 to i32
  %97 = call i32 @ASSERT(i32 %96)
  %98 = load i64*, i64** %3, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @abd_copy_to_buf(i64* %98, i32* %99, i32 %107)
  %109 = load i64*, i64** %4, align 8
  %110 = load i64*, i64** %3, align 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @memcpy(i64* %109, i64* %110, i32 %118)
  %120 = load i64, i64* %6, align 8
  store i64 %120, i64* %8, align 8
  br label %121

121:                                              ; preds = %132, %94
  %122 = load i64, i64* %8, align 8
  %123 = load i64, i64* %5, align 8
  %124 = icmp ult i64 %122, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %121
  %126 = load i64*, i64** %3, align 8
  %127 = load i64, i64* %8, align 8
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  store i64 0, i64* %128, align 8
  %129 = load i64*, i64** %4, align 8
  %130 = load i64, i64* %8, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  store i64 0, i64* %131, align 8
  br label %132

132:                                              ; preds = %125
  %133 = load i64, i64* %8, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %8, align 8
  br label %121

135:                                              ; preds = %121
  br label %174

136:                                              ; preds = %47
  %137 = getelementptr inbounds %struct.pqr_struct, %struct.pqr_struct* %11, i32 0, i32 0
  %138 = load i64*, i64** %3, align 8
  store i64* %138, i64** %137, align 8
  %139 = getelementptr inbounds %struct.pqr_struct, %struct.pqr_struct* %11, i32 0, i32 1
  %140 = load i64*, i64** %4, align 8
  store i64* %140, i64** %139, align 8
  %141 = getelementptr inbounds %struct.pqr_struct, %struct.pqr_struct* %11, i32 0, i32 2
  store i32* null, i32** %141, align 8
  %142 = load i64, i64* %6, align 8
  %143 = load i64, i64* %5, align 8
  %144 = icmp ule i64 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @ASSERT(i32 %145)
  %147 = load i32*, i32** %10, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @vdev_raidz_pq_func, align 4
  %157 = call i32 @abd_iterate_func(i32* %147, i32 0, i32 %155, i32 %156, %struct.pqr_struct* %11)
  %158 = load i64, i64* %6, align 8
  store i64 %158, i64* %8, align 8
  br label %159

159:                                              ; preds = %170, %136
  %160 = load i64, i64* %8, align 8
  %161 = load i64, i64* %5, align 8
  %162 = icmp ult i64 %160, %161
  br i1 %162, label %163, label %173

163:                                              ; preds = %159
  %164 = load i64*, i64** %4, align 8
  %165 = load i64, i64* %8, align 8
  %166 = getelementptr inbounds i64, i64* %164, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %7, align 8
  %169 = call i32 @VDEV_RAIDZ_64MUL_2(i64 %167, i64 %168)
  br label %170

170:                                              ; preds = %163
  %171 = load i64, i64* %8, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %8, align 8
  br label %159

173:                                              ; preds = %159
  br label %174

174:                                              ; preds = %173, %135
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %9, align 4
  br label %41

178:                                              ; preds = %41
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64* @abd_to_buf(i32*) #1

declare dso_local i32 @abd_copy_to_buf(i64*, i32*, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @abd_iterate_func(i32*, i32, i32, i32, %struct.pqr_struct*) #1

declare dso_local i32 @VDEV_RAIDZ_64MUL_2(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
