; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_uncompress-rar.c_rar_read_next_symbol.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_uncompress-rar.c_rar_read_next_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.huffman_code = type { i64, %struct.TYPE_12__*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Invalid data in bitstream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.huffman_code*)* @rar_read_next_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rar_read_next_symbol(%struct.TYPE_13__* %0, %struct.huffman_code* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.huffman_code*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.huffman_code* %1, %struct.huffman_code** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.huffman_code*, %struct.huffman_code** %5, align 8
  %12 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %11, i32 0, i32 2
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.huffman_code*, %struct.huffman_code** %5, align 8
  %17 = call i32 @rar_make_table(%struct.huffman_code* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %130

20:                                               ; preds = %15, %2
  %21 = load %struct.huffman_code*, %struct.huffman_code** %5, align 8
  %22 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sle i64 %23, %28
  br i1 %29, label %30, label %78

30:                                               ; preds = %20
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = load %struct.huffman_code*, %struct.huffman_code** %5, align 8
  %33 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i64 @br_bits(%struct.TYPE_13__* %31, i32 %35)
  store i64 %36, i64* %7, align 8
  %37 = load %struct.huffman_code*, %struct.huffman_code** %5, align 8
  %38 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %37, i32 0, i32 2
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  %44 = load %struct.huffman_code*, %struct.huffman_code** %5, align 8
  %45 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %44, i32 0, i32 2
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %30
  %54 = call i32 @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %130

55:                                               ; preds = %30
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.huffman_code*, %struct.huffman_code** %5, align 8
  %59 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sle i64 %57, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %55
  %63 = load %struct.huffman_code*, %struct.huffman_code** %5, align 8
  %64 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = sub nsw i64 %65, %67
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, %68
  store i64 %74, i64* %72, align 8
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %3, align 4
  br label %130

76:                                               ; preds = %55
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %76, %20
  br label %79

79:                                               ; preds = %107, %78
  %80 = load %struct.huffman_code*, %struct.huffman_code** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @rar_is_leaf_node(%struct.huffman_code* %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  br i1 %84, label %85, label %119

85:                                               ; preds = %79
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %87 = call i32 @br_check(%struct.TYPE_13__* %86, i32 1)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  store i32 -1, i32* %3, align 4
  br label %130

90:                                               ; preds = %85
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %92 = call i64 @br_bits(%struct.TYPE_13__* %91, i32 1)
  store i64 %92, i64* %10, align 8
  %93 = load %struct.huffman_code*, %struct.huffman_code** %5, align 8
  %94 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %93, i32 0, i32 1
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %10, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %90
  %106 = call i32 @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %130

107:                                              ; preds = %90
  %108 = load %struct.huffman_code*, %struct.huffman_code** %5, align 8
  %109 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %108, i32 0, i32 1
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* %10, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %6, align 4
  br label %79

119:                                              ; preds = %79
  %120 = load %struct.huffman_code*, %struct.huffman_code** %5, align 8
  %121 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %120, i32 0, i32 1
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %119, %105, %89, %62, %53, %19
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @rar_make_table(%struct.huffman_code*) #1

declare dso_local i64 @br_bits(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @rar_is_leaf_node(%struct.huffman_code*, i32) #1

declare dso_local i32 @br_check(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
