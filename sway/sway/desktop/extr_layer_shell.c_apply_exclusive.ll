; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_layer_shell.c_apply_exclusive.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_layer_shell.c_apply_exclusive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlr_box = type { i32, i32, i32, i32 }
%struct.anon = type { i32, i32*, i32*, i32 }

@ZWLR_LAYER_SURFACE_V1_ANCHOR_LEFT = common dso_local global i32 0, align 4
@ZWLR_LAYER_SURFACE_V1_ANCHOR_RIGHT = common dso_local global i32 0, align 4
@ZWLR_LAYER_SURFACE_V1_ANCHOR_TOP = common dso_local global i32 0, align 4
@ZWLR_LAYER_SURFACE_V1_ANCHOR_BOTTOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wlr_box*, i32, i64, i64, i64, i64, i64)* @apply_exclusive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_exclusive(%struct.wlr_box* %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.wlr_box*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca [4 x %struct.anon], align 16
  %16 = alloca i64, align 8
  store %struct.wlr_box* %0, %struct.wlr_box** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %17 = load i64, i64* %10, align 8
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  br label %154

20:                                               ; preds = %7
  %21 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %15, i64 0, i64 0
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 0
  %23 = load i32, i32* @ZWLR_LAYER_SURFACE_V1_ANCHOR_LEFT, align 4
  %24 = load i32, i32* @ZWLR_LAYER_SURFACE_V1_ANCHOR_RIGHT, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @ZWLR_LAYER_SURFACE_V1_ANCHOR_TOP, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %22, align 16
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 1
  %29 = load %struct.wlr_box*, %struct.wlr_box** %8, align 8
  %30 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %29, i32 0, i32 0
  store i32* %30, i32** %28, align 8
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 2
  %32 = load %struct.wlr_box*, %struct.wlr_box** %8, align 8
  %33 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %32, i32 0, i32 1
  store i32* %33, i32** %31, align 16
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 3
  %35 = load i64, i64* %11, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %34, align 8
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %21, i64 1
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %37, i32 0, i32 0
  %39 = load i32, i32* @ZWLR_LAYER_SURFACE_V1_ANCHOR_LEFT, align 4
  %40 = load i32, i32* @ZWLR_LAYER_SURFACE_V1_ANCHOR_RIGHT, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @ZWLR_LAYER_SURFACE_V1_ANCHOR_BOTTOM, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %38, align 16
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %37, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %37, i32 0, i32 2
  %46 = load %struct.wlr_box*, %struct.wlr_box** %8, align 8
  %47 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %46, i32 0, i32 1
  store i32* %47, i32** %45, align 16
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %37, i32 0, i32 3
  %49 = load i64, i64* %13, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %48, align 8
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %37, i64 1
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 0
  %53 = load i32, i32* @ZWLR_LAYER_SURFACE_V1_ANCHOR_LEFT, align 4
  %54 = load i32, i32* @ZWLR_LAYER_SURFACE_V1_ANCHOR_TOP, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @ZWLR_LAYER_SURFACE_V1_ANCHOR_BOTTOM, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %52, align 16
  %58 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 1
  %59 = load %struct.wlr_box*, %struct.wlr_box** %8, align 8
  %60 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %59, i32 0, i32 2
  store i32* %60, i32** %58, align 8
  %61 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 2
  %62 = load %struct.wlr_box*, %struct.wlr_box** %8, align 8
  %63 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %62, i32 0, i32 3
  store i32* %63, i32** %61, align 16
  %64 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 3
  %65 = load i64, i64* %14, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %64, align 8
  %67 = getelementptr inbounds %struct.anon, %struct.anon* %51, i64 1
  %68 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 0
  %69 = load i32, i32* @ZWLR_LAYER_SURFACE_V1_ANCHOR_RIGHT, align 4
  %70 = load i32, i32* @ZWLR_LAYER_SURFACE_V1_ANCHOR_TOP, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @ZWLR_LAYER_SURFACE_V1_ANCHOR_BOTTOM, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %68, align 16
  %74 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 1
  store i32* null, i32** %74, align 8
  %75 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 2
  %76 = load %struct.wlr_box*, %struct.wlr_box** %8, align 8
  %77 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %76, i32 0, i32 3
  store i32* %77, i32** %75, align 16
  %78 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 3
  %79 = load i64, i64* %12, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %78, align 8
  store i64 0, i64* %16, align 8
  br label %81

81:                                               ; preds = %151, %20
  %82 = load i64, i64* %16, align 8
  %83 = icmp ult i64 %82, 4
  br i1 %83, label %84, label %154

84:                                               ; preds = %81
  %85 = load i32, i32* %9, align 4
  %86 = load i64, i64* %16, align 8
  %87 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %15, i64 0, i64 %86
  %88 = getelementptr inbounds %struct.anon, %struct.anon* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 16
  %90 = and i32 %85, %89
  %91 = load i64, i64* %16, align 8
  %92 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %15, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.anon, %struct.anon* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 16
  %95 = icmp eq i32 %90, %94
  br i1 %95, label %96, label %150

96:                                               ; preds = %84
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* %16, align 8
  %99 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %15, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.anon, %struct.anon* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %97, %102
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %150

105:                                              ; preds = %96
  %106 = load i64, i64* %16, align 8
  %107 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %15, i64 0, i64 %106
  %108 = getelementptr inbounds %struct.anon, %struct.anon* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %127

111:                                              ; preds = %105
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* %16, align 8
  %114 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %15, i64 0, i64 %113
  %115 = getelementptr inbounds %struct.anon, %struct.anon* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %112, %117
  %119 = load i64, i64* %16, align 8
  %120 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %15, i64 0, i64 %119
  %121 = getelementptr inbounds %struct.anon, %struct.anon* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %118
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %122, align 4
  br label %127

127:                                              ; preds = %111, %105
  %128 = load i64, i64* %16, align 8
  %129 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %15, i64 0, i64 %128
  %130 = getelementptr inbounds %struct.anon, %struct.anon* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 16
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %149

133:                                              ; preds = %127
  %134 = load i64, i64* %10, align 8
  %135 = load i64, i64* %16, align 8
  %136 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %15, i64 0, i64 %135
  %137 = getelementptr inbounds %struct.anon, %struct.anon* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %134, %139
  %141 = load i64, i64* %16, align 8
  %142 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %15, i64 0, i64 %141
  %143 = getelementptr inbounds %struct.anon, %struct.anon* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 16
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = sub nsw i64 %146, %140
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %144, align 4
  br label %149

149:                                              ; preds = %133, %127
  br label %150

150:                                              ; preds = %149, %96, %84
  br label %151

151:                                              ; preds = %150
  %152 = load i64, i64* %16, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %16, align 8
  br label %81

154:                                              ; preds = %19, %81
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
