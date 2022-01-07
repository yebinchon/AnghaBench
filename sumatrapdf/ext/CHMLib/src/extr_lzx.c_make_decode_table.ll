; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_lzx.c_make_decode_table.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_lzx.c_make_decode_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*)* @make_decode_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_decode_table(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 1, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* %7, align 4
  %19 = shl i32 1, %18
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = ashr i32 %20, 1
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %16, align 4
  store i32 %22, i32* %17, align 4
  br label %23

23:                                               ; preds = %66, %4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %71

27:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %63, %27
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %66

32:                                               ; preds = %28
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %32
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 1, i32* %5, align 4
  br label %210

48:                                               ; preds = %40
  %49 = load i32, i32* %16, align 4
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %54, %48
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %13, align 4
  %53 = icmp sgt i32 %51, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i32, i32* %10, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  store i32 %55, i32* %60, align 4
  br label %50

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %32
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %28

66:                                               ; preds = %28
  %67 = load i32, i32* %16, align 4
  %68 = ashr i32 %67, 1
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %23

71:                                               ; preds = %23
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %187

75:                                               ; preds = %71
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %86, %75
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 0, i32* %85, align 4
  br label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %77

89:                                               ; preds = %77
  %90 = load i32, i32* %14, align 4
  %91 = shl i32 %90, 16
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %15, align 4
  %93 = shl i32 %92, 16
  store i32 %93, i32* %15, align 4
  store i32 32768, i32* %16, align 4
  br label %94

94:                                               ; preds = %181, %89
  %95 = load i32, i32* %12, align 4
  %96 = icmp sle i32 %95, 16
  br i1 %96, label %97, label %186

97:                                               ; preds = %94
  store i32 0, i32* %10, align 4
  br label %98

98:                                               ; preds = %178, %97
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %181

102:                                              ; preds = %98
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %177

110:                                              ; preds = %102
  %111 = load i32, i32* %14, align 4
  %112 = ashr i32 %111, 16
  store i32 %112, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %113

113:                                              ; preds = %161, %110
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %7, align 4
  %117 = sub nsw i32 %115, %116
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %164

119:                                              ; preds = %113
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %144

126:                                              ; preds = %119
  %127 = load i32*, i32** %9, align 8
  %128 = load i32, i32* %17, align 4
  %129 = shl i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  store i32 0, i32* %131, align 4
  %132 = load i32*, i32** %9, align 8
  %133 = load i32, i32* %17, align 4
  %134 = shl i32 %133, 1
  %135 = add nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %132, i64 %136
  store i32 0, i32* %137, align 4
  %138 = load i32, i32* %17, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %17, align 4
  %140 = load i32*, i32** %9, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %138, i32* %143, align 4
  br label %144

144:                                              ; preds = %126, %119
  %145 = load i32*, i32** %9, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 %149, 1
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* %13, align 4
  %153 = sub nsw i32 15, %152
  %154 = ashr i32 %151, %153
  %155 = and i32 %154, 1
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %144
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %11, align 4
  br label %160

160:                                              ; preds = %157, %144
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %13, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %13, align 4
  br label %113

164:                                              ; preds = %113
  %165 = load i32, i32* %10, align 4
  %166 = load i32*, i32** %9, align 8
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  store i32 %165, i32* %169, align 4
  %170 = load i32, i32* %16, align 4
  %171 = load i32, i32* %14, align 4
  %172 = add nsw i32 %171, %170
  store i32 %172, i32* %14, align 4
  %173 = load i32, i32* %15, align 4
  %174 = icmp sgt i32 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %164
  store i32 1, i32* %5, align 4
  br label %210

176:                                              ; preds = %164
  br label %177

177:                                              ; preds = %176, %102
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %10, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %10, align 4
  br label %98

181:                                              ; preds = %98
  %182 = load i32, i32* %16, align 4
  %183 = ashr i32 %182, 1
  store i32 %183, i32* %16, align 4
  %184 = load i32, i32* %12, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %12, align 4
  br label %94

186:                                              ; preds = %94
  br label %187

187:                                              ; preds = %186, %71
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* %15, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  store i32 0, i32* %5, align 4
  br label %210

192:                                              ; preds = %187
  store i32 0, i32* %10, align 4
  br label %193

193:                                              ; preds = %206, %192
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* %6, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %209

197:                                              ; preds = %193
  %198 = load i32*, i32** %8, align 8
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %197
  store i32 1, i32* %5, align 4
  br label %210

205:                                              ; preds = %197
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %10, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %10, align 4
  br label %193

209:                                              ; preds = %193
  store i32 0, i32* %5, align 4
  br label %210

210:                                              ; preds = %209, %204, %191, %175, %47
  %211 = load i32, i32* %5, align 4
  ret i32 %211
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
