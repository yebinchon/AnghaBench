; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_huffman-rar.c_rar_make_table_rec.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_huffman-rar.c_rar_make_table_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.huffman_code = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Invalid data in bitstream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.huffman_code*, i32, i32, i32, i32)* @rar_make_table_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rar_make_table_rec(%struct.huffman_code* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.huffman_code*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.huffman_code* %0, %struct.huffman_code** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* %10, align 4
  %16 = sub nsw i32 %14, %15
  %17 = shl i32 1, %16
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %5
  %21 = load %struct.huffman_code*, %struct.huffman_code** %7, align 8
  %22 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %5
  %27 = call i32 @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %138

28:                                               ; preds = %20
  %29 = load %struct.huffman_code*, %struct.huffman_code** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @rar_is_leaf_node(%struct.huffman_code* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %72

33:                                               ; preds = %28
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %68, %33
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %71

38:                                               ; preds = %34
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.huffman_code*, %struct.huffman_code** %7, align 8
  %41 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %39, i32* %48, align 4
  %49 = load %struct.huffman_code*, %struct.huffman_code** %7, align 8
  %50 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.huffman_code*, %struct.huffman_code** %7, align 8
  %60 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %59, i32 0, i32 2
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i32 %58, i32* %67, align 4
  br label %68

68:                                               ; preds = %38
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  br label %34

71:                                               ; preds = %34
  br label %137

72:                                               ; preds = %28
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %72
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  %79 = load %struct.huffman_code*, %struct.huffman_code** %7, align 8
  %80 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %79, i32 0, i32 2
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i32 %78, i32* %85, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.huffman_code*, %struct.huffman_code** %7, align 8
  %88 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %87, i32 0, i32 2
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  store i32 %86, i32* %93, align 4
  br label %136

94:                                               ; preds = %72
  %95 = load %struct.huffman_code*, %struct.huffman_code** %7, align 8
  %96 = load %struct.huffman_code*, %struct.huffman_code** %7, align 8
  %97 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 1
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @rar_make_table_rec(%struct.huffman_code* %95, i32 %105, i32 %106, i32 %108, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %94
  store i32 0, i32* %6, align 4
  br label %138

113:                                              ; preds = %94
  %114 = load %struct.huffman_code*, %struct.huffman_code** %7, align 8
  %115 = load %struct.huffman_code*, %struct.huffman_code** %7, align 8
  %116 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %115, i32 0, i32 1
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %12, align 4
  %127 = sdiv i32 %126, 2
  %128 = add nsw i32 %125, %127
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @rar_make_table_rec(%struct.huffman_code* %114, i32 %124, i32 %128, i32 %130, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %113
  store i32 0, i32* %6, align 4
  br label %138

135:                                              ; preds = %113
  br label %136

136:                                              ; preds = %135, %76
  br label %137

137:                                              ; preds = %136, %71
  store i32 1, i32* %6, align 4
  br label %138

138:                                              ; preds = %137, %134, %112, %26
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @rar_is_leaf_node(%struct.huffman_code*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
