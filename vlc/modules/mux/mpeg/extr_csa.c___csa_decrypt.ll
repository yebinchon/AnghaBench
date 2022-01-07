; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_csa.c___csa_decrypt.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_csa.c___csa_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csa_Decrypt(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [8 x i32], align 16
  %10 = alloca [8 x i32], align 16
  %11 = alloca [8 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 3
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 128
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %204

23:                                               ; preds = %3
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 64
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %7, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %8, align 8
  br label %43

36:                                               ; preds = %23
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %7, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %8, align 8
  br label %43

43:                                               ; preds = %36, %29
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 63
  store i32 %47, i32* %45, align 4
  store i32 4, i32* %12, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %43
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %53, %43
  %61 = load i32, i32* %12, align 4
  %62 = sub nsw i32 188, %61
  %63 = icmp slt i32 %62, 8
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %204

65:                                               ; preds = %60
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %73 = call i32 @csa_StreamCypher(%struct.TYPE_4__* %66, i32 1, i32* %67, i32* %71, i32* %72)
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %12, align 4
  %76 = sub nsw i32 %74, %75
  %77 = sdiv i32 %76, 8
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %16, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %65
  br label %204

81:                                               ; preds = %65
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %12, align 4
  %84 = sub nsw i32 %82, %83
  %85 = srem i32 %84, 8
  store i32 %85, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %86

86:                                               ; preds = %170, %81
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, 1
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %173

91:                                               ; preds = %86
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %95 = call i32 @csa_BlockDecypher(i32* %92, i32* %93, i32* %94)
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %130

99:                                               ; preds = %91
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %103 = call i32 @csa_StreamCypher(%struct.TYPE_4__* %100, i32 0, i32* %101, i32* null, i32* %102)
  store i32 0, i32* %15, align 4
  br label %104

104:                                              ; preds = %126, %99
  %105 = load i32, i32* %15, align 4
  %106 = icmp slt i32 %105, 8
  br i1 %106, label %107, label %129

107:                                              ; preds = %104
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %14, align 4
  %111 = mul nsw i32 8, %110
  %112 = add nsw i32 %109, %111
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %108, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = xor i32 %117, %121
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %124
  store i32 %122, i32* %125, align 4
  br label %126

126:                                              ; preds = %107
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %15, align 4
  br label %104

129:                                              ; preds = %104
  br label %142

130:                                              ; preds = %91
  store i32 0, i32* %15, align 4
  br label %131

131:                                              ; preds = %138, %130
  %132 = load i32, i32* %15, align 4
  %133 = icmp slt i32 %132, 8
  br i1 %133, label %134, label %141

134:                                              ; preds = %131
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %136
  store i32 0, i32* %137, align 4
  br label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %15, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %15, align 4
  br label %131

141:                                              ; preds = %131
  br label %142

142:                                              ; preds = %141, %129
  store i32 0, i32* %15, align 4
  br label %143

143:                                              ; preds = %166, %142
  %144 = load i32, i32* %15, align 4
  %145 = icmp slt i32 %144, 8
  br i1 %145, label %146, label %169

146:                                              ; preds = %143
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %15, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = xor i32 %150, %154
  %156 = load i32*, i32** %5, align 8
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %14, align 4
  %159 = sub nsw i32 %158, 1
  %160 = mul nsw i32 8, %159
  %161 = add nsw i32 %157, %160
  %162 = load i32, i32* %15, align 4
  %163 = add nsw i32 %161, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %156, i64 %164
  store i32 %155, i32* %165, align 4
  br label %166

166:                                              ; preds = %146
  %167 = load i32, i32* %15, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %15, align 4
  br label %143

169:                                              ; preds = %143
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %14, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %14, align 4
  br label %86

173:                                              ; preds = %86
  %174 = load i32, i32* %13, align 4
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %204

176:                                              ; preds = %173
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %178 = load i32*, i32** %7, align 8
  %179 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %180 = call i32 @csa_StreamCypher(%struct.TYPE_4__* %177, i32 0, i32* %178, i32* null, i32* %179)
  store i32 0, i32* %15, align 4
  br label %181

181:                                              ; preds = %200, %176
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* %13, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %203

185:                                              ; preds = %181
  %186 = load i32, i32* %15, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32*, i32** %5, align 8
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* %13, align 4
  %193 = sub nsw i32 %191, %192
  %194 = load i32, i32* %15, align 4
  %195 = add nsw i32 %193, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %190, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = xor i32 %198, %189
  store i32 %199, i32* %197, align 4
  br label %200

200:                                              ; preds = %185
  %201 = load i32, i32* %15, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %15, align 4
  br label %181

203:                                              ; preds = %181
  br label %204

204:                                              ; preds = %22, %64, %80, %203, %173
  ret void
}

declare dso_local i32 @csa_StreamCypher(%struct.TYPE_4__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @csa_BlockDecypher(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
