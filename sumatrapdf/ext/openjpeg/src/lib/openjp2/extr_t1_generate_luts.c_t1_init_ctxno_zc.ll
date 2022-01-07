; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_t1_generate_luts.c_t1_init_ctxno_zc.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_t1_generate_luts.c_t1_init_ctxno_zc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T1_SIGMA_3 = common dso_local global i32 0, align 4
@T1_SIGMA_5 = common dso_local global i32 0, align 4
@T1_SIGMA_1 = common dso_local global i32 0, align 4
@T1_SIGMA_7 = common dso_local global i32 0, align 4
@T1_SIGMA_0 = common dso_local global i32 0, align 4
@T1_SIGMA_2 = common dso_local global i32 0, align 4
@T1_SIGMA_8 = common dso_local global i32 0, align 4
@T1_SIGMA_6 = common dso_local global i32 0, align 4
@T1_CTXNO_ZC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @t1_init_ctxno_zc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t1_init_ctxno_zc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @T1_SIGMA_3, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @T1_SIGMA_5, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = add nsw i32 %15, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @T1_SIGMA_1, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @T1_SIGMA_7, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = add nsw i32 %26, %31
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @T1_SIGMA_0, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @T1_SIGMA_2, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = add nsw i32 %37, %42
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @T1_SIGMA_8, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = add nsw i32 %43, %48
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @T1_SIGMA_6, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = add nsw i32 %49, %54
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %4, align 4
  switch i32 %56, label %146 [
    i32 2, label %57
    i32 0, label %61
    i32 1, label %61
    i32 3, label %102
  ]

57:                                               ; preds = %2
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %2, %2, %57
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %85, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  store i32 0, i32* %8, align 4
  br label %77

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 1, i32* %8, align 4
  br label %76

75:                                               ; preds = %71
  store i32 2, i32* %8, align 4
  br label %76

76:                                               ; preds = %75, %74
  br label %77

77:                                               ; preds = %76, %70
  br label %84

78:                                               ; preds = %64
  %79 = load i32, i32* %6, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 3, i32* %8, align 4
  br label %83

82:                                               ; preds = %78
  store i32 4, i32* %8, align 4
  br label %83

83:                                               ; preds = %82, %81
  br label %84

84:                                               ; preds = %83, %77
  br label %101

85:                                               ; preds = %61
  %86 = load i32, i32* %5, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  store i32 5, i32* %8, align 4
  br label %96

95:                                               ; preds = %91
  store i32 6, i32* %8, align 4
  br label %96

96:                                               ; preds = %95, %94
  br label %98

97:                                               ; preds = %88
  store i32 7, i32* %8, align 4
  br label %98

98:                                               ; preds = %97, %96
  br label %100

99:                                               ; preds = %85
  store i32 8, i32* %8, align 4
  br label %100

100:                                              ; preds = %99, %98
  br label %101

101:                                              ; preds = %100, %84
  br label %146

102:                                              ; preds = %2
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %103, %104
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %119, label %108

108:                                              ; preds = %102
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  store i32 0, i32* %8, align 4
  br label %118

112:                                              ; preds = %108
  %113 = load i32, i32* %10, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 1, i32* %8, align 4
  br label %117

116:                                              ; preds = %112
  store i32 2, i32* %8, align 4
  br label %117

117:                                              ; preds = %116, %115
  br label %118

118:                                              ; preds = %117, %111
  br label %145

119:                                              ; preds = %102
  %120 = load i32, i32* %7, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %133

122:                                              ; preds = %119
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  store i32 3, i32* %8, align 4
  br label %132

126:                                              ; preds = %122
  %127 = load i32, i32* %10, align 4
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 4, i32* %8, align 4
  br label %131

130:                                              ; preds = %126
  store i32 5, i32* %8, align 4
  br label %131

131:                                              ; preds = %130, %129
  br label %132

132:                                              ; preds = %131, %125
  br label %144

133:                                              ; preds = %119
  %134 = load i32, i32* %7, align 4
  %135 = icmp eq i32 %134, 2
  br i1 %135, label %136, label %142

136:                                              ; preds = %133
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %136
  store i32 6, i32* %8, align 4
  br label %141

140:                                              ; preds = %136
  store i32 7, i32* %8, align 4
  br label %141

141:                                              ; preds = %140, %139
  br label %143

142:                                              ; preds = %133
  store i32 8, i32* %8, align 4
  br label %143

143:                                              ; preds = %142, %141
  br label %144

144:                                              ; preds = %143, %132
  br label %145

145:                                              ; preds = %144, %118
  br label %146

146:                                              ; preds = %2, %145, %101
  %147 = load i32, i32* @T1_CTXNO_ZC, align 4
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %147, %148
  ret i32 %149
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
