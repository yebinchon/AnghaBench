; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_csa.c_csa_ComputeKey.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_csa.c_csa_ComputeKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@key_perm = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @csa_ComputeKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csa_ComputeKey(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [64 x i32], align 16
  %9 = alloca [64 x i32], align 16
  %10 = alloca [8 x [9 x i32]], align 16
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %25, %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [8 x [9 x i32]], [8 x [9 x i32]]* %10, i64 0, i64 7
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [9 x i32], [9 x i32]* %20, i64 0, i64 %23
  store i32 %19, i32* %24, align 4
  br label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %11

28:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %130, %28
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 7
  br i1 %31, label %32, label %133

32:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %82, %32
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 8
  br i1 %35, label %36, label %85

36:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %78, %36
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 8
  br i1 %39, label %40, label %81

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 7, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x [9 x i32]], [8 x [9 x i32]]* %10, i64 0, i64 %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 1, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [9 x i32], [9 x i32]* %44, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 7, %50
  %52 = ashr i32 %49, %51
  %53 = and i32 %52, 1
  %54 = load i32, i32* %6, align 4
  %55 = mul nsw i32 %54, 8
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 %58
  store i32 %53, i32* %59, align 4
  %60 = load i32, i32* %6, align 4
  %61 = mul nsw i32 %60, 8
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** @key_perm, align 8
  %68 = load i32, i32* %6, align 4
  %69 = mul nsw i32 %68, 8
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %67, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %76
  store i32 %66, i32* %77, align 4
  br label %78

78:                                               ; preds = %40
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %37

81:                                               ; preds = %37
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %33

85:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %126, %85
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 8
  br i1 %88, label %89, label %129

89:                                               ; preds = %86
  %90 = load i32, i32* %5, align 4
  %91 = sub nsw i32 6, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [8 x [9 x i32]], [8 x [9 x i32]]* %10, i64 0, i64 %92
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 1, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [9 x i32], [9 x i32]* %93, i64 0, i64 %96
  store i32 0, i32* %97, align 4
  store i32 0, i32* %7, align 4
  br label %98

98:                                               ; preds = %122, %89
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %99, 8
  br i1 %100, label %101, label %125

101:                                              ; preds = %98
  %102 = load i32, i32* %6, align 4
  %103 = mul nsw i32 %102, 8
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %7, align 4
  %110 = sub nsw i32 7, %109
  %111 = shl i32 %108, %110
  %112 = load i32, i32* %5, align 4
  %113 = sub nsw i32 6, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [8 x [9 x i32]], [8 x [9 x i32]]* %10, i64 0, i64 %114
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 1, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [9 x i32], [9 x i32]* %115, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %111
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %101
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %98

125:                                              ; preds = %98
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %6, align 4
  br label %86

129:                                              ; preds = %86
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  br label %29

133:                                              ; preds = %29
  store i32 0, i32* %5, align 4
  br label %134

134:                                              ; preds = %165, %133
  %135 = load i32, i32* %5, align 4
  %136 = icmp slt i32 %135, 7
  br i1 %136, label %137, label %168

137:                                              ; preds = %134
  store i32 0, i32* %6, align 4
  br label %138

138:                                              ; preds = %161, %137
  %139 = load i32, i32* %6, align 4
  %140 = icmp slt i32 %139, 8
  br i1 %140, label %141, label %164

141:                                              ; preds = %138
  %142 = load i32, i32* %5, align 4
  %143 = add nsw i32 1, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [8 x [9 x i32]], [8 x [9 x i32]]* %10, i64 0, i64 %144
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 1, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [9 x i32], [9 x i32]* %145, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %5, align 4
  %152 = xor i32 %150, %151
  %153 = load i32*, i32** %3, align 8
  %154 = load i32, i32* %5, align 4
  %155 = mul nsw i32 %154, 8
  %156 = add nsw i32 1, %155
  %157 = load i32, i32* %6, align 4
  %158 = add nsw i32 %156, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %153, i64 %159
  store i32 %152, i32* %160, align 4
  br label %161

161:                                              ; preds = %141
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %6, align 4
  br label %138

164:                                              ; preds = %138
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %5, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %5, align 4
  br label %134

168:                                              ; preds = %134
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
