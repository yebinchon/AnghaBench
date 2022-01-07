; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_adpcm.c_DecodeBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_adpcm.c_DecodeBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64, i64, i64, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i32, i32, i32 }

@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* (%struct.TYPE_18__*, %struct.TYPE_20__**)* @DecodeBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @DecodeBlock(%struct.TYPE_18__* %0, %struct.TYPE_20__** %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_20__**, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_20__** %1, %struct.TYPE_20__*** %5, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_19__* %11, %struct.TYPE_19__** %6, align 8
  %12 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %14 = icmp ne %struct.TYPE_20__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %195

16:                                               ; preds = %2
  %17 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %7, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %23 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %16
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = call i32 @Flush(%struct.TYPE_18__* %28)
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %191

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %16
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VLC_TICK_INVALID, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 3
  %50 = call i64 @date_Get(i32* %49)
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %44
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @date_Set(i32* %54, i64 %57)
  br label %67

59:                                               ; preds = %44, %38
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 3
  %62 = call i64 @date_Get(i32* %61)
  %63 = load i64, i64* @VLC_TICK_INVALID, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %191

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %52
  %68 = load i64, i64* @VLC_TICK_INVALID, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp sge i64 %73, %76
  br i1 %77, label %78, label %190

78:                                               ; preds = %67
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %80 = call i64 @decoder_UpdateAudioFormat(%struct.TYPE_18__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %191

83:                                               ; preds = %78
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.TYPE_20__* @decoder_NewAudioBuffer(%struct.TYPE_18__* %84, i32 %87)
  store %struct.TYPE_20__* %88, %struct.TYPE_20__** %8, align 8
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %90 = icmp eq %struct.TYPE_20__* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %191

92:                                               ; preds = %83
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 3
  %95 = call i64 @date_Get(i32* %94)
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @date_Increment(i32* %99, i32 %102)
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %103, %106
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 3
  store i64 %107, i64* %109, align 8
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  switch i32 %112, label %173 [
    i32 130, label %113
    i32 129, label %123
    i32 128, label %133
    i32 132, label %143
    i32 133, label %153
    i32 131, label %163
  ]

113:                                              ; preds = %92
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to i32*
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @DecodeAdpcmImaQT(%struct.TYPE_18__* %114, i32* %118, i64 %121)
  br label %174

123:                                              ; preds = %92
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to i32*
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @DecodeAdpcmImaWav(%struct.TYPE_18__* %124, i32* %128, i64 %131)
  br label %174

133:                                              ; preds = %92
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = inttoptr i64 %137 to i32*
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @DecodeAdpcmMs(%struct.TYPE_18__* %134, i32* %138, i64 %141)
  br label %174

143:                                              ; preds = %92
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = inttoptr i64 %147 to i32*
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @DecodeAdpcmDk4(%struct.TYPE_18__* %144, i32* %148, i64 %151)
  br label %174

153:                                              ; preds = %92
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = inttoptr i64 %157 to i32*
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @DecodeAdpcmDk3(%struct.TYPE_18__* %154, i32* %158, i64 %161)
  br label %174

163:                                              ; preds = %92
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = inttoptr i64 %167 to i32*
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @DecodeAdpcmEA(%struct.TYPE_18__* %164, i32* %168, i64 %171)
  br label %173

173:                                              ; preds = %92, %163
  br label %174

174:                                              ; preds = %173, %153, %143, %133, %123, %113
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %180, %177
  store i64 %181, i64* %179, align 8
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = sub nsw i64 %187, %184
  store i64 %188, i64* %186, align 8
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_20__* %189, %struct.TYPE_20__** %3, align 8
  br label %195

190:                                              ; preds = %67
  br label %191

191:                                              ; preds = %190, %91, %82, %65, %36
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %193 = call i32 @block_Release(%struct.TYPE_20__* %192)
  %194 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %194, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %195

195:                                              ; preds = %191, %174, %15
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  ret %struct.TYPE_20__* %196
}

declare dso_local i32 @Flush(%struct.TYPE_18__*) #1

declare dso_local i64 @date_Get(i32*) #1

declare dso_local i32 @date_Set(i32*, i64) #1

declare dso_local i64 @decoder_UpdateAudioFormat(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_20__* @decoder_NewAudioBuffer(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @date_Increment(i32*, i32) #1

declare dso_local i32 @DecodeAdpcmImaQT(%struct.TYPE_18__*, i32*, i64) #1

declare dso_local i32 @DecodeAdpcmImaWav(%struct.TYPE_18__*, i32*, i64) #1

declare dso_local i32 @DecodeAdpcmMs(%struct.TYPE_18__*, i32*, i64) #1

declare dso_local i32 @DecodeAdpcmDk4(%struct.TYPE_18__*, i32*, i64) #1

declare dso_local i32 @DecodeAdpcmDk3(%struct.TYPE_18__*, i32*, i64) #1

declare dso_local i32 @DecodeAdpcmEA(%struct.TYPE_18__*, i32*, i64) #1

declare dso_local i32 @block_Release(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
