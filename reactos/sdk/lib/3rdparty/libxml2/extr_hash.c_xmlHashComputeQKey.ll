; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_hash.c_xmlHashComputeQKey.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_hash.c_xmlHashComputeQKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i32*, i32*, i32*, i32*, i32*, i32*)* @xmlHashComputeQKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xmlHashComputeQKey(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store i64 0, i64* %15, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %7
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 30, %21
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %15, align 8
  %25 = add i64 %24, %23
  store i64 %25, i64* %15, align 8
  br label %33

26:                                               ; preds = %7
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 30, %28
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %15, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %15, align 8
  br label %33

33:                                               ; preds = %26, %19
  %34 = load i32*, i32** %9, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %64

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %44, %36
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %9, align 8
  %40 = load i32, i32* %38, align 4
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %16, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = load i64, i64* %15, align 8
  %46 = load i64, i64* %15, align 8
  %47 = shl i64 %46, 5
  %48 = load i64, i64* %15, align 8
  %49 = lshr i64 %48, 3
  %50 = add i64 %47, %49
  %51 = load i8, i8* %16, align 1
  %52 = sext i8 %51 to i64
  %53 = add i64 %50, %52
  %54 = xor i64 %45, %53
  store i64 %54, i64* %15, align 8
  br label %37

55:                                               ; preds = %37
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* %15, align 8
  %58 = shl i64 %57, 5
  %59 = load i64, i64* %15, align 8
  %60 = lshr i64 %59, 3
  %61 = add i64 %58, %60
  %62 = add i64 %61, 58
  %63 = xor i64 %56, %62
  store i64 %63, i64* %15, align 8
  br label %64

64:                                               ; preds = %55, %33
  %65 = load i32*, i32** %10, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %87

67:                                               ; preds = %64
  br label %68

68:                                               ; preds = %75, %67
  %69 = load i32*, i32** %10, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %10, align 8
  %71 = load i32, i32* %69, align 4
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %16, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %68
  %76 = load i64, i64* %15, align 8
  %77 = load i64, i64* %15, align 8
  %78 = shl i64 %77, 5
  %79 = load i64, i64* %15, align 8
  %80 = lshr i64 %79, 3
  %81 = add i64 %78, %80
  %82 = load i8, i8* %16, align 1
  %83 = sext i8 %82 to i64
  %84 = add i64 %81, %83
  %85 = xor i64 %76, %84
  store i64 %85, i64* %15, align 8
  br label %68

86:                                               ; preds = %68
  br label %87

87:                                               ; preds = %86, %64
  %88 = load i64, i64* %15, align 8
  %89 = load i64, i64* %15, align 8
  %90 = shl i64 %89, 5
  %91 = load i64, i64* %15, align 8
  %92 = lshr i64 %91, 3
  %93 = add i64 %90, %92
  %94 = xor i64 %88, %93
  store i64 %94, i64* %15, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %125

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %105, %97
  %99 = load i32*, i32** %11, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %11, align 8
  %101 = load i32, i32* %99, align 4
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %16, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %98
  %106 = load i64, i64* %15, align 8
  %107 = load i64, i64* %15, align 8
  %108 = shl i64 %107, 5
  %109 = load i64, i64* %15, align 8
  %110 = lshr i64 %109, 3
  %111 = add i64 %108, %110
  %112 = load i8, i8* %16, align 1
  %113 = sext i8 %112 to i64
  %114 = add i64 %111, %113
  %115 = xor i64 %106, %114
  store i64 %115, i64* %15, align 8
  br label %98

116:                                              ; preds = %98
  %117 = load i64, i64* %15, align 8
  %118 = load i64, i64* %15, align 8
  %119 = shl i64 %118, 5
  %120 = load i64, i64* %15, align 8
  %121 = lshr i64 %120, 3
  %122 = add i64 %119, %121
  %123 = add i64 %122, 58
  %124 = xor i64 %117, %123
  store i64 %124, i64* %15, align 8
  br label %125

125:                                              ; preds = %116, %87
  %126 = load i32*, i32** %12, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %148

128:                                              ; preds = %125
  br label %129

129:                                              ; preds = %136, %128
  %130 = load i32*, i32** %12, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %12, align 8
  %132 = load i32, i32* %130, align 4
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %16, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %129
  %137 = load i64, i64* %15, align 8
  %138 = load i64, i64* %15, align 8
  %139 = shl i64 %138, 5
  %140 = load i64, i64* %15, align 8
  %141 = lshr i64 %140, 3
  %142 = add i64 %139, %141
  %143 = load i8, i8* %16, align 1
  %144 = sext i8 %143 to i64
  %145 = add i64 %142, %144
  %146 = xor i64 %137, %145
  store i64 %146, i64* %15, align 8
  br label %129

147:                                              ; preds = %129
  br label %148

148:                                              ; preds = %147, %125
  %149 = load i64, i64* %15, align 8
  %150 = load i64, i64* %15, align 8
  %151 = shl i64 %150, 5
  %152 = load i64, i64* %15, align 8
  %153 = lshr i64 %152, 3
  %154 = add i64 %151, %153
  %155 = xor i64 %149, %154
  store i64 %155, i64* %15, align 8
  %156 = load i32*, i32** %13, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %186

158:                                              ; preds = %148
  br label %159

159:                                              ; preds = %166, %158
  %160 = load i32*, i32** %13, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %13, align 8
  %162 = load i32, i32* %160, align 4
  %163 = trunc i32 %162 to i8
  store i8 %163, i8* %16, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %159
  %167 = load i64, i64* %15, align 8
  %168 = load i64, i64* %15, align 8
  %169 = shl i64 %168, 5
  %170 = load i64, i64* %15, align 8
  %171 = lshr i64 %170, 3
  %172 = add i64 %169, %171
  %173 = load i8, i8* %16, align 1
  %174 = sext i8 %173 to i64
  %175 = add i64 %172, %174
  %176 = xor i64 %167, %175
  store i64 %176, i64* %15, align 8
  br label %159

177:                                              ; preds = %159
  %178 = load i64, i64* %15, align 8
  %179 = load i64, i64* %15, align 8
  %180 = shl i64 %179, 5
  %181 = load i64, i64* %15, align 8
  %182 = lshr i64 %181, 3
  %183 = add i64 %180, %182
  %184 = add i64 %183, 58
  %185 = xor i64 %178, %184
  store i64 %185, i64* %15, align 8
  br label %186

186:                                              ; preds = %177, %148
  %187 = load i32*, i32** %14, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %209

189:                                              ; preds = %186
  br label %190

190:                                              ; preds = %197, %189
  %191 = load i32*, i32** %14, align 8
  %192 = getelementptr inbounds i32, i32* %191, i32 1
  store i32* %192, i32** %14, align 8
  %193 = load i32, i32* %191, align 4
  %194 = trunc i32 %193 to i8
  store i8 %194, i8* %16, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %208

197:                                              ; preds = %190
  %198 = load i64, i64* %15, align 8
  %199 = load i64, i64* %15, align 8
  %200 = shl i64 %199, 5
  %201 = load i64, i64* %15, align 8
  %202 = lshr i64 %201, 3
  %203 = add i64 %200, %202
  %204 = load i8, i8* %16, align 1
  %205 = sext i8 %204 to i64
  %206 = add i64 %203, %205
  %207 = xor i64 %198, %206
  store i64 %207, i64* %15, align 8
  br label %190

208:                                              ; preds = %190
  br label %209

209:                                              ; preds = %208, %186
  %210 = load i64, i64* %15, align 8
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = urem i64 %210, %213
  ret i64 %214
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
