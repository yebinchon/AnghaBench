; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/lzx_compress/extr_lzx_layer.c_lzx_init.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/lzx_compress/extr_lzx_layer.c_lzx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzx_data = type { i32, i32, i64, i64, i8*, i8*, i8*, i8*, i32*, i64, i32, i32, i32, i32, i8*, i8*, i8* }

@num_position_slots = common dso_local global i32* null, align 8
@NUM_CHARS = common dso_local global i32 0, align 4
@MAX_MATCH = common dso_local global i32 0, align 4
@MIN_MATCH = common dso_local global i32 0, align 4
@LZX_FRAME_SIZE = common dso_local global i32 0, align 4
@lzx_get_chars = common dso_local global i32 0, align 4
@lzx_output_match = common dso_local global i32 0, align 4
@lzx_output_literal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzx_init(%struct.lzx_data** %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i8* %6, i32 %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.lzx_data**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.lzx_data*, align 8
  store %struct.lzx_data** %0, %struct.lzx_data*** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 15
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = load i32, i32* %12, align 4
  %26 = icmp sgt i32 %25, 21
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %9
  store i32 -1, i32* %10, align 4
  br label %130

28:                                               ; preds = %24
  %29 = call i32 (...) @lzx_init_static()
  %30 = call i8* @malloc(i32 112)
  %31 = bitcast i8* %30 to %struct.lzx_data*
  store %struct.lzx_data* %31, %struct.lzx_data** %21, align 8
  %32 = load %struct.lzx_data**, %struct.lzx_data*** %11, align 8
  store %struct.lzx_data* %31, %struct.lzx_data** %32, align 8
  %33 = load %struct.lzx_data*, %struct.lzx_data** %21, align 8
  %34 = icmp eq %struct.lzx_data* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 -2, i32* %10, align 4
  br label %130

36:                                               ; preds = %28
  %37 = load i8*, i8** %14, align 8
  %38 = load %struct.lzx_data*, %struct.lzx_data** %21, align 8
  %39 = getelementptr inbounds %struct.lzx_data, %struct.lzx_data* %38, i32 0, i32 16
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %17, align 8
  %41 = load %struct.lzx_data*, %struct.lzx_data** %21, align 8
  %42 = getelementptr inbounds %struct.lzx_data, %struct.lzx_data* %41, i32 0, i32 15
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %19, align 8
  %44 = load %struct.lzx_data*, %struct.lzx_data** %21, align 8
  %45 = getelementptr inbounds %struct.lzx_data, %struct.lzx_data* %44, i32 0, i32 14
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.lzx_data*, %struct.lzx_data** %21, align 8
  %48 = getelementptr inbounds %struct.lzx_data, %struct.lzx_data* %47, i32 0, i32 13
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %16, align 4
  %50 = load %struct.lzx_data*, %struct.lzx_data** %21, align 8
  %51 = getelementptr inbounds %struct.lzx_data, %struct.lzx_data* %50, i32 0, i32 12
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %15, align 4
  %53 = load %struct.lzx_data*, %struct.lzx_data** %21, align 8
  %54 = getelementptr inbounds %struct.lzx_data, %struct.lzx_data* %53, i32 0, i32 11
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load %struct.lzx_data*, %struct.lzx_data** %21, align 8
  %57 = getelementptr inbounds %struct.lzx_data, %struct.lzx_data* %56, i32 0, i32 10
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %12, align 4
  %59 = shl i32 1, %58
  store i32 %59, i32* %20, align 4
  %60 = load %struct.lzx_data*, %struct.lzx_data** %21, align 8
  %61 = getelementptr inbounds %struct.lzx_data, %struct.lzx_data* %60, i32 0, i32 9
  store i64 0, i64* %61, align 8
  %62 = load %struct.lzx_data*, %struct.lzx_data** %21, align 8
  %63 = getelementptr inbounds %struct.lzx_data, %struct.lzx_data* %62, i32 0, i32 8
  store i32* null, i32** %63, align 8
  %64 = load i32*, i32** @num_position_slots, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sub nsw i32 %65, 15
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.lzx_data*, %struct.lzx_data** %21, align 8
  %71 = getelementptr inbounds %struct.lzx_data, %struct.lzx_data* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @NUM_CHARS, align 4
  %73 = load %struct.lzx_data*, %struct.lzx_data** %21, align 8
  %74 = getelementptr inbounds %struct.lzx_data, %struct.lzx_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 8, %75
  %77 = add nsw i32 %72, %76
  %78 = load %struct.lzx_data*, %struct.lzx_data** %21, align 8
  %79 = getelementptr inbounds %struct.lzx_data, %struct.lzx_data* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.lzx_data*, %struct.lzx_data** %21, align 8
  %81 = getelementptr inbounds %struct.lzx_data, %struct.lzx_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 4, %83
  %85 = trunc i64 %84 to i32
  %86 = call i8* @malloc(i32 %85)
  %87 = load %struct.lzx_data*, %struct.lzx_data** %21, align 8
  %88 = getelementptr inbounds %struct.lzx_data, %struct.lzx_data* %87, i32 0, i32 7
  store i8* %86, i8** %88, align 8
  %89 = load %struct.lzx_data*, %struct.lzx_data** %21, align 8
  %90 = getelementptr inbounds %struct.lzx_data, %struct.lzx_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 4, %92
  %94 = trunc i64 %93 to i32
  %95 = call i8* @malloc(i32 %94)
  %96 = load %struct.lzx_data*, %struct.lzx_data** %21, align 8
  %97 = getelementptr inbounds %struct.lzx_data, %struct.lzx_data* %96, i32 0, i32 6
  store i8* %95, i8** %97, align 8
  %98 = load %struct.lzx_data*, %struct.lzx_data** %21, align 8
  %99 = getelementptr inbounds %struct.lzx_data, %struct.lzx_data* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = mul i64 4, %101
  %103 = trunc i64 %102 to i32
  %104 = call i8* @malloc(i32 %103)
  %105 = load %struct.lzx_data*, %struct.lzx_data** %21, align 8
  %106 = getelementptr inbounds %struct.lzx_data, %struct.lzx_data* %105, i32 0, i32 5
  store i8* %104, i8** %106, align 8
  %107 = call i8* @malloc(i32 1)
  %108 = load %struct.lzx_data*, %struct.lzx_data** %21, align 8
  %109 = getelementptr inbounds %struct.lzx_data, %struct.lzx_data* %108, i32 0, i32 4
  store i8* %107, i8** %109, align 8
  %110 = load %struct.lzx_data*, %struct.lzx_data** %21, align 8
  %111 = getelementptr inbounds %struct.lzx_data, %struct.lzx_data* %110, i32 0, i32 4
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* %20, align 4
  %114 = load i32, i32* %20, align 4
  %115 = sub nsw i32 %114, 3
  %116 = load i32, i32* @MAX_MATCH, align 4
  %117 = load i32, i32* @MIN_MATCH, align 4
  %118 = load i32, i32* @LZX_FRAME_SIZE, align 4
  %119 = load i32, i32* @lzx_get_chars, align 4
  %120 = load i32, i32* @lzx_output_match, align 4
  %121 = load i32, i32* @lzx_output_literal, align 4
  %122 = load %struct.lzx_data*, %struct.lzx_data** %21, align 8
  %123 = call i32 @lz_init(i8* %112, i32 %113, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121, %struct.lzx_data* %122)
  %124 = load %struct.lzx_data*, %struct.lzx_data** %21, align 8
  %125 = getelementptr inbounds %struct.lzx_data, %struct.lzx_data* %124, i32 0, i32 3
  store i64 0, i64* %125, align 8
  %126 = load %struct.lzx_data*, %struct.lzx_data** %21, align 8
  %127 = getelementptr inbounds %struct.lzx_data, %struct.lzx_data* %126, i32 0, i32 2
  store i64 0, i64* %127, align 8
  %128 = load %struct.lzx_data*, %struct.lzx_data** %21, align 8
  %129 = call i32 @lzx_reset(%struct.lzx_data* %128)
  store i32 0, i32* %10, align 4
  br label %130

130:                                              ; preds = %36, %35, %27
  %131 = load i32, i32* %10, align 4
  ret i32 %131
}

declare dso_local i32 @lzx_init_static(...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @lz_init(i8*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lzx_data*) #1

declare dso_local i32 @lzx_reset(%struct.lzx_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
