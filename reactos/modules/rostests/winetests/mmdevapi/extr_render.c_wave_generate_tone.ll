; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_render.c_wave_generate_tone.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_render.c_wave_generate_tone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i64, i32, i32 }

@wave_generate_tone.phase = internal global double 0.000000e+00, align 8
@winetest_interactive = common dso_local global i32 0, align 4
@AUDCLNT_BUFFERFLAGS_SILENT = common dso_local global i32 0, align 4
@WAVE_FORMAT_EXTENSIBLE = common dso_local global i64 0, align 8
@KSDATAFORMAT_SUBTYPE_IEEE_FLOAT = common dso_local global i32 0, align 4
@PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @wave_generate_tone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wave_generate_tone(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %8, align 8
  %16 = load i32, i32* @winetest_interactive, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @AUDCLNT_BUFFERFLAGS_SILENT, align 4
  store i32 %19, i32* %4, align 4
  br label %145

20:                                               ; preds = %3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @WAVE_FORMAT_EXTENSIBLE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %20
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = call i64 @IsEqualGUID(i32* %34, i32* @KSDATAFORMAT_SUBTYPE_IEEE_FLOAT)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %32, %20
  %38 = phi i1 [ false, %20 ], [ %36, %32 ]
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i64 32, i64 16
  %41 = icmp ne i64 %25, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @AUDCLNT_BUFFERFLAGS_SILENT, align 4
  store i32 %43, i32* %4, align 4
  br label %145

44:                                               ; preds = %37
  %45 = load double, double* @wave_generate_tone.phase, align 8
  store double %45, double* %11, align 8
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %117, %44
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %47, %51
  br i1 %52, label %53, label %128

53:                                               ; preds = %46
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %113, %53
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %116

58:                                               ; preds = %54
  %59 = load i32, i32* @PI, align 4
  %60 = mul nsw i32 2, %59
  %61 = sitofp i32 %60 to double
  %62 = load i32, i32* %10, align 4
  %63 = sitofp i32 %62 to double
  %64 = fmul double 4.400000e+02, %63
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = sitofp i32 %68 to double
  %70 = fdiv double %64, %69
  %71 = load double, double* %11, align 8
  %72 = fadd double %70, %71
  %73 = fmul double %61, %72
  %74 = fptosi double %73 to i32
  %75 = call double @sin(i32 %74)
  store double %75, double* %12, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 16
  br i1 %80, label %81, label %97

81:                                               ; preds = %58
  %82 = load double, double* %12, align 8
  %83 = fmul double %82, 3.276790e+04
  %84 = fptosi double %83 to i16
  %85 = load i32*, i32** %6, align 8
  %86 = bitcast i32* %85 to i16*
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = mul nsw i32 %88, %92
  %94 = add nsw i32 %87, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i16, i16* %86, i64 %95
  store i16 %84, i16* %96, align 2
  br label %112

97:                                               ; preds = %58
  %98 = load double, double* %12, align 8
  %99 = fptrunc double %98 to float
  %100 = load i32*, i32** %6, align 8
  %101 = bitcast i32* %100 to float*
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 %103, %107
  %109 = add nsw i32 %102, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %101, i64 %110
  store float %99, float* %111, align 4
  br label %112

112:                                              ; preds = %97, %81
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %54

116:                                              ; preds = %54
  br label %117

117:                                              ; preds = %116
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = sitofp i32 %121 to double
  %123 = fdiv double 5.000000e-01, %122
  %124 = load double, double* %11, align 8
  %125 = fadd double %124, %123
  store double %125, double* %11, align 8
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %46

128:                                              ; preds = %46
  %129 = load i32, i32* %7, align 4
  %130 = sitofp i32 %129 to double
  %131 = fmul double 4.400000e+02, %130
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = sitofp i32 %135 to double
  %137 = fdiv double %131, %136
  %138 = load double, double* @wave_generate_tone.phase, align 8
  %139 = fadd double %138, %137
  store double %139, double* @wave_generate_tone.phase, align 8
  %140 = load double, double* @wave_generate_tone.phase, align 8
  %141 = call i64 @floor(double %140)
  %142 = sitofp i64 %141 to double
  %143 = load double, double* @wave_generate_tone.phase, align 8
  %144 = fsub double %143, %142
  store double %144, double* @wave_generate_tone.phase, align 8
  store i32 0, i32* %4, align 4
  br label %145

145:                                              ; preds = %128, %42, %18
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i64 @IsEqualGUID(i32*, i32*) #1

declare dso_local double @sin(i32) #1

declare dso_local i64 @floor(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
