; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_compute_codewords.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_compute_codewords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@NO_CODE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32, i64*)* @compute_codewords to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_codewords(%struct.TYPE_4__* %0, i32* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [32 x i64], align 16
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %12, align 4
  %17 = getelementptr inbounds [32 x i64], [32 x i64]* %13, i64 0, i64 0
  %18 = call i32 @memset(i64* %17, i32 0, i32 256)
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %33, %4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NO_CODE, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %36

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  br label %19

36:                                               ; preds = %31, %19
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* @TRUE, align 4
  store i32 %47, i32* %5, align 4
  br label %208

48:                                               ; preds = %36
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %12, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i64*, i64** %9, align 8
  %59 = call i32 @add_entry(%struct.TYPE_4__* %49, i32 0, i32 %50, i32 %51, i32 %57, i64* %58)
  store i32 1, i32* %10, align 4
  br label %60

60:                                               ; preds = %76, %48
  %61 = load i32, i32* %10, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp sle i32 %61, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %60
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 32, %69
  %71 = shl i32 1, %70
  %72 = zext i32 %71 to i64
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [32 x i64], [32 x i64]* %13, i64 0, i64 %74
  store i64 %72, i64* %75, align 8
  br label %76

76:                                               ; preds = %68
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %60

79:                                               ; preds = %60
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %203, %79
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %206

86:                                               ; preds = %82
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* @NO_CODE, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %203

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %109, %96
  %98 = load i32, i32* %15, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [32 x i64], [32 x i64]* %13, i64 0, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  %106 = xor i1 %105, true
  br label %107

107:                                              ; preds = %100, %97
  %108 = phi i1 [ false, %97 ], [ %106, %100 ]
  br i1 %108, label %109, label %112

109:                                              ; preds = %107
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %15, align 4
  br label %97

112:                                              ; preds = %107
  %113 = load i32, i32* %15, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, i32* @FALSE, align 4
  store i32 %116, i32* %5, align 4
  br label %208

117:                                              ; preds = %112
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [32 x i64], [32 x i64]* %13, i64 0, i64 %119
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %14, align 8
  %122 = load i32, i32* %15, align 4
  %123 = icmp sge i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = load i32, i32* %15, align 4
  %126 = icmp slt i32 %125, 32
  br label %127

127:                                              ; preds = %124, %117
  %128 = phi i1 [ false, %117 ], [ %126, %124 ]
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [32 x i64], [32 x i64]* %13, i64 0, i64 %132
  store i64 0, i64* %133, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %135 = load i64, i64* %14, align 8
  %136 = call i32 @bit_reverse(i64 %135)
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %12, align 4
  %140 = load i32*, i32** %7, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i64*, i64** %9, align 8
  %146 = call i32 @add_entry(%struct.TYPE_4__* %134, i32 %136, i32 %137, i32 %138, i32 %144, i64* %145)
  %147 = load i32, i32* %15, align 4
  %148 = load i32*, i32** %7, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %147, %152
  br i1 %153, label %154, label %202

154:                                              ; preds = %127
  %155 = load i32*, i32** %7, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = icmp sge i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %154
  %162 = load i32*, i32** %7, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = icmp slt i32 %166, 32
  br label %168

168:                                              ; preds = %161, %154
  %169 = phi i1 [ false, %154 ], [ %167, %161 ]
  %170 = zext i1 %169 to i32
  %171 = call i32 @assert(i32 %170)
  %172 = load i32*, i32** %7, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %16, align 4
  br label %177

177:                                              ; preds = %198, %168
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* %15, align 4
  %180 = icmp sgt i32 %178, %179
  br i1 %180, label %181, label %201

181:                                              ; preds = %177
  %182 = load i32, i32* %16, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [32 x i64], [32 x i64]* %13, i64 0, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %185, 0
  %187 = zext i1 %186 to i32
  %188 = call i32 @assert(i32 %187)
  %189 = load i64, i64* %14, align 8
  %190 = load i32, i32* %16, align 4
  %191 = sub nsw i32 32, %190
  %192 = shl i32 1, %191
  %193 = sext i32 %192 to i64
  %194 = add nsw i64 %189, %193
  %195 = load i32, i32* %16, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [32 x i64], [32 x i64]* %13, i64 0, i64 %196
  store i64 %194, i64* %197, align 8
  br label %198

198:                                              ; preds = %181
  %199 = load i32, i32* %16, align 4
  %200 = add nsw i32 %199, -1
  store i32 %200, i32* %16, align 4
  br label %177

201:                                              ; preds = %177
  br label %202

202:                                              ; preds = %201, %127
  br label %203

203:                                              ; preds = %202, %95
  %204 = load i32, i32* %10, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %10, align 4
  br label %82

206:                                              ; preds = %82
  %207 = load i32, i32* @TRUE, align 4
  store i32 %207, i32* %5, align 4
  br label %208

208:                                              ; preds = %206, %115, %40
  %209 = load i32, i32* %5, align 4
  ret i32 %209
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @add_entry(%struct.TYPE_4__*, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @bit_reverse(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
