; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/resampler/extr_soxr.c_Resample.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/resampler/extr_soxr.c_Resample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_21__, %struct.TYPE_25__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { double }
%struct.TYPE_25__ = type { double, i64, i32*, i32*, i32* }
%struct.TYPE_26__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Using '%s' engine\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_26__* (%struct.TYPE_24__*, %struct.TYPE_26__*)* @Resample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_26__* @Resample(%struct.TYPE_24__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca double, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  store %struct.TYPE_25__* %18, %struct.TYPE_25__** %6, align 8
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %149

26:                                               ; preds = %2
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %9, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %10, align 8
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load double, double* %30, align 8
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sitofp i64 %36 to double
  %38 = fdiv double %31, %37
  store double %38, double* %11, align 8
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load double, double* %11, align 8
  %43 = call i64 @SoXR_GetOutLen(i32 %41, double %42)
  store i64 %43, i64* %12, align 8
  %44 = load double, double* %11, align 8
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 0
  %47 = load double, double* %46, align 8
  %48 = fcmp une double %44, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %26
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = load double, double* %11, align 8
  %54 = fdiv double 1.000000e+00, %53
  %55 = fptosi double %54 to i32
  %56 = load i64, i64* %12, align 8
  %57 = call i32 @soxr_set_io_ratio(i32* %52, i32 %55, i64 %56)
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %8, align 8
  br label %71

61:                                               ; preds = %26
  %62 = load double, double* %11, align 8
  %63 = fcmp oeq double %62, 1.000000e+00
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  store i32* null, i32** %8, align 8
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_26__* %65, %struct.TYPE_26__** %10, align 8
  br label %70

66:                                               ; preds = %61
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %8, align 8
  br label %70

70:                                               ; preds = %66, %64
  br label %71

71:                                               ; preds = %70, %49
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %104

76:                                               ; preds = %71
  %77 = load i32*, i32** %8, align 8
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %77, %80
  br i1 %81, label %82, label %104

82:                                               ; preds = %76
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %82
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call %struct.TYPE_26__* @SoXR_Resample(%struct.TYPE_24__* %88, i32* %91, %struct.TYPE_26__* null, i64 %94)
  store %struct.TYPE_26__* %95, %struct.TYPE_26__** %9, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %87
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = call i32 @soxr_engine(i32* %100)
  %102 = call i32 @msg_Dbg(%struct.TYPE_24__* %99, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %98, %87
  br label %104

104:                                              ; preds = %103, %82, %76, %71
  %105 = load i32*, i32** %8, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %122

107:                                              ; preds = %104
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %109 = icmp ne %struct.TYPE_26__* %108, null
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %114 = load i32*, i32** %8, align 8
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %116 = load i64, i64* %12, align 8
  %117 = call %struct.TYPE_26__* @SoXR_Resample(%struct.TYPE_24__* %113, i32* %114, %struct.TYPE_26__* %115, i64 %116)
  store %struct.TYPE_26__* %117, %struct.TYPE_26__** %10, align 8
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %119 = icmp ne %struct.TYPE_26__* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %107
  br label %172

121:                                              ; preds = %107
  br label %122

122:                                              ; preds = %121, %104
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %124 = icmp ne %struct.TYPE_26__* %123, null
  br i1 %124, label %125, label %144

125:                                              ; preds = %122
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = add i32 %128, %131
  store i32 %132, i32* %13, align 4
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %134 = call i32 @block_ChainAppend(%struct.TYPE_26__** %9, %struct.TYPE_26__* %133)
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %136 = call %struct.TYPE_26__* @block_ChainGather(%struct.TYPE_26__* %135)
  store %struct.TYPE_26__* %136, %struct.TYPE_26__** %10, align 8
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %138 = icmp ne %struct.TYPE_26__* %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %125
  br label %172

140:                                              ; preds = %125
  %141 = load i32, i32* %13, align 4
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  br label %144

144:                                              ; preds = %140, %122
  %145 = load i32, i32* %7, align 4
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  store %struct.TYPE_26__* %148, %struct.TYPE_26__** %3, align 8
  br label %175

149:                                              ; preds = %2
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 0
  %155 = load double, double* %154, align 8
  %156 = call i64 @SoXR_GetOutLen(i32 %152, double %155)
  store i64 %156, i64* %14, align 8
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %162 = load i64, i64* %14, align 8
  %163 = call %struct.TYPE_26__* @SoXR_Resample(%struct.TYPE_24__* %157, i32* %160, %struct.TYPE_26__* %161, i64 %162)
  store %struct.TYPE_26__* %163, %struct.TYPE_26__** %15, align 8
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %165 = icmp ne %struct.TYPE_26__* %164, null
  br i1 %165, label %166, label %170

166:                                              ; preds = %149
  %167 = load i32, i32* %7, align 4
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  br label %170

170:                                              ; preds = %166, %149
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  store %struct.TYPE_26__* %171, %struct.TYPE_26__** %3, align 8
  br label %175

172:                                              ; preds = %139, %120
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %174 = call i32 @block_Release(%struct.TYPE_26__* %173)
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %3, align 8
  br label %175

175:                                              ; preds = %172, %170, %144
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  ret %struct.TYPE_26__* %176
}

declare dso_local i64 @SoXR_GetOutLen(i32, double) #1

declare dso_local i32 @soxr_set_io_ratio(i32*, i32, i64) #1

declare dso_local %struct.TYPE_26__* @SoXR_Resample(%struct.TYPE_24__*, i32*, %struct.TYPE_26__*, i64) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_24__*, i8*, i32) #1

declare dso_local i32 @soxr_engine(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @block_ChainAppend(%struct.TYPE_26__**, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @block_ChainGather(%struct.TYPE_26__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
