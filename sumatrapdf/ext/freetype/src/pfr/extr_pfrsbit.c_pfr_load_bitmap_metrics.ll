; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/pfr/extr_pfrsbit.c_pfr_load_bitmap_metrics.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/pfr/extr_pfrsbit.c_pfr_load_bitmap_metrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FT_Err_Ok = common dso_local global i32 0, align 4
@Invalid_Table = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"pfr_load_bitmap_metrics: invalid glyph data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*)* @pfr_load_bitmap_metrics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfr_load_bitmap_metrics(i32** %0, i32* %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32** %0, i32*** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %28 = load i32, i32* @FT_Err_Ok, align 4
  store i32 %28, i32* %19, align 4
  %29 = load i32**, i32*** %10, align 8
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %22, align 8
  %31 = call i32 @PFR_CHECK(i32 1)
  %32 = load i32*, i32** %22, align 8
  %33 = call i8* @PFR_NEXT_BYTE(i32* %32)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %20, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %25, align 4
  %35 = load i32, i32* %20, align 4
  %36 = and i32 %35, 3
  switch i32 %36, label %65 [
    i32 0, label %37
    i32 1, label %47
    i32 2, label %53
    i32 3, label %59
  ]

37:                                               ; preds = %9
  %38 = call i32 @PFR_CHECK(i32 1)
  %39 = load i32*, i32** %22, align 8
  %40 = call i8* @PFR_NEXT_BYTE(i32* %39)
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* %21, align 4
  %42 = load i32, i32* %21, align 4
  %43 = ashr i32 %42, 4
  store i32 %43, i32* %23, align 4
  %44 = load i32, i32* %21, align 4
  %45 = shl i32 %44, 4
  %46 = ashr i32 %45, 4
  store i32 %46, i32* %24, align 4
  br label %66

47:                                               ; preds = %9
  %48 = call i32 @PFR_CHECK(i32 2)
  %49 = load i32*, i32** %22, align 8
  %50 = call i32 @PFR_NEXT_INT8(i32* %49)
  store i32 %50, i32* %23, align 4
  %51 = load i32*, i32** %22, align 8
  %52 = call i32 @PFR_NEXT_INT8(i32* %51)
  store i32 %52, i32* %24, align 4
  br label %66

53:                                               ; preds = %9
  %54 = call i32 @PFR_CHECK(i32 4)
  %55 = load i32*, i32** %22, align 8
  %56 = call i32 @PFR_NEXT_SHORT(i32* %55)
  store i32 %56, i32* %23, align 4
  %57 = load i32*, i32** %22, align 8
  %58 = call i32 @PFR_NEXT_SHORT(i32* %57)
  store i32 %58, i32* %24, align 4
  br label %66

59:                                               ; preds = %9
  %60 = call i32 @PFR_CHECK(i32 6)
  %61 = load i32*, i32** %22, align 8
  %62 = call i32 @PFR_NEXT_LONG(i32* %61)
  store i32 %62, i32* %23, align 4
  %63 = load i32*, i32** %22, align 8
  %64 = call i32 @PFR_NEXT_LONG(i32* %63)
  store i32 %64, i32* %24, align 4
  br label %66

65:                                               ; preds = %9
  br label %66

66:                                               ; preds = %65, %59, %53, %47, %37
  %67 = load i32, i32* %20, align 4
  %68 = ashr i32 %67, 2
  store i32 %68, i32* %20, align 4
  %69 = load i32, i32* %20, align 4
  %70 = and i32 %69, 3
  switch i32 %70, label %96 [
    i32 0, label %71
    i32 1, label %72
    i32 2, label %82
    i32 3, label %90
  ]

71:                                               ; preds = %66
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  br label %97

72:                                               ; preds = %66
  %73 = call i32 @PFR_CHECK(i32 1)
  %74 = load i32*, i32** %22, align 8
  %75 = call i8* @PFR_NEXT_BYTE(i32* %74)
  %76 = ptrtoint i8* %75 to i32
  store i32 %76, i32* %21, align 4
  %77 = load i32, i32* %21, align 4
  %78 = ashr i32 %77, 4
  %79 = and i32 %78, 15
  store i32 %79, i32* %26, align 4
  %80 = load i32, i32* %21, align 4
  %81 = and i32 %80, 15
  store i32 %81, i32* %27, align 4
  br label %97

82:                                               ; preds = %66
  %83 = call i32 @PFR_CHECK(i32 2)
  %84 = load i32*, i32** %22, align 8
  %85 = call i8* @PFR_NEXT_BYTE(i32* %84)
  %86 = ptrtoint i8* %85 to i32
  store i32 %86, i32* %26, align 4
  %87 = load i32*, i32** %22, align 8
  %88 = call i8* @PFR_NEXT_BYTE(i32* %87)
  %89 = ptrtoint i8* %88 to i32
  store i32 %89, i32* %27, align 4
  br label %97

90:                                               ; preds = %66
  %91 = call i32 @PFR_CHECK(i32 4)
  %92 = load i32*, i32** %22, align 8
  %93 = call i32 @PFR_NEXT_USHORT(i32* %92)
  store i32 %93, i32* %26, align 4
  %94 = load i32*, i32** %22, align 8
  %95 = call i32 @PFR_NEXT_USHORT(i32* %94)
  store i32 %95, i32* %27, align 4
  br label %97

96:                                               ; preds = %66
  br label %97

97:                                               ; preds = %96, %90, %82, %72, %71
  %98 = load i32, i32* %20, align 4
  %99 = ashr i32 %98, 2
  store i32 %99, i32* %20, align 4
  %100 = load i32, i32* %20, align 4
  %101 = and i32 %100, 3
  switch i32 %101, label %117 [
    i32 0, label %102
    i32 1, label %104
    i32 2, label %109
    i32 3, label %113
  ]

102:                                              ; preds = %97
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %25, align 4
  br label %118

104:                                              ; preds = %97
  %105 = call i32 @PFR_CHECK(i32 1)
  %106 = load i32*, i32** %22, align 8
  %107 = call i32 @PFR_NEXT_INT8(i32* %106)
  %108 = mul nsw i32 %107, 256
  store i32 %108, i32* %25, align 4
  br label %118

109:                                              ; preds = %97
  %110 = call i32 @PFR_CHECK(i32 2)
  %111 = load i32*, i32** %22, align 8
  %112 = call i32 @PFR_NEXT_SHORT(i32* %111)
  store i32 %112, i32* %25, align 4
  br label %118

113:                                              ; preds = %97
  %114 = call i32 @PFR_CHECK(i32 3)
  %115 = load i32*, i32** %22, align 8
  %116 = call i32 @PFR_NEXT_LONG(i32* %115)
  store i32 %116, i32* %25, align 4
  br label %118

117:                                              ; preds = %97
  br label %118

118:                                              ; preds = %117, %113, %109, %104, %102
  %119 = load i32, i32* %23, align 4
  %120 = load i32*, i32** %13, align 8
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* %24, align 4
  %122 = load i32*, i32** %14, align 8
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* %26, align 4
  %124 = load i32*, i32** %15, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* %27, align 4
  %126 = load i32*, i32** %16, align 8
  store i32 %125, i32* %126, align 4
  %127 = load i32, i32* %25, align 4
  %128 = load i32*, i32** %17, align 8
  store i32 %127, i32* %128, align 4
  %129 = load i32, i32* %20, align 4
  %130 = ashr i32 %129, 2
  %131 = load i32*, i32** %18, align 8
  store i32 %130, i32* %131, align 4
  %132 = load i32*, i32** %22, align 8
  %133 = load i32**, i32*** %10, align 8
  store i32* %132, i32** %133, align 8
  br label %134

134:                                              ; preds = %136, %118
  %135 = load i32, i32* %19, align 4
  ret i32 %135

136:                                              ; No predecessors!
  %137 = load i32, i32* @Invalid_Table, align 4
  %138 = call i32 @FT_THROW(i32 %137)
  store i32 %138, i32* %19, align 4
  %139 = call i32 @FT_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %134
}

declare dso_local i32 @PFR_CHECK(i32) #1

declare dso_local i8* @PFR_NEXT_BYTE(i32*) #1

declare dso_local i32 @PFR_NEXT_INT8(i32*) #1

declare dso_local i32 @PFR_NEXT_SHORT(i32*) #1

declare dso_local i32 @PFR_NEXT_LONG(i32*) #1

declare dso_local i32 @PFR_NEXT_USHORT(i32*) #1

declare dso_local i32 @FT_THROW(i32) #1

declare dso_local i32 @FT_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
