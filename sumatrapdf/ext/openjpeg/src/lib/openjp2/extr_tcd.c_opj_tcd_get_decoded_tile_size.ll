; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tcd.c_opj_tcd_get_decoded_tile_size.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tcd.c_opj_tcd_get_decoded_tile_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@UINT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @opj_tcd_get_decoded_tile_size(%struct.TYPE_13__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %7, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %10, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %9, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %8, align 8
  store i64 0, i64* %6, align 8
  br label %28

28:                                               ; preds = %147, %2
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %29, %34
  br i1 %35, label %36, label %150

36:                                               ; preds = %28
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 3
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %11, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 7
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load i64, i64* %11, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %11, align 8
  br label %52

52:                                               ; preds = %49, %36
  %53 = load i64, i64* %11, align 8
  %54 = icmp eq i64 %53, 3
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i64 4, i64* %11, align 8
  br label %56

56:                                               ; preds = %55, %52
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i64 -1
  store %struct.TYPE_14__* %65, %struct.TYPE_14__** %10, align 8
  %66 = load i64, i64* %5, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %56
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %88, label %73

73:                                               ; preds = %68
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %76, %79
  store i64 %80, i64* %14, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %83, %86
  store i64 %87, i64* %15, align 8
  br label %103

88:                                               ; preds = %68, %56
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 7
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %91, %94
  store i64 %95, i64* %14, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %98, %101
  store i64 %102, i64* %15, align 8
  br label %103

103:                                              ; preds = %88, %73
  %104 = load i64, i64* %15, align 8
  %105 = icmp sgt i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = load i64, i64* @UINT_MAX, align 8
  %108 = load i64, i64* %14, align 8
  %109 = sdiv i64 %107, %108
  %110 = load i64, i64* %15, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i64, i64* @UINT_MAX, align 8
  store i64 %113, i64* %3, align 8
  br label %152

114:                                              ; preds = %106, %103
  %115 = load i64, i64* %14, align 8
  %116 = load i64, i64* %15, align 8
  %117 = mul nsw i64 %115, %116
  store i64 %117, i64* %13, align 8
  %118 = load i64, i64* %11, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %114
  %121 = load i64, i64* @UINT_MAX, align 8
  %122 = load i64, i64* %11, align 8
  %123 = sdiv i64 %121, %122
  %124 = load i64, i64* %13, align 8
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i64, i64* @UINT_MAX, align 8
  store i64 %127, i64* %3, align 8
  br label %152

128:                                              ; preds = %120, %114
  %129 = load i64, i64* %11, align 8
  %130 = load i64, i64* %13, align 8
  %131 = mul nsw i64 %130, %129
  store i64 %131, i64* %13, align 8
  %132 = load i64, i64* %13, align 8
  %133 = load i64, i64* @UINT_MAX, align 8
  %134 = load i64, i64* %7, align 8
  %135 = sub nsw i64 %133, %134
  %136 = icmp sgt i64 %132, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %128
  %138 = load i64, i64* @UINT_MAX, align 8
  store i64 %138, i64* %3, align 8
  br label %152

139:                                              ; preds = %128
  %140 = load i64, i64* %13, align 8
  %141 = load i64, i64* %7, align 8
  %142 = add nsw i64 %141, %140
  store i64 %142, i64* %7, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 1
  store %struct.TYPE_15__* %144, %struct.TYPE_15__** %8, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 1
  store %struct.TYPE_12__* %146, %struct.TYPE_12__** %9, align 8
  br label %147

147:                                              ; preds = %139
  %148 = load i64, i64* %6, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* %6, align 8
  br label %28

150:                                              ; preds = %28
  %151 = load i64, i64* %7, align 8
  store i64 %151, i64* %3, align 8
  br label %152

152:                                              ; preds = %150, %137, %126, %112
  %153 = load i64, i64* %3, align 8
  ret i64 %153
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
