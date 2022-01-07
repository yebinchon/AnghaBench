; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_image.c_opj_image_comp_header_update.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_image.c_opj_image_comp_header_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_5__*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i32, i32, i32 }
%struct.opj_cp = type { i64, i64, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opj_image_comp_header_update(%struct.TYPE_4__* %0, %struct.opj_cp* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.opj_cp*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.opj_cp* %1, %struct.opj_cp** %4, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %16, align 8
  %17 = load %struct.opj_cp*, %struct.opj_cp** %4, align 8
  %18 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @opj_uint_max(i64 %19, i32 %22)
  store i64 %23, i64* %8, align 8
  %24 = load %struct.opj_cp*, %struct.opj_cp** %4, align 8
  %25 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @opj_uint_max(i64 %26, i32 %29)
  store i64 %30, i64* %9, align 8
  %31 = load %struct.opj_cp*, %struct.opj_cp** %4, align 8
  %32 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.opj_cp*, %struct.opj_cp** %4, align 8
  %35 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = sub i32 %36, 1
  %38 = load %struct.opj_cp*, %struct.opj_cp** %4, align 8
  %39 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = mul i32 %37, %40
  %42 = zext i32 %41 to i64
  %43 = add nsw i64 %33, %42
  store i64 %43, i64* %10, align 8
  %44 = load %struct.opj_cp*, %struct.opj_cp** %4, align 8
  %45 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.opj_cp*, %struct.opj_cp** %4, align 8
  %48 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = sub i32 %49, 1
  %51 = load %struct.opj_cp*, %struct.opj_cp** %4, align 8
  %52 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = mul i32 %50, %53
  %55 = zext i32 %54 to i64
  %56 = add nsw i64 %46, %55
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load %struct.opj_cp*, %struct.opj_cp** %4, align 8
  %59 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @opj_uint_adds(i64 %57, i32 %60)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @opj_uint_min(i32 %61, i32 %64)
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load %struct.opj_cp*, %struct.opj_cp** %4, align 8
  %68 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @opj_uint_adds(i64 %66, i32 %69)
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @opj_uint_min(i32 %70, i32 %73)
  store i64 %74, i64* %11, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  store %struct.TYPE_5__* %77, %struct.TYPE_5__** %16, align 8
  store i64 0, i64* %5, align 8
  br label %78

78:                                               ; preds = %133, %2
  %79 = load i64, i64* %5, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %84, label %136

84:                                               ; preds = %78
  %85 = load i64, i64* %8, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @opj_uint_ceildiv(i64 %85, i32 %88)
  store i64 %89, i64* %12, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @opj_uint_ceildiv(i64 %90, i32 %93)
  store i64 %94, i64* %13, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @opj_uint_ceildiv(i64 %95, i32 %98)
  store i64 %99, i64* %14, align 8
  %100 = load i64, i64* %11, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @opj_uint_ceildiv(i64 %100, i32 %103)
  store i64 %104, i64* %15, align 8
  %105 = load i64, i64* %14, align 8
  %106 = load i64, i64* %12, align 8
  %107 = sub nsw i64 %105, %106
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @opj_uint_ceildivpow2(i64 %107, i32 %110)
  store i64 %111, i64* %6, align 8
  %112 = load i64, i64* %15, align 8
  %113 = load i64, i64* %13, align 8
  %114 = sub nsw i64 %112, %113
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @opj_uint_ceildivpow2(i64 %114, i32 %117)
  store i64 %118, i64* %7, align 8
  %119 = load i64, i64* %6, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 3
  store i64 %119, i64* %121, align 8
  %122 = load i64, i64* %7, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  store i64 %122, i64* %124, align 8
  %125 = load i64, i64* %12, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  store i64 %125, i64* %127, align 8
  %128 = load i64, i64* %13, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 1
  store %struct.TYPE_5__* %132, %struct.TYPE_5__** %16, align 8
  br label %133

133:                                              ; preds = %84
  %134 = load i64, i64* %5, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %5, align 8
  br label %78

136:                                              ; preds = %78
  ret void
}

declare dso_local i64 @opj_uint_max(i64, i32) #1

declare dso_local i64 @opj_uint_min(i32, i32) #1

declare dso_local i32 @opj_uint_adds(i64, i32) #1

declare dso_local i64 @opj_uint_ceildiv(i64, i32) #1

declare dso_local i64 @opj_uint_ceildivpow2(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
