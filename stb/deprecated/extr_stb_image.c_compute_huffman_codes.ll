; ModuleID = '/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_compute_huffman_codes.c'
source_filename = "/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_compute_huffman_codes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@compute_huffman_codes.length_dezigzag = internal global [19 x i32] [i32 16, i32 17, i32 18, i32 0, i32 8, i32 7, i32 9, i32 6, i32 10, i32 5, i32 11, i32 4, i32 12, i32 3, i32 13, i32 2, i32 14, i32 1, i32 15], align 16
@.str = private unnamed_addr constant [16 x i8] c"bad codelengths\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Corrupt PNG\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @compute_huffman_codes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_huffman_codes(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [455 x i32], align 16
  %6 = alloca [19 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = call i32 @zreceive(%struct.TYPE_5__* %14, i32 5)
  %16 = add nsw i32 %15, 257
  store i32 %16, i32* %9, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = call i32 @zreceive(%struct.TYPE_5__* %17, i32 5)
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %10, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = call i32 @zreceive(%struct.TYPE_5__* %20, i32 4)
  %22 = add nsw i32 %21, 4
  store i32 %22, i32* %11, align 4
  %23 = getelementptr inbounds [19 x i32], [19 x i32]* %6, i64 0, i64 0
  %24 = call i32 @memset(i32* %23, i32 0, i32 76)
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %39, %1
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = call i32 @zreceive(%struct.TYPE_5__* %30, i32 3)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [19 x i32], [19 x i32]* @compute_huffman_codes.length_dezigzag, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [19 x i32], [19 x i32]* %6, i64 0, i64 %37
  store i32 %32, i32* %38, align 4
  br label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %25

42:                                               ; preds = %25
  %43 = getelementptr inbounds [19 x i32], [19 x i32]* %6, i64 0, i64 0
  %44 = call i32 @zbuild_huffman(i32* %4, i32* %43, i32 19)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %159

47:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %130, %47
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %50, %51
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %131

54:                                               ; preds = %48
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = call i32 @zhuffman_decode(%struct.TYPE_5__* %55, i32* %4)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* %13, align 4
  %61 = icmp slt i32 %60, 19
  br label %62

62:                                               ; preds = %59, %54
  %63 = phi i1 [ false, %54 ], [ %61, %59 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %66, 16
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds [455 x i32], [455 x i32]* %5, i64 0, i64 %72
  store i32 %69, i32* %73, align 4
  br label %130

74:                                               ; preds = %62
  %75 = load i32, i32* %13, align 4
  %76 = icmp eq i32 %75, 16
  br i1 %76, label %77, label %95

77:                                               ; preds = %74
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = call i32 @zreceive(%struct.TYPE_5__* %78, i32 2)
  %80 = add nsw i32 %79, 3
  store i32 %80, i32* %13, align 4
  %81 = getelementptr inbounds [455 x i32], [455 x i32]* %5, i64 0, i64 0
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %8, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [455 x i32], [455 x i32]* %5, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @memset(i32* %84, i32 %89, i32 %90)
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %8, align 4
  br label %129

95:                                               ; preds = %74
  %96 = load i32, i32* %13, align 4
  %97 = icmp eq i32 %96, 17
  br i1 %97, label %98, label %111

98:                                               ; preds = %95
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %100 = call i32 @zreceive(%struct.TYPE_5__* %99, i32 3)
  %101 = add nsw i32 %100, 3
  store i32 %101, i32* %13, align 4
  %102 = getelementptr inbounds [455 x i32], [455 x i32]* %5, i64 0, i64 0
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @memset(i32* %105, i32 0, i32 %106)
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %8, align 4
  br label %128

111:                                              ; preds = %95
  %112 = load i32, i32* %13, align 4
  %113 = icmp eq i32 %112, 18
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %117 = call i32 @zreceive(%struct.TYPE_5__* %116, i32 7)
  %118 = add nsw i32 %117, 11
  store i32 %118, i32* %13, align 4
  %119 = getelementptr inbounds [455 x i32], [455 x i32]* %5, i64 0, i64 0
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @memset(i32* %122, i32 0, i32 %123)
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %111, %98
  br label %129

129:                                              ; preds = %128, %77
  br label %130

130:                                              ; preds = %129, %68
  br label %48

131:                                              ; preds = %48
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %133, %134
  %136 = icmp ne i32 %132, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = call i32 @e(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %138, i32* %2, align 4
  br label %159

139:                                              ; preds = %131
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = getelementptr inbounds [455 x i32], [455 x i32]* %5, i64 0, i64 0
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @zbuild_huffman(i32* %141, i32* %142, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %139
  store i32 0, i32* %2, align 4
  br label %159

147:                                              ; preds = %139
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = getelementptr inbounds [455 x i32], [455 x i32]* %5, i64 0, i64 0
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @zbuild_huffman(i32* %149, i32* %153, i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %147
  store i32 0, i32* %2, align 4
  br label %159

158:                                              ; preds = %147
  store i32 1, i32* %2, align 4
  br label %159

159:                                              ; preds = %158, %157, %146, %137, %46
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @zreceive(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @zbuild_huffman(i32*, i32*, i32) #1

declare dso_local i32 @zhuffman_decode(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @e(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
