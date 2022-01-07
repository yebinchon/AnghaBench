; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_csa.c___csa_encrypt.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_csa.c___csa_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32*, i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csa_Encrypt(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [25 x [8 x i32]], align 16
  %13 = alloca [8 x i32], align 16
  %14 = alloca [8 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 4, i32* %11, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 3
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, 128
  store i32 %20, i32* %18, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %3
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, 64
  store i32 %29, i32* %27, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %7, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %8, align 8
  br label %43

36:                                               ; preds = %3
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %7, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %8, align 8
  br label %43

43:                                               ; preds = %36, %25
  store i32 4, i32* %11, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %49, %43
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %11, align 4
  %59 = sub nsw i32 %57, %58
  %60 = sdiv i32 %59, 8
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %11, align 4
  %63 = sub nsw i32 %61, %62
  %64 = srem i32 %63, 8
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp sle i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %56
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 63
  store i32 %71, i32* %69, align 4
  br label %234

72:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %84, %72
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 8
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [25 x [8 x i32]], [25 x [8 x i32]]* %12, i64 0, i64 %79
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [8 x i32], [8 x i32]* %80, i64 0, i64 %82
  store i32 0, i32* %83, align 4
  br label %84

84:                                               ; preds = %76
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %73

87:                                               ; preds = %73
  %88 = load i32, i32* %15, align 4
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %131, %87
  %90 = load i32, i32* %9, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %134

92:                                               ; preds = %89
  store i32 0, i32* %10, align 4
  br label %93

93:                                               ; preds = %120, %92
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %94, 8
  br i1 %95, label %96, label %123

96:                                               ; preds = %93
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %9, align 4
  %100 = sub nsw i32 %99, 1
  %101 = mul nsw i32 8, %100
  %102 = add nsw i32 %98, %101
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %97, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [25 x [8 x i32]], [25 x [8 x i32]]* %12, i64 0, i64 %110
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [8 x i32], [8 x i32]* %111, i64 0, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = xor i32 %107, %115
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 %118
  store i32 %116, i32* %119, align 4
  br label %120

120:                                              ; preds = %96
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %93

123:                                              ; preds = %93
  %124 = load i32*, i32** %8, align 8
  %125 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [25 x [8 x i32]], [25 x [8 x i32]]* %12, i64 0, i64 %127
  %129 = getelementptr inbounds [8 x i32], [8 x i32]* %128, i64 0, i64 0
  %130 = call i32 @csa_BlockCypher(i32* %124, i32* %125, i32* %129)
  br label %131

131:                                              ; preds = %123
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %9, align 4
  br label %89

134:                                              ; preds = %89
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %136 = load i32*, i32** %7, align 8
  %137 = getelementptr inbounds [25 x [8 x i32]], [25 x [8 x i32]]* %12, i64 0, i64 1
  %138 = getelementptr inbounds [8 x i32], [8 x i32]* %137, i64 0, i64 0
  %139 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %140 = call i32 @csa_StreamCypher(%struct.TYPE_4__* %135, i32 1, i32* %136, i32* %138, i32* %139)
  store i32 0, i32* %9, align 4
  br label %141

141:                                              ; preds = %156, %134
  %142 = load i32, i32* %9, align 4
  %143 = icmp slt i32 %142, 8
  br i1 %143, label %144, label %159

144:                                              ; preds = %141
  %145 = getelementptr inbounds [25 x [8 x i32]], [25 x [8 x i32]]* %12, i64 0, i64 1
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [8 x i32], [8 x i32]* %145, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %5, align 8
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %151, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %150, i64 %154
  store i32 %149, i32* %155, align 4
  br label %156

156:                                              ; preds = %144
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  br label %141

159:                                              ; preds = %141
  store i32 2, i32* %9, align 4
  br label %160

160:                                              ; preds = %200, %159
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %15, align 4
  %163 = add nsw i32 %162, 1
  %164 = icmp slt i32 %161, %163
  br i1 %164, label %165, label %203

165:                                              ; preds = %160
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %167 = load i32*, i32** %7, align 8
  %168 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %169 = call i32 @csa_StreamCypher(%struct.TYPE_4__* %166, i32 0, i32* %167, i32* null, i32* %168)
  store i32 0, i32* %10, align 4
  br label %170

170:                                              ; preds = %196, %165
  %171 = load i32, i32* %10, align 4
  %172 = icmp slt i32 %171, 8
  br i1 %172, label %173, label %199

173:                                              ; preds = %170
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [25 x [8 x i32]], [25 x [8 x i32]]* %12, i64 0, i64 %175
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [8 x i32], [8 x i32]* %176, i64 0, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = xor i32 %180, %184
  %186 = load i32*, i32** %5, align 8
  %187 = load i32, i32* %11, align 4
  %188 = load i32, i32* %9, align 4
  %189 = sub nsw i32 %188, 1
  %190 = mul nsw i32 8, %189
  %191 = add nsw i32 %187, %190
  %192 = load i32, i32* %10, align 4
  %193 = add nsw i32 %191, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %186, i64 %194
  store i32 %185, i32* %195, align 4
  br label %196

196:                                              ; preds = %173
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %10, align 4
  br label %170

199:                                              ; preds = %170
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %9, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %9, align 4
  br label %160

203:                                              ; preds = %160
  %204 = load i32, i32* %16, align 4
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %206, label %234

206:                                              ; preds = %203
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %208 = load i32*, i32** %7, align 8
  %209 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %210 = call i32 @csa_StreamCypher(%struct.TYPE_4__* %207, i32 0, i32* %208, i32* null, i32* %209)
  store i32 0, i32* %10, align 4
  br label %211

211:                                              ; preds = %230, %206
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* %16, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %233

215:                                              ; preds = %211
  %216 = load i32, i32* %10, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load i32*, i32** %5, align 8
  %221 = load i32, i32* %6, align 4
  %222 = load i32, i32* %16, align 4
  %223 = sub nsw i32 %221, %222
  %224 = load i32, i32* %10, align 4
  %225 = add nsw i32 %223, %224
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %220, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = xor i32 %228, %219
  store i32 %229, i32* %227, align 4
  br label %230

230:                                              ; preds = %215
  %231 = load i32, i32* %10, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %10, align 4
  br label %211

233:                                              ; preds = %211
  br label %234

234:                                              ; preds = %67, %233, %203
  ret void
}

declare dso_local i32 @csa_BlockCypher(i32*, i32*, i32*) #1

declare dso_local i32 @csa_StreamCypher(%struct.TYPE_4__*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
