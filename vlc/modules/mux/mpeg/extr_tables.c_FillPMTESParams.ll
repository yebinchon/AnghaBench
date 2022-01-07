; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_tables.c_FillPMTESParams.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_tables.c_FillPMTESParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@PES_EXTENDED_STREAM_ID = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@TS_MUX_STANDARD_ATSC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FillPMTESParams(i32 %0, %struct.TYPE_17__* %1, %struct.TYPE_15__* %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %179 [
    i32 135, label %13
    i32 140, label %13
    i32 142, label %13
    i32 137, label %18
    i32 145, label %28
    i32 146, label %33
    i32 147, label %38
    i32 148, label %38
    i32 128, label %38
    i32 129, label %38
    i32 130, label %38
    i32 153, label %38
    i32 154, label %38
    i32 155, label %38
    i32 143, label %38
    i32 156, label %43
    i32 144, label %51
    i32 136, label %69
    i32 141, label %69
    i32 139, label %69
    i32 157, label %81
    i32 150, label %94
    i32 134, label %99
    i32 149, label %112
    i32 152, label %125
    i32 138, label %137
    i32 133, label %147
    i32 132, label %152
    i32 151, label %162
    i32 131, label %174
  ]

13:                                               ; preds = %4, %4, %4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  store i32 2, i32* %15, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  store i32 224, i32* %17, align 4
  br label %181

18:                                               ; preds = %4
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  store i32 16, i32* %20, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  store i32 224, i32* %22, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %181

28:                                               ; preds = %4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  store i32 36, i32* %30, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  store i32 224, i32* %32, align 4
  br label %181

33:                                               ; preds = %4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  store i32 27, i32* %35, align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  store i32 224, i32* %37, align 4
  br label %181

38:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  store i32 160, i32* %40, align 4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  store i32 160, i32* %42, align 4
  br label %181

43:                                               ; preds = %4
  %44 = load i32, i32* @PES_EXTENDED_STREAM_ID, align 4
  %45 = shl i32 %44, 8
  %46 = or i32 %45, 96
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  store i32 209, i32* %50, align 4
  br label %181

51:                                               ; preds = %4
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @j2k_is_valid_framerate(i32 %55, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %51
  %63 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %63, i32* %5, align 4
  br label %183

64:                                               ; preds = %51
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  store i32 33, i32* %66, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  store i32 189, i32* %68, align 4
  br label %181

69:                                               ; preds = %4, %4, %4
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp sge i32 %73, 32000
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 3, i32 4
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  store i32 192, i32* %80, align 4
  br label %181

81:                                               ; preds = %4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  store i32 189, i32* %83, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @TS_MUX_STANDARD_ATSC, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  store i32 129, i32* %89, align 4
  br label %93

90:                                               ; preds = %81
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  store i32 6, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %87
  br label %181

94:                                               ; preds = %4
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  store i32 131, i32* %96, align 4
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  store i32 189, i32* %98, align 4
  br label %181

99:                                               ; preds = %4
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp sgt i32 %103, 8
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %106, i32* %5, align 4
  br label %183

107:                                              ; preds = %99
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  store i32 189, i32* %109, align 4
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  store i32 6, i32* %111, align 4
  br label %181

112:                                              ; preds = %4
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  store i32 189, i32* %114, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @TS_MUX_STANDARD_ATSC, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  store i32 135, i32* %120, align 4
  br label %124

121:                                              ; preds = %112
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  store i32 6, i32* %123, align 4
  br label %124

124:                                              ; preds = %121, %118
  br label %181

125:                                              ; preds = %4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @TS_MUX_STANDARD_ATSC, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %130, i32* %5, align 4
  br label %183

131:                                              ; preds = %125
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  store i32 6, i32* %133, align 4
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  store i32 189, i32* %135, align 4
  br label %136

136:                                              ; preds = %131
  br label %181

137:                                              ; preds = %4
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  store i32 15, i32* %139, align 4
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  store i32 192, i32* %141, align 4
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  br label %181

147:                                              ; preds = %4
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  store i32 130, i32* %149, align 4
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  store i32 189, i32* %151, align 4
  br label %181

152:                                              ; preds = %4
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  store i32 18, i32* %154, align 4
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  store i32 250, i32* %156, align 4
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  br label %181

162:                                              ; preds = %4
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  store i32 6, i32* %164, align 4
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  store i32 189, i32* %173, align 4
  br label %181

174:                                              ; preds = %4
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 0
  store i32 6, i32* %176, align 4
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  store i32 189, i32* %178, align 4
  br label %181

179:                                              ; preds = %4
  %180 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %180, i32* %5, align 4
  br label %183

181:                                              ; preds = %174, %162, %152, %147, %137, %136, %124, %107, %94, %93, %69, %64, %43, %38, %33, %28, %18, %13
  %182 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %182, i32* %5, align 4
  br label %183

183:                                              ; preds = %181, %179, %129, %105, %62
  %184 = load i32, i32* %5, align 4
  ret i32 %184
}

declare dso_local i32 @j2k_is_valid_framerate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
