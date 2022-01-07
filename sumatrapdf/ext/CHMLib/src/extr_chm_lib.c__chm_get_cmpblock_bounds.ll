; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_lib.c__chm_get_cmpblock_bounds.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_lib.c__chm_get_cmpblock_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmFile = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chmFile*, i32, i32*, i32*)* @_chm_get_cmpblock_bounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_chm_get_cmpblock_bounds(%struct.chmFile* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.chmFile*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [8 x i32], align 16
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.chmFile* %0, %struct.chmFile** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %15 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  %19 = icmp slt i32 %13, %18
  br i1 %19, label %20, label %84

20:                                               ; preds = %4
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  store i32* %21, i32** %11, align 8
  store i32 8, i32* %12, align 4
  %22 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %24 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %25 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %28 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = add nsw i32 %26, %31
  %33 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %34 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = add nsw i32 %32, %37
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 %39, 8
  %41 = add nsw i32 %38, %40
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @_chm_fetch_bytes(%struct.chmFile* %22, i32* %23, i32 %41, i32 %42)
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %20
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @_unmarshal_uint64(i32** %11, i32* %12, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46, %20
  store i32 0, i32* %5, align 4
  br label %138

51:                                               ; preds = %46
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  store i32* %52, i32** %11, align 8
  store i32 8, i32* %12, align 4
  %53 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %55 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %56 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %59 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = add nsw i32 %57, %62
  %64 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %65 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = add nsw i32 %63, %68
  %70 = load i32, i32* %7, align 4
  %71 = mul nsw i32 %70, 8
  %72 = add nsw i32 %69, %71
  %73 = add nsw i32 %72, 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @_chm_fetch_bytes(%struct.chmFile* %53, i32* %54, i32 %73, i32 %74)
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %51
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @_unmarshal_int64(i32** %11, i32* %12, i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78, %51
  store i32 0, i32* %5, align 4
  br label %138

83:                                               ; preds = %78
  br label %121

84:                                               ; preds = %4
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  store i32* %85, i32** %11, align 8
  store i32 8, i32* %12, align 4
  %86 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %87 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %88 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %89 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %92 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = add nsw i32 %90, %95
  %97 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %98 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = add nsw i32 %96, %101
  %103 = load i32, i32* %7, align 4
  %104 = mul nsw i32 %103, 8
  %105 = add nsw i32 %102, %104
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @_chm_fetch_bytes(%struct.chmFile* %86, i32* %87, i32 %105, i32 %106)
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %84
  %111 = load i32*, i32** %8, align 8
  %112 = call i32 @_unmarshal_uint64(i32** %11, i32* %12, i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %110, %84
  store i32 0, i32* %5, align 4
  br label %138

115:                                              ; preds = %110
  %116 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %117 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %9, align 8
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %115, %83
  %122 = load i32*, i32** %8, align 8
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %9, align 8
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %125, %123
  store i32 %126, i32* %124, align 4
  %127 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %128 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %131 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %129, %133
  %135 = load i32*, i32** %8, align 8
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, %134
  store i32 %137, i32* %135, align 4
  store i32 1, i32* %5, align 4
  br label %138

138:                                              ; preds = %121, %114, %82, %50
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @_chm_fetch_bytes(%struct.chmFile*, i32*, i32, i32) #1

declare dso_local i32 @_unmarshal_uint64(i32**, i32*, i32*) #1

declare dso_local i32 @_unmarshal_int64(i32**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
