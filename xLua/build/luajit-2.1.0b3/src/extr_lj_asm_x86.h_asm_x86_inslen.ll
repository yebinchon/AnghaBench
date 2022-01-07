; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_x86_inslen.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_x86_inslen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@map_op1 = common dso_local global i32* null, align 8
@map_op2 = common dso_local global i32* null, align 8
@LJ_32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*)* @asm_x86_inslen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asm_x86_inslen(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32*, i32** @map_op1, align 8
  %8 = load i64*, i64** %3, align 8
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %164, %1
  %13 = load i32, i32* %6, align 4
  %14 = ashr i32 %13, 4
  switch i32 %14, label %164 [
    i32 0, label %15
    i32 1, label %22
    i32 2, label %34
    i32 3, label %41
    i32 4, label %44
    i32 5, label %49
    i32 6, label %54
    i32 7, label %71
    i32 8, label %110
    i32 9, label %115
  ]

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 4
  %21 = add nsw i32 %18, %20
  store i32 %21, i32* %2, align 4
  br label %165

22:                                               ; preds = %12
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32*, i32** @map_op1, align 8
  %27 = load i64*, i64** %3, align 8
  %28 = getelementptr inbounds i64, i64* %27, i32 1
  store i64* %28, i64** %3, align 8
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %164

34:                                               ; preds = %12
  %35 = load i32*, i32** @map_op2, align 8
  %36 = load i64*, i64** %3, align 8
  %37 = getelementptr inbounds i64, i64* %36, i32 1
  store i64* %37, i64** %3, align 8
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %6, align 4
  br label %164

41:                                               ; preds = %12
  %42 = load i64*, i64** %3, align 8
  %43 = getelementptr inbounds i64, i64* %42, i32 1
  store i64* %43, i64** %3, align 8
  br label %116

44:                                               ; preds = %12
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, 2
  %47 = load i32, i32* %4, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %12, %44
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, 15
  %53 = add nsw i32 %50, %52
  store i32 %53, i32* %2, align 4
  br label %165

54:                                               ; preds = %12
  %55 = load i64*, i64** %3, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  %57 = load i64, i64* %56, align 8
  %58 = and i64 %57, 56
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 2, i32* %6, align 4
  br label %70

61:                                               ; preds = %54
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, 2
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 102
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 4, i32* %6, align 4
  br label %69

69:                                               ; preds = %68, %65, %61
  br label %70

70:                                               ; preds = %69, %60
  br label %116

71:                                               ; preds = %12
  %72 = load i32, i32* @LJ_32, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load i64*, i64** %3, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ult i64 %77, 192
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 2, i32* %6, align 4
  br label %116

80:                                               ; preds = %74, %71
  %81 = load i32, i32* %6, align 4
  %82 = icmp eq i32 %81, 112
  br i1 %82, label %83, label %99

83:                                               ; preds = %80
  %84 = load i64*, i64** %3, align 8
  %85 = getelementptr inbounds i64, i64* %84, i32 1
  store i64* %85, i64** %3, align 8
  %86 = load i64, i64* %85, align 8
  %87 = and i64 %86, 31
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp sge i32 %91, 2
  br i1 %92, label %93, label %98

93:                                               ; preds = %83
  %94 = load i64*, i64** %3, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 2
  store i64* %95, i64** %3, align 8
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 2
  store i32 %97, i32* %4, align 4
  br label %116

98:                                               ; preds = %83
  br label %99

99:                                               ; preds = %98, %80
  %100 = load i64*, i64** %3, align 8
  %101 = getelementptr inbounds i64, i64* %100, i32 1
  store i64* %101, i64** %3, align 8
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %4, align 4
  %104 = load i32*, i32** @map_op2, align 8
  %105 = load i64*, i64** %3, align 8
  %106 = getelementptr inbounds i64, i64* %105, i32 1
  store i64* %106, i64** %3, align 8
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %6, align 4
  br label %164

110:                                              ; preds = %12
  %111 = load i32, i32* %5, align 4
  %112 = and i32 %111, 2
  %113 = load i32, i32* %4, align 4
  %114 = sub nsw i32 %113, %112
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %12, %110
  br label %116

116:                                              ; preds = %115, %93, %79, %70, %41
  %117 = load i32, i32* %6, align 4
  %118 = and i32 %117, 15
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %4, align 4
  %121 = load i64*, i64** %3, align 8
  %122 = getelementptr inbounds i64, i64* %121, i32 1
  store i64* %122, i64** %3, align 8
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = ashr i32 %125, 6
  switch i32 %126, label %143 [
    i32 0, label %127
    i32 1, label %135
    i32 2, label %138
    i32 3, label %141
  ]

127:                                              ; preds = %116
  %128 = load i32, i32* %6, align 4
  %129 = and i32 %128, 7
  %130 = icmp eq i32 %129, 5
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load i32, i32* %4, align 4
  %133 = add nsw i32 %132, 4
  store i32 %133, i32* %2, align 4
  br label %165

134:                                              ; preds = %127
  br label %143

135:                                              ; preds = %116
  %136 = load i32, i32* %4, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %4, align 4
  br label %143

138:                                              ; preds = %116
  %139 = load i32, i32* %4, align 4
  %140 = add nsw i32 %139, 4
  store i32 %140, i32* %4, align 4
  br label %143

141:                                              ; preds = %116
  %142 = load i32, i32* %4, align 4
  store i32 %142, i32* %2, align 4
  br label %165

143:                                              ; preds = %116, %138, %135, %134
  %144 = load i32, i32* %6, align 4
  %145 = and i32 %144, 7
  %146 = icmp eq i32 %145, 4
  br i1 %146, label %147, label %162

147:                                              ; preds = %143
  %148 = load i32, i32* %4, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %4, align 4
  %150 = load i32, i32* %6, align 4
  %151 = icmp slt i32 %150, 64
  br i1 %151, label %152, label %161

152:                                              ; preds = %147
  %153 = load i64*, i64** %3, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 1
  %155 = load i64, i64* %154, align 8
  %156 = and i64 %155, 7
  %157 = icmp eq i64 %156, 5
  br i1 %157, label %158, label %161

158:                                              ; preds = %152
  %159 = load i32, i32* %4, align 4
  %160 = add nsw i32 %159, 4
  store i32 %160, i32* %4, align 4
  br label %161

161:                                              ; preds = %158, %152, %147
  br label %162

162:                                              ; preds = %161, %143
  %163 = load i32, i32* %4, align 4
  store i32 %163, i32* %2, align 4
  br label %165

164:                                              ; preds = %12, %99, %34, %22
  br label %12

165:                                              ; preds = %162, %141, %131, %49, %15
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
