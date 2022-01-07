; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_GetMoofTrackDuration.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_GetMoofTrackDuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_18__*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { i32, i64, i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"traf\00", align 1
@ATOM_traf = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"tfhd\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"trun\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"mdia/mdhd\00", align 1
@ATOM_trun = common dso_local global i64 0, align 8
@MP4_TRUN_SAMPLE_DURATION = common dso_local global i32 0, align 4
@MP4_TFHD_DFLT_SAMPLE_DURATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_18__*, i32, i64*)* @GetMoofTrackDuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetMoofTrackDuration(%struct.TYPE_18__* %0, %struct.TYPE_18__* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_19__*, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %22 = icmp ne %struct.TYPE_18__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %25 = icmp ne %struct.TYPE_18__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %4
  store i32 0, i32* %5, align 4
  br label %192

27:                                               ; preds = %23
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %29 = call %struct.TYPE_18__* @MP4_BoxGet(%struct.TYPE_18__* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %10, align 8
  br label %30

30:                                               ; preds = %101, %60, %39, %27
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %32 = icmp ne %struct.TYPE_18__* %31, null
  br i1 %32, label %33, label %191

33:                                               ; preds = %30
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ATOM_traf, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  store %struct.TYPE_18__* %42, %struct.TYPE_18__** %10, align 8
  br label %30

43:                                               ; preds = %33
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %45 = call %struct.TYPE_18__* @MP4_BoxGet(%struct.TYPE_18__* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_18__* %45, %struct.TYPE_18__** %11, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %47 = call %struct.TYPE_18__* @MP4_BoxGet(%struct.TYPE_18__* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_18__* %47, %struct.TYPE_18__** %12, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %49 = icmp ne %struct.TYPE_18__* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %52 = icmp ne %struct.TYPE_18__* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %56 = call %struct.TYPE_15__* @BOXDATA(%struct.TYPE_18__* %55)
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %54, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %53, %50, %43
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  store %struct.TYPE_18__* %63, %struct.TYPE_18__** %10, align 8
  br label %30

64:                                               ; preds = %53
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %67 = call %struct.TYPE_15__* @BOXDATA(%struct.TYPE_18__* %66)
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call %struct.TYPE_18__* @MP4_GetTrexByTrackID(%struct.TYPE_18__* %65, i32 %69)
  store %struct.TYPE_18__* %70, %struct.TYPE_18__** %15, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %72 = icmp ne %struct.TYPE_18__* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %64
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %75 = call %struct.TYPE_15__* @BOXDATA(%struct.TYPE_18__* %74)
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %14, align 8
  br label %78

78:                                               ; preds = %73, %64
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %81 = call %struct.TYPE_15__* @BOXDATA(%struct.TYPE_18__* %80)
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call %struct.TYPE_18__* @MP4_GetTrakByTrackID(%struct.TYPE_18__* %79, i32 %83)
  store %struct.TYPE_18__* %84, %struct.TYPE_18__** %16, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %86 = icmp ne %struct.TYPE_18__* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %78
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %89 = call %struct.TYPE_18__* @MP4_BoxGet(%struct.TYPE_18__* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_18__* %89, %struct.TYPE_18__** %17, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %91 = icmp ne %struct.TYPE_18__* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %94 = call %struct.TYPE_15__* @BOXDATA(%struct.TYPE_18__* %93)
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %13, align 8
  br label %97

97:                                               ; preds = %92, %87
  br label %98

98:                                               ; preds = %97, %78
  %99 = load i64, i64* %13, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %103, align 8
  store %struct.TYPE_18__* %104, %struct.TYPE_18__** %10, align 8
  br label %30

105:                                              ; preds = %98
  store i64 0, i64* %18, align 8
  br label %106

106:                                              ; preds = %184, %120, %105
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %108 = icmp ne %struct.TYPE_18__* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %111 = icmp ne %struct.TYPE_18__* %110, null
  br label %112

112:                                              ; preds = %109, %106
  %113 = phi i1 [ false, %106 ], [ %111, %109 ]
  br i1 %113, label %114, label %188

114:                                              ; preds = %112
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @ATOM_trun, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %122, align 8
  store %struct.TYPE_18__* %123, %struct.TYPE_18__** %12, align 8
  br label %106

124:                                              ; preds = %114
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %127, align 8
  store %struct.TYPE_19__* %128, %struct.TYPE_19__** %19, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @MP4_TRUN_SAMPLE_DURATION, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %156

135:                                              ; preds = %124
  store i64 0, i64* %20, align 8
  br label %136

136:                                              ; preds = %152, %135
  %137 = load i64, i64* %20, align 8
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ult i64 %137, %140
  br i1 %141, label %142, label %155

142:                                              ; preds = %136
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %144, align 8
  %146 = load i64, i64* %20, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %18, align 8
  %151 = add i64 %150, %149
  store i64 %151, i64* %18, align 8
  br label %152

152:                                              ; preds = %142
  %153 = load i64, i64* %20, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %20, align 8
  br label %136

155:                                              ; preds = %136
  br label %184

156:                                              ; preds = %124
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %158 = call %struct.TYPE_15__* @BOXDATA(%struct.TYPE_18__* %157)
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @MP4_TFHD_DFLT_SAMPLE_DURATION, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %156
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %169 = call %struct.TYPE_15__* @BOXDATA(%struct.TYPE_18__* %168)
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = mul i64 %167, %171
  %173 = load i64, i64* %18, align 8
  %174 = add i64 %173, %172
  store i64 %174, i64* %18, align 8
  br label %183

175:                                              ; preds = %156
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* %14, align 8
  %180 = mul i64 %178, %179
  %181 = load i64, i64* %18, align 8
  %182 = add i64 %181, %180
  store i64 %182, i64* %18, align 8
  br label %183

183:                                              ; preds = %175, %164
  br label %184

184:                                              ; preds = %183, %155
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %186, align 8
  store %struct.TYPE_18__* %187, %struct.TYPE_18__** %12, align 8
  br label %106

188:                                              ; preds = %112
  %189 = load i64, i64* %18, align 8
  %190 = load i64*, i64** %9, align 8
  store i64 %189, i64* %190, align 8
  br label %191

191:                                              ; preds = %188, %30
  store i32 1, i32* %5, align 4
  br label %192

192:                                              ; preds = %191, %26
  %193 = load i32, i32* %5, align 4
  ret i32 %193
}

declare dso_local %struct.TYPE_18__* @MP4_BoxGet(%struct.TYPE_18__*, i8*) #1

declare dso_local %struct.TYPE_15__* @BOXDATA(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @MP4_GetTrexByTrackID(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_18__* @MP4_GetTrakByTrackID(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
