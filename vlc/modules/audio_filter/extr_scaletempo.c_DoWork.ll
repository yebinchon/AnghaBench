; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/extr_scaletempo.c_DoWork.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/extr_scaletempo.c_DoWork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_22__ = type { i64, double, i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_23__ = type { i64, i64, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [51 x i8] c"%.3f scale, %.3f stride_in, %i stride_out rate: %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_23__* (%struct.TYPE_21__*, %struct.TYPE_23__*)* @DoWork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_23__* @DoWork(%struct.TYPE_21__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  store %struct.TYPE_22__* %14, %struct.TYPE_22__** %6, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_23__* %25, %struct.TYPE_23__** %3, align 8
  br label %184

26:                                               ; preds = %2
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sitofp i64 %31 to double
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sitofp i64 %35 to double
  %37 = fdiv double %32, %36
  store double %37, double* %7, align 8
  %38 = load double, double* %7, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 1
  %41 = load double, double* %40, align 8
  %42 = fcmp une double %38, %41
  br i1 %42, label %43, label %88

43:                                               ; preds = %26
  %44 = load double, double* %7, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 1
  store double %44, double* %46, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = sitofp i32 %49 to double
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 1
  %53 = load double, double* %52, align 8
  %54 = fmul double %50, %53
  %55 = fptosi double %54 to i32
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %60, %63
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 8
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 1
  %72 = load double, double* %71, align 8
  %73 = fptosi double %72 to i32
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = sdiv i32 %79, %82
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @msg_Dbg(%struct.TYPE_21__* %69, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %76, i32 %83, i64 %86)
  br label %88

88:                                               ; preds = %43, %26
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %8, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @calculate_output_buffer_size(%struct.TYPE_21__* %89, i64 %92)
  store i64 %93, i64* %9, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 5
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @fill_queue(%struct.TYPE_21__* %94, i32* %97, i64 %100, i64 0)
  store i64 %101, i64* %10, align 8
  %102 = load i64, i64* %9, align 8
  %103 = icmp ugt i64 %102, 0
  br i1 %103, label %104, label %180

104:                                              ; preds = %88
  %105 = load i64, i64* %9, align 8
  %106 = call %struct.TYPE_23__* @block_Alloc(i64 %105)
  store %struct.TYPE_23__* %106, %struct.TYPE_23__** %8, align 8
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %108 = icmp eq %struct.TYPE_23__* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %111 = call i32 @block_Release(%struct.TYPE_23__* %110)
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %3, align 8
  br label %184

112:                                              ; preds = %104
  store i64 0, i64* %11, align 8
  br label %113

113:                                              ; preds = %121, %112
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 6
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 7
  %119 = load i64, i64* %118, align 8
  %120 = icmp sge i64 %116, %119
  br i1 %120, label %121, label %147

121:                                              ; preds = %113
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 5
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* %11, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %11, align 8
  %132 = sub i64 %130, %131
  %133 = call i64 @transform_buffer(%struct.TYPE_21__* %122, i32* %127, i64 %132)
  %134 = load i64, i64* %11, align 8
  %135 = add i64 %134, %133
  store i64 %135, i64* %11, align 8
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 5
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %10, align 8
  %144 = call i64 @fill_queue(%struct.TYPE_21__* %136, i32* %139, i64 %142, i64 %143)
  %145 = load i64, i64* %10, align 8
  %146 = add i64 %145, %144
  store i64 %146, i64* %10, align 8
  br label %113

147:                                              ; preds = %113
  %148 = load i64, i64* %11, align 8
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  %151 = load i64, i64* %11, align 8
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = udiv i64 %151, %155
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 1
  store i64 %156, i64* %158, align 8
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 4
  store i32 %161, i32* %163, align 8
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 4
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @vlc_tick_from_samples(i64 %171, i32 %176)
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 8
  br label %180

180:                                              ; preds = %147, %88
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %182 = call i32 @block_Release(%struct.TYPE_23__* %181)
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_23__* %183, %struct.TYPE_23__** %3, align 8
  br label %184

184:                                              ; preds = %180, %109, %24
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  ret %struct.TYPE_23__* %185
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_21__*, i8*, i32, i32, i32, i64) #1

declare dso_local i64 @calculate_output_buffer_size(%struct.TYPE_21__*, i64) #1

declare dso_local i64 @fill_queue(%struct.TYPE_21__*, i32*, i64, i64) #1

declare dso_local %struct.TYPE_23__* @block_Alloc(i64) #1

declare dso_local i32 @block_Release(%struct.TYPE_23__*) #1

declare dso_local i64 @transform_buffer(%struct.TYPE_21__*, i32*, i64) #1

declare dso_local i32 @vlc_tick_from_samples(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
