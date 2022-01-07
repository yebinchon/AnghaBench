; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz.c_vdev_raidz_generate_parity_pqr.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz.c_vdev_raidz_generate_parity_pqr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.pqr_struct = type { i64*, i64*, i64* }

@VDEV_RAIDZ_P = common dso_local global i64 0, align 8
@VDEV_RAIDZ_Q = common dso_local global i64 0, align 8
@VDEV_RAIDZ_R = common dso_local global i64 0, align 8
@vdev_raidz_pqr_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @vdev_raidz_generate_parity_pqr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_raidz_generate_parity_pqr(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.pqr_struct, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i64, i64* @VDEV_RAIDZ_P, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = udiv i64 %20, 8
  store i64 %21, i64* %6, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i64, i64* @VDEV_RAIDZ_P, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i64, i64* @VDEV_RAIDZ_Q, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %28, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i64, i64* @VDEV_RAIDZ_P, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i64, i64* @VDEV_RAIDZ_R, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %45, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @ASSERT(i32 %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %222, %1
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %225

65:                                               ; preds = %59
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %11, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i64, i64* @VDEV_RAIDZ_P, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call i64* @abd_to_buf(i32* %80)
  store i64* %81, i64** %3, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i64, i64* @VDEV_RAIDZ_Q, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i64* @abd_to_buf(i32* %88)
  store i64* %89, i64** %4, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i64, i64* @VDEV_RAIDZ_R, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i64* @abd_to_buf(i32* %96)
  store i64* %97, i64** %5, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = udiv i64 %106, 8
  store i64 %107, i64* %7, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %108, %111
  br i1 %112, label %113, label %176

113:                                              ; preds = %65
  %114 = load i64, i64* %7, align 8
  %115 = load i64, i64* %6, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = load i64, i64* %7, align 8
  %119 = icmp eq i64 %118, 0
  br label %120

120:                                              ; preds = %117, %113
  %121 = phi i1 [ true, %113 ], [ %119, %117 ]
  %122 = zext i1 %121 to i32
  %123 = call i32 @ASSERT(i32 %122)
  %124 = load i64*, i64** %3, align 8
  %125 = load i32*, i32** %11, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @abd_copy_to_buf(i64* %124, i32* %125, i32 %133)
  %135 = load i64*, i64** %4, align 8
  %136 = load i64*, i64** %3, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @memcpy(i64* %135, i64* %136, i32 %144)
  %146 = load i64*, i64** %5, align 8
  %147 = load i64*, i64** %3, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @memcpy(i64* %146, i64* %147, i32 %155)
  %157 = load i64, i64* %7, align 8
  store i64 %157, i64* %9, align 8
  br label %158

158:                                              ; preds = %172, %120
  %159 = load i64, i64* %9, align 8
  %160 = load i64, i64* %6, align 8
  %161 = icmp ult i64 %159, %160
  br i1 %161, label %162, label %175

162:                                              ; preds = %158
  %163 = load i64*, i64** %3, align 8
  %164 = load i64, i64* %9, align 8
  %165 = getelementptr inbounds i64, i64* %163, i64 %164
  store i64 0, i64* %165, align 8
  %166 = load i64*, i64** %4, align 8
  %167 = load i64, i64* %9, align 8
  %168 = getelementptr inbounds i64, i64* %166, i64 %167
  store i64 0, i64* %168, align 8
  %169 = load i64*, i64** %5, align 8
  %170 = load i64, i64* %9, align 8
  %171 = getelementptr inbounds i64, i64* %169, i64 %170
  store i64 0, i64* %171, align 8
  br label %172

172:                                              ; preds = %162
  %173 = load i64, i64* %9, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %9, align 8
  br label %158

175:                                              ; preds = %158
  br label %221

176:                                              ; preds = %65
  %177 = getelementptr inbounds %struct.pqr_struct, %struct.pqr_struct* %12, i32 0, i32 0
  %178 = load i64*, i64** %3, align 8
  store i64* %178, i64** %177, align 8
  %179 = getelementptr inbounds %struct.pqr_struct, %struct.pqr_struct* %12, i32 0, i32 1
  %180 = load i64*, i64** %4, align 8
  store i64* %180, i64** %179, align 8
  %181 = getelementptr inbounds %struct.pqr_struct, %struct.pqr_struct* %12, i32 0, i32 2
  %182 = load i64*, i64** %5, align 8
  store i64* %182, i64** %181, align 8
  %183 = load i64, i64* %7, align 8
  %184 = load i64, i64* %6, align 8
  %185 = icmp ule i64 %183, %184
  %186 = zext i1 %185 to i32
  %187 = call i32 @ASSERT(i32 %186)
  %188 = load i32*, i32** %11, align 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @vdev_raidz_pqr_func, align 4
  %198 = call i32 @abd_iterate_func(i32* %188, i32 0, i32 %196, i32 %197, %struct.pqr_struct* %12)
  %199 = load i64, i64* %7, align 8
  store i64 %199, i64* %9, align 8
  br label %200

200:                                              ; preds = %217, %176
  %201 = load i64, i64* %9, align 8
  %202 = load i64, i64* %6, align 8
  %203 = icmp ult i64 %201, %202
  br i1 %203, label %204, label %220

204:                                              ; preds = %200
  %205 = load i64*, i64** %4, align 8
  %206 = load i64, i64* %9, align 8
  %207 = getelementptr inbounds i64, i64* %205, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* %8, align 8
  %210 = call i32 @VDEV_RAIDZ_64MUL_2(i64 %208, i64 %209)
  %211 = load i64*, i64** %5, align 8
  %212 = load i64, i64* %9, align 8
  %213 = getelementptr inbounds i64, i64* %211, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* %8, align 8
  %216 = call i32 @VDEV_RAIDZ_64MUL_4(i64 %214, i64 %215)
  br label %217

217:                                              ; preds = %204
  %218 = load i64, i64* %9, align 8
  %219 = add i64 %218, 1
  store i64 %219, i64* %9, align 8
  br label %200

220:                                              ; preds = %200
  br label %221

221:                                              ; preds = %220, %175
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %10, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %10, align 4
  br label %59

225:                                              ; preds = %59
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64* @abd_to_buf(i32*) #1

declare dso_local i32 @abd_copy_to_buf(i64*, i32*, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @abd_iterate_func(i32*, i32, i32, i32, %struct.pqr_struct*) #1

declare dso_local i32 @VDEV_RAIDZ_64MUL_2(i64, i64) #1

declare dso_local i32 @VDEV_RAIDZ_64MUL_4(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
