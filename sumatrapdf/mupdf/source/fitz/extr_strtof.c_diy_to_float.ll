; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_strtof.c_diy_to_float.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_strtof.c_diy_to_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%union.anon = type { float }

@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SP_SIGNIFICAND_SIZE = common dso_local global i32 0, align 4
@SP_SIGNIFICAND_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i64, i32)* @diy_to_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @diy_to_float(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.anon, align 4
  %7 = alloca i32, align 4
  %8 = bitcast %struct.TYPE_3__* %3 to i64*
  store i64 %0, i64* %8, align 4
  store i32 %1, i32* %4, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, -2147483648
  %12 = call i32 @assert(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %14, 96
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 96
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp uge i32 %22, -128
  br i1 %23, label %24, label %28

24:                                               ; preds = %20, %2
  %25 = load i32, i32* @ERANGE, align 4
  store i32 %25, i32* @errno, align 4
  %26 = load i32, i32* @SP_SIGNIFICAND_SIZE, align 4
  %27 = shl i32 255, %26
  store i32 %27, i32* %5, align 4
  br label %138

28:                                               ; preds = %20, %16
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, -158
  br i1 %31, label %32, label %68

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 158
  %36 = load i32, i32* @SP_SIGNIFICAND_SIZE, align 4
  %37 = shl i32 %35, %36
  store i32 %37, i32* %5, align 4
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 8
  %41 = load i32, i32* @SP_SIGNIFICAND_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 128
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %32
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 127
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %66

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 256
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %62, %57
  br label %66

66:                                               ; preds = %65, %54
  br label %67

67:                                               ; preds = %66, %32
  br label %137

68:                                               ; preds = %28
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, -158
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp uge i32 %74, -256
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* @SP_SIGNIFICAND_SIZE, align 4
  %78 = shl i32 1, %77
  store i32 %78, i32* %5, align 4
  br label %136

79:                                               ; preds = %72, %68
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %81, -181
  br i1 %82, label %83, label %123

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 -149, %85
  store i32 %86, i32* %7, align 4
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %7, align 4
  %90 = ashr i32 %88, %89
  store i32 %90, i32* %5, align 4
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %7, align 4
  %94 = sub nsw i32 %93, 1
  %95 = shl i32 1, %94
  %96 = and i32 %92, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %122

98:                                               ; preds = %83
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %7, align 4
  %102 = sub nsw i32 %101, 1
  %103 = shl i32 1, %102
  %104 = sub i32 %103, 1
  %105 = and i32 %100, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %98
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %121

110:                                              ; preds = %98
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %7, align 4
  %114 = shl i32 1, %113
  %115 = and i32 %112, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %117, %110
  br label %121

121:                                              ; preds = %120, %107
  br label %122

122:                                              ; preds = %121, %83
  br label %135

123:                                              ; preds = %79
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, -181
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp ugt i32 %129, -2147483648
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store i32 1, i32* %5, align 4
  br label %134

132:                                              ; preds = %127, %123
  %133 = load i32, i32* @ERANGE, align 4
  store i32 %133, i32* @errno, align 4
  store i32 0, i32* %5, align 4
  br label %134

134:                                              ; preds = %132, %131
  br label %135

135:                                              ; preds = %134, %122
  br label %136

136:                                              ; preds = %135, %76
  br label %137

137:                                              ; preds = %136, %67
  br label %138

138:                                              ; preds = %137, %24
  %139 = load i32, i32* %4, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i32, i32* %5, align 4
  %143 = or i32 %142, -2147483648
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %141, %138
  %145 = load i32, i32* %5, align 4
  %146 = bitcast %union.anon* %6 to i32*
  store i32 %145, i32* %146, align 4
  %147 = bitcast %union.anon* %6 to float*
  %148 = load float, float* %147, align 4
  ret float %148
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
