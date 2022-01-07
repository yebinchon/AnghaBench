; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_update_image_dimensions.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_update_image_dimensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64, i64 }

@EVT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Size x of the decoded component image is incorrect (comp[%d].w=%d).\0A\00", align 1
@OPJ_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"Size y of the decoded component image is incorrect (comp[%d].h=%d).\0A\00", align 1
@OPJ_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*)* @opj_j2k_update_image_dimensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opj_j2k_update_image_dimensions(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %9, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %9, align 8
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %108, %2
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %111

21:                                               ; preds = %15
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @opj_int_ceildiv(i64 %24, i64 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 4
  store i64 %28, i64* %30, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @opj_int_ceildiv(i64 %33, i64 %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @opj_int_ceildiv(i64 %42, i64 %45)
  store i64 %46, i64* %7, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @opj_int_ceildiv(i64 %49, i64 %52)
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @opj_int_ceildivpow2(i64 %54, i64 %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @opj_int_ceildivpow2(i64 %61, i64 %64)
  %66 = sub nsw i64 %58, %65
  store i64 %66, i64* %11, align 8
  %67 = load i64, i64* %11, align 8
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %21
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* @EVT_ERROR, align 4
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @opj_event_msg(i32* %70, i32 %71, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i64 %72, i64 %73)
  %75 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %75, i32* %3, align 4
  br label %113

76:                                               ; preds = %21
  %77 = load i64, i64* %11, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @opj_int_ceildivpow2(i64 %80, i64 %83)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @opj_int_ceildivpow2(i64 %87, i64 %90)
  %92 = sub nsw i64 %84, %91
  store i64 %92, i64* %10, align 8
  %93 = load i64, i64* %10, align 8
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %76
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* @EVT_ERROR, align 4
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* %10, align 8
  %100 = call i32 @opj_event_msg(i32* %96, i32 %97, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i64 %98, i64 %99)
  %101 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %101, i32* %3, align 4
  br label %113

102:                                              ; preds = %76
  %103 = load i64, i64* %10, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 1
  store %struct.TYPE_5__* %107, %struct.TYPE_5__** %9, align 8
  br label %108

108:                                              ; preds = %102
  %109 = load i64, i64* %6, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %6, align 8
  br label %15

111:                                              ; preds = %15
  %112 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %95, %69
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i64 @opj_int_ceildiv(i64, i64) #1

declare dso_local i64 @opj_int_ceildivpow2(i64, i64) #1

declare dso_local i32 @opj_event_msg(i32*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
