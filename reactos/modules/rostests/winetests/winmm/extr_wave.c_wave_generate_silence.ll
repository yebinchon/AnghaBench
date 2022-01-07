; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winmm/extr_wave.c_wave_generate_silence.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winmm/extr_wave.c_wave_generate_silence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%union.anon = type { float }

@WAVE_FORMAT_PCM = common dso_local global i64 0, align 8
@WAVE_FORMAT_EXTENSIBLE = common dso_local global i64 0, align 8
@KSDATAFORMAT_SUBTYPE_PCM = common dso_local global i32 0, align 4
@KSDATAFORMAT_SUBTYPE_IEEE_FLOAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, double, i32*)* @wave_generate_silence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @wave_generate_silence(%struct.TYPE_5__* %0, double %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca %union.anon, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store double %1, double* %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = bitcast %struct.TYPE_5__* %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %12, align 8
  %16 = load double, double* %5, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load double, double* %18, align 8
  %20 = fmul double %16, %19
  %21 = fptosi double %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %22, %25
  %27 = load i32*, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  %28 = call i32 (...) @GetProcessHeap()
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @HeapAlloc(i32 %28, i32 0, i32 %30)
  store i8* %31, i8** %10, align 8
  store i8* %31, i8** %11, align 8
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %203, %3
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %206

36:                                               ; preds = %32
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 8
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %51, %41
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %11, align 8
  store i8 -128, i8* %49, align 1
  br label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %42

54:                                               ; preds = %42
  br label %202

55:                                               ; preds = %36
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 16
  br i1 %59, label %60, label %78

60:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %74, %60
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = load i8*, i8** %11, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  store i8 0, i8* %69, align 1
  %70 = load i8*, i8** %11, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  store i8 0, i8* %71, align 1
  %72 = load i8*, i8** %11, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  store i8* %73, i8** %11, align 8
  br label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %61

77:                                               ; preds = %61
  br label %201

78:                                               ; preds = %55
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 24
  br i1 %82, label %83, label %103

83:                                               ; preds = %78
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %99, %83
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %84
  %91 = load i8*, i8** %11, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  store i8 0, i8* %92, align 1
  %93 = load i8*, i8** %11, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  store i8 0, i8* %94, align 1
  %95 = load i8*, i8** %11, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 2
  store i8 0, i8* %96, align 1
  %97 = load i8*, i8** %11, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 3
  store i8* %98, i8** %11, align 8
  br label %99

99:                                               ; preds = %90
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %84

102:                                              ; preds = %84
  br label %200

103:                                              ; preds = %78
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 32
  br i1 %107, label %108, label %147

108:                                              ; preds = %103
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @WAVE_FORMAT_PCM, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %125, label %114

114:                                              ; preds = %108
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @WAVE_FORMAT_EXTENSIBLE, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %147

120:                                              ; preds = %114
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = call i64 @IsEqualGUID(i32* %122, i32* @KSDATAFORMAT_SUBTYPE_PCM)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %147

125:                                              ; preds = %120, %108
  store i32 0, i32* %8, align 4
  br label %126

126:                                              ; preds = %143, %125
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %146

132:                                              ; preds = %126
  %133 = load i8*, i8** %11, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 0
  store i8 0, i8* %134, align 1
  %135 = load i8*, i8** %11, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  store i8 0, i8* %136, align 1
  %137 = load i8*, i8** %11, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 2
  store i8 0, i8* %138, align 1
  %139 = load i8*, i8** %11, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 3
  store i8 0, i8* %140, align 1
  %141 = load i8*, i8** %11, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 4
  store i8* %142, i8** %11, align 8
  br label %143

143:                                              ; preds = %132
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %126

146:                                              ; preds = %126
  br label %199

147:                                              ; preds = %120, %114, %103
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 32
  br i1 %151, label %152, label %198

152:                                              ; preds = %147
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @WAVE_FORMAT_EXTENSIBLE, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %198

158:                                              ; preds = %152
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = call i64 @IsEqualGUID(i32* %160, i32* @KSDATAFORMAT_SUBTYPE_IEEE_FLOAT)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %198

163:                                              ; preds = %158
  %164 = bitcast %union.anon* %13 to float*
  store float 0.000000e+00, float* %164, align 4
  store i32 0, i32* %8, align 4
  br label %165

165:                                              ; preds = %194, %163
  %166 = load i32, i32* %8, align 4
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = icmp slt i32 %166, %169
  br i1 %170, label %171, label %197

171:                                              ; preds = %165
  %172 = bitcast %union.anon* %13 to [4 x i8]*
  %173 = getelementptr inbounds [4 x i8], [4 x i8]* %172, i64 0, i64 0
  %174 = load i8, i8* %173, align 4
  %175 = load i8*, i8** %11, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 0
  store i8 %174, i8* %176, align 1
  %177 = bitcast %union.anon* %13 to [4 x i8]*
  %178 = getelementptr inbounds [4 x i8], [4 x i8]* %177, i64 0, i64 1
  %179 = load i8, i8* %178, align 1
  %180 = load i8*, i8** %11, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 1
  store i8 %179, i8* %181, align 1
  %182 = bitcast %union.anon* %13 to [4 x i8]*
  %183 = getelementptr inbounds [4 x i8], [4 x i8]* %182, i64 0, i64 2
  %184 = load i8, i8* %183, align 2
  %185 = load i8*, i8** %11, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 2
  store i8 %184, i8* %186, align 1
  %187 = bitcast %union.anon* %13 to [4 x i8]*
  %188 = getelementptr inbounds [4 x i8], [4 x i8]* %187, i64 0, i64 3
  %189 = load i8, i8* %188, align 1
  %190 = load i8*, i8** %11, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 3
  store i8 %189, i8* %191, align 1
  %192 = load i8*, i8** %11, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 4
  store i8* %193, i8** %11, align 8
  br label %194

194:                                              ; preds = %171
  %195 = load i32, i32* %8, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %8, align 4
  br label %165

197:                                              ; preds = %165
  br label %198

198:                                              ; preds = %197, %158, %152, %147
  br label %199

199:                                              ; preds = %198, %146
  br label %200

200:                                              ; preds = %199, %102
  br label %201

201:                                              ; preds = %200, %77
  br label %202

202:                                              ; preds = %201, %54
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %7, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %7, align 4
  br label %32

206:                                              ; preds = %32
  %207 = load i8*, i8** %10, align 8
  ret i8* %207
}

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @IsEqualGUID(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
