; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_fast_mp_montgomery_reduce.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_fast_mp_montgomery_reduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32* }

@MP_WARRAY = common dso_local global i32 0, align 4
@MP_OKAY = common dso_local global i32 0, align 4
@MP_MASK = common dso_local global i32 0, align 4
@DIGIT_BIT = common dso_local global i64 0, align 8
@MP_LT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_11__*, i32)* @fast_mp_montgomery_reduce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fast_mp_montgomery_reduce(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  %23 = load i32, i32* @MP_WARRAY, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %11, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %10, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %3
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  %44 = call i32 @mp_grow(%struct.TYPE_11__* %39, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* @MP_OKAY, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %233

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %3
  store i32* %26, i32** %14, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %15, align 8
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %66, %50
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load i32*, i32** %15, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %15, align 8
  %63 = load i32, i32* %61, align 4
  %64 = load i32*, i32** %14, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %14, align 8
  store i32 %63, i32* %64, align 4
  br label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %54

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %81, %69
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = mul nsw i32 %74, 2
  %76 = add nsw i32 %75, 1
  %77 = icmp slt i32 %71, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load i32*, i32** %14, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %14, align 8
  store i32 0, i32* %79, align 4
  br label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %70

84:                                               ; preds = %70
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %141, %84
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %144

91:                                               ; preds = %85
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %26, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @MP_MASK, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* %7, align 4
  %99 = mul nsw i32 %97, %98
  %100 = load i32, i32* @MP_MASK, align 4
  %101 = and i32 %99, %100
  store i32 %101, i32* %16, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  store i32* %104, i32** %18, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %26, i64 %106
  store i32* %107, i32** %19, align 8
  store i32 0, i32* %17, align 4
  br label %108

108:                                              ; preds = %124, %91
  %109 = load i32, i32* %17, align 4
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %108
  %115 = load i32, i32* %16, align 4
  %116 = load i32*, i32** %18, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %18, align 8
  %118 = load i32, i32* %116, align 4
  %119 = mul nsw i32 %115, %118
  %120 = load i32*, i32** %19, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %19, align 8
  %122 = load i32, i32* %120, align 4
  %123 = add nsw i32 %122, %119
  store i32 %123, i32* %120, align 4
  br label %124

124:                                              ; preds = %114
  %125 = load i32, i32* %17, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %17, align 4
  br label %108

127:                                              ; preds = %108
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %26, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i64, i64* @DIGIT_BIT, align 8
  %133 = trunc i64 %132 to i32
  %134 = ashr i32 %131, %133
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %26, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, %134
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %127
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %8, align 4
  br label %85

144:                                              ; preds = %85
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %26, i64 %146
  store i32* %147, i32** %22, align 8
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %26, i64 %150
  store i32* %151, i32** %21, align 8
  br label %152

152:                                              ; preds = %171, %144
  %153 = load i32, i32* %8, align 4
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = mul nsw i32 %156, 2
  %158 = add nsw i32 %157, 1
  %159 = icmp sle i32 %153, %158
  br i1 %159, label %160, label %174

160:                                              ; preds = %152
  %161 = load i32*, i32** %22, align 8
  %162 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %162, i32** %22, align 8
  %163 = load i32, i32* %161, align 4
  %164 = load i64, i64* @DIGIT_BIT, align 8
  %165 = trunc i64 %164 to i32
  %166 = ashr i32 %163, %165
  %167 = load i32*, i32** %21, align 8
  %168 = getelementptr inbounds i32, i32* %167, i32 1
  store i32* %168, i32** %21, align 8
  %169 = load i32, i32* %167, align 4
  %170 = add nsw i32 %169, %166
  store i32 %170, i32* %167, align 4
  br label %171

171:                                              ; preds = %160
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %8, align 4
  br label %152

174:                                              ; preds = %152
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  store i32* %177, i32** %20, align 8
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %26, i64 %181
  store i32* %182, i32** %21, align 8
  store i32 0, i32* %8, align 4
  br label %183

183:                                              ; preds = %198, %174
  %184 = load i32, i32* %8, align 4
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 %187, 1
  %189 = icmp slt i32 %184, %188
  br i1 %189, label %190, label %201

190:                                              ; preds = %183
  %191 = load i32*, i32** %21, align 8
  %192 = getelementptr inbounds i32, i32* %191, i32 1
  store i32* %192, i32** %21, align 8
  %193 = load i32, i32* %191, align 4
  %194 = load i32, i32* @MP_MASK, align 4
  %195 = and i32 %193, %194
  %196 = load i32*, i32** %20, align 8
  %197 = getelementptr inbounds i32, i32* %196, i32 1
  store i32* %197, i32** %20, align 8
  store i32 %195, i32* %196, align 4
  br label %198

198:                                              ; preds = %190
  %199 = load i32, i32* %8, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %8, align 4
  br label %183

201:                                              ; preds = %183
  br label %202

202:                                              ; preds = %209, %201
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* %10, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %202
  %207 = load i32*, i32** %20, align 8
  %208 = getelementptr inbounds i32, i32* %207, i32 1
  store i32* %208, i32** %20, align 8
  store i32 0, i32* %207, align 4
  br label %209

209:                                              ; preds = %206
  %210 = load i32, i32* %8, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %8, align 4
  br label %202

212:                                              ; preds = %202
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = add nsw i32 %215, 1
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 8
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %220 = call i32 @mp_clamp(%struct.TYPE_11__* %219)
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %223 = call i64 @mp_cmp_mag(%struct.TYPE_11__* %221, %struct.TYPE_11__* %222)
  %224 = load i64, i64* @MP_LT, align 8
  %225 = icmp ne i64 %223, %224
  br i1 %225, label %226, label %231

226:                                              ; preds = %212
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %230 = call i32 @s_mp_sub(%struct.TYPE_11__* %227, %struct.TYPE_11__* %228, %struct.TYPE_11__* %229)
  store i32 %230, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %233

231:                                              ; preds = %212
  %232 = load i32, i32* @MP_OKAY, align 4
  store i32 %232, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %233

233:                                              ; preds = %231, %226, %47
  %234 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %234)
  %235 = load i32, i32* %4, align 4
  ret i32 %235
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mp_grow(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @mp_clamp(%struct.TYPE_11__*) #2

declare dso_local i64 @mp_cmp_mag(%struct.TYPE_11__*, %struct.TYPE_11__*) #2

declare dso_local i32 @s_mp_sub(%struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
