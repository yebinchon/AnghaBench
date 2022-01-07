; ModuleID = '/home/carl/AnghaBench/redis/src/extr_bitops.c_checkSignedBitfieldOverflow.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_bitops.c_checkSignedBitfieldOverflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT64_MAX = common dso_local global i32 0, align 4
@BFOVERFLOW_WRAP = common dso_local global i32 0, align 4
@BFOVERFLOW_SAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @checkSignedBitfieldOverflow(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 64
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @INT64_MAX, align 4
  br label %30

25:                                               ; preds = %5
  %26 = load i32, i32* %9, align 4
  %27 = sub nsw i32 %26, 1
  %28 = shl i32 1, %27
  %29 = sub nsw i32 %28, 1
  br label %30

30:                                               ; preds = %25, %23
  %31 = phi i32 [ %24, %23 ], [ %29, %25 ]
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = sub nsw i32 0, %32
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %61, label %44

44:                                               ; preds = %30
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 64
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %61, label %51

51:                                               ; preds = %47, %44
  %52 = load i32, i32* %7, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %79

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %57, %47, %30
  %62 = load i32*, i32** %11, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @BFOVERFLOW_WRAP, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %120

69:                                               ; preds = %64
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @BFOVERFLOW_SAT, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* %12, align 4
  %75 = load i32*, i32** %11, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %69
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77, %61
  store i32 1, i32* %6, align 4
  br label %147

79:                                               ; preds = %57, %54, %51
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %100, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 64
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %100, label %90

90:                                               ; preds = %86, %83
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %118

93:                                               ; preds = %90
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %118

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %15, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %118

100:                                              ; preds = %96, %86, %79
  %101 = load i32*, i32** %11, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %117

103:                                              ; preds = %100
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @BFOVERFLOW_WRAP, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %120

108:                                              ; preds = %103
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @BFOVERFLOW_SAT, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, i32* %13, align 4
  %114 = load i32*, i32** %11, align 8
  store i32 %113, i32* %114, align 4
  br label %115

115:                                              ; preds = %112, %108
  br label %116

116:                                              ; preds = %115
  br label %117

117:                                              ; preds = %116, %100
  store i32 -1, i32* %6, align 4
  br label %147

118:                                              ; preds = %96, %93, %90
  br label %119

119:                                              ; preds = %118
  store i32 0, i32* %6, align 4
  br label %147

120:                                              ; preds = %107, %68
  %121 = load i32, i32* %9, align 4
  %122 = shl i32 -1, %121
  store i32 %122, i32* %16, align 4
  %123 = load i32, i32* %9, align 4
  %124 = sub nsw i32 %123, 1
  %125 = shl i32 1, %124
  store i32 %125, i32* %17, align 4
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %18, align 4
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %19, align 4
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* %19, align 4
  %130 = add nsw i32 %128, %129
  store i32 %130, i32* %20, align 4
  %131 = load i32, i32* %20, align 4
  %132 = load i32, i32* %17, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %120
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %20, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %20, align 4
  br label %144

139:                                              ; preds = %120
  %140 = load i32, i32* %16, align 4
  %141 = xor i32 %140, -1
  %142 = load i32, i32* %20, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %20, align 4
  br label %144

144:                                              ; preds = %139, %135
  %145 = load i32, i32* %20, align 4
  %146 = load i32*, i32** %11, align 8
  store i32 %145, i32* %146, align 4
  store i32 1, i32* %6, align 4
  br label %147

147:                                              ; preds = %144, %119, %117, %78
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
