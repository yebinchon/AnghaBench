; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_compress.c_lznt1_decompress_chunk.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_compress.c_lznt1_decompress_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32*, i32)* @lznt1_decompress_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @lznt1_decompress_chunk(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load i32*, i32** %8, align 8
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32* %24, i32** %11, align 8
  %25 = load i32*, i32** %6, align 8
  store i32* %25, i32** %12, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32* %29, i32** %13, align 8
  br label %30

30:                                               ; preds = %147, %4
  %31 = load i32*, i32** %10, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = icmp ult i32* %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32*, i32** %12, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = icmp ult i32* %35, %36
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i1 [ false, %30 ], [ %37, %34 ]
  br i1 %39, label %40, label %148

40:                                               ; preds = %38
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %10, align 8
  %43 = load i32, i32* %41, align 4
  %44 = or i32 32768, %43
  store i32 %44, i32* %18, align 4
  br label %45

45:                                               ; preds = %144, %40
  %46 = load i32, i32* %18, align 4
  %47 = and i32 %46, 65280
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32*, i32** %10, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = icmp ult i32* %50, %51
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i1 [ false, %45 ], [ %52, %49 ]
  br i1 %54, label %55, label %147

55:                                               ; preds = %53
  %56 = load i32, i32* %18, align 4
  %57 = and i32 %56, 1
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %132

59:                                               ; preds = %55
  %60 = load i32*, i32** %10, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  %62 = load i32*, i32** %11, align 8
  %63 = icmp ugt i32* %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32* null, i32** %5, align 8
  br label %150

65:                                               ; preds = %59
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %19, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 4
  store i32* %69, i32** %10, align 8
  store i32 12, i32* %14, align 4
  br label %70

70:                                               ; preds = %87, %65
  %71 = load i32, i32* %14, align 4
  %72 = icmp sgt i32 %71, 4
  br i1 %72, label %73, label %90

73:                                               ; preds = %70
  %74 = load i32, i32* %14, align 4
  %75 = sub nsw i32 %74, 1
  %76 = shl i32 1, %75
  %77 = sext i32 %76 to i64
  %78 = load i32*, i32** %12, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = ptrtoint i32* %78 to i64
  %81 = ptrtoint i32* %79 to i64
  %82 = sub i64 %80, %81
  %83 = sdiv exact i64 %82, 4
  %84 = icmp slt i64 %77, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %73
  br label %90

86:                                               ; preds = %73
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %14, align 4
  br label %70

90:                                               ; preds = %85, %70
  %91 = load i32, i32* %14, align 4
  %92 = sub nsw i32 16, %91
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* %15, align 4
  %95 = shl i32 1, %94
  %96 = sub nsw i32 %95, 1
  %97 = and i32 %93, %96
  %98 = add nsw i32 %97, 3
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %15, align 4
  %101 = ashr i32 %99, %100
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %16, align 4
  %103 = load i32*, i32** %12, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* %16, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = icmp ult i32* %103, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %90
  store i32* null, i32** %5, align 8
  br label %150

110:                                              ; preds = %90
  br label %111

111:                                              ; preds = %121, %110
  %112 = load i32, i32* %17, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %17, align 4
  %114 = icmp ne i32 %112, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %111
  %116 = load i32*, i32** %12, align 8
  %117 = load i32*, i32** %13, align 8
  %118 = icmp uge i32* %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i32*, i32** %12, align 8
  store i32* %120, i32** %5, align 8
  br label %150

121:                                              ; preds = %115
  %122 = load i32*, i32** %12, align 8
  %123 = load i32, i32* %16, align 4
  %124 = sext i32 %123 to i64
  %125 = sub i64 0, %124
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %12, align 8
  store i32 %127, i32* %128, align 4
  %129 = load i32*, i32** %12, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %12, align 8
  br label %111

131:                                              ; preds = %111
  br label %144

132:                                              ; preds = %55
  %133 = load i32*, i32** %12, align 8
  %134 = load i32*, i32** %13, align 8
  %135 = icmp uge i32* %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i32*, i32** %12, align 8
  store i32* %137, i32** %5, align 8
  br label %150

138:                                              ; preds = %132
  %139 = load i32*, i32** %10, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %10, align 8
  %141 = load i32, i32* %139, align 4
  %142 = load i32*, i32** %12, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** %12, align 8
  store i32 %141, i32* %142, align 4
  br label %144

144:                                              ; preds = %138, %131
  %145 = load i32, i32* %18, align 4
  %146 = ashr i32 %145, 1
  store i32 %146, i32* %18, align 4
  br label %45

147:                                              ; preds = %53
  br label %30

148:                                              ; preds = %38
  %149 = load i32*, i32** %12, align 8
  store i32* %149, i32** %5, align 8
  br label %150

150:                                              ; preds = %148, %136, %119, %109, %64
  %151 = load i32*, i32** %5, align 8
  ret i32* %151
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
