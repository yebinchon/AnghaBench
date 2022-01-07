; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tcd.c_opj_tcd_free_tile.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tcd.c_opj_tcd_free_tile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__*, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, i32, i32, i32, i32, %struct.TYPE_15__*, i64, i64, i64, %struct.TYPE_15__*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_15__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @opj_tcd_free_tile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opj_tcd_free_tile(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca void (%struct.TYPE_15__*)*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %11, align 8
  store void (%struct.TYPE_15__*)* null, void (%struct.TYPE_15__*)** %14, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %16 = icmp ne %struct.TYPE_16__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %183

18:                                               ; preds = %1
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = icmp ne %struct.TYPE_14__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %183

24:                                               ; preds = %18
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store void (%struct.TYPE_15__*)* @opj_tcd_code_block_dec_deallocate, void (%struct.TYPE_15__*)** %14, align 8
  br label %31

30:                                               ; preds = %24
  store void (%struct.TYPE_15__*)* @opj_tcd_code_block_enc_deallocate, void (%struct.TYPE_15__*)** %14, align 8
  br label %31

31:                                               ; preds = %30, %29
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %7, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %38 = icmp ne %struct.TYPE_15__* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  br label %183

40:                                               ; preds = %31
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 6
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  store %struct.TYPE_15__* %43, %struct.TYPE_15__** %8, align 8
  store i64 0, i64* %3, align 8
  br label %44

44:                                               ; preds = %163, %40
  %45 = load i64, i64* %3, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br i1 %49, label %50, label %166

50:                                               ; preds = %44
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 10
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  store %struct.TYPE_15__* %53, %struct.TYPE_15__** %9, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %55 = icmp ne %struct.TYPE_15__* %54, null
  br i1 %55, label %56, label %133

56:                                               ; preds = %50
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sdiv i64 %59, 80
  store i64 %60, i64* %12, align 8
  store i64 0, i64* %4, align 8
  br label %61

61:                                               ; preds = %123, %56
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* %12, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %126

65:                                               ; preds = %61
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 11
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %67, align 8
  store %struct.TYPE_17__* %68, %struct.TYPE_17__** %10, align 8
  store i64 0, i64* %5, align 8
  br label %69

69:                                               ; preds = %117, %65
  %70 = load i64, i64* %5, align 8
  %71 = icmp slt i64 %70, 3
  br i1 %71, label %72, label %120

72:                                               ; preds = %69
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  store %struct.TYPE_15__* %75, %struct.TYPE_15__** %11, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %77 = icmp ne %struct.TYPE_15__* %76, null
  br i1 %77, label %78, label %114

78:                                               ; preds = %72
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = sdiv i64 %81, 80
  store i64 %82, i64* %13, align 8
  store i64 0, i64* %6, align 8
  br label %83

83:                                               ; preds = %104, %78
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* %13, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %107

87:                                               ; preds = %83
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @opj_tgt_destroy(i32 %90)
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 2
  store i32 0, i32* %93, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @opj_tgt_destroy(i32 %96)
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 3
  store i32 0, i32* %99, align 4
  %100 = load void (%struct.TYPE_15__*)*, void (%struct.TYPE_15__*)** %14, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  call void %100(%struct.TYPE_15__* %101)
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 1
  store %struct.TYPE_15__* %103, %struct.TYPE_15__** %11, align 8
  br label %104

104:                                              ; preds = %87
  %105 = load i64, i64* %6, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %6, align 8
  br label %83

107:                                              ; preds = %83
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = call i32 @opj_free(%struct.TYPE_15__* %110)
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %113, align 8
  br label %114

114:                                              ; preds = %107, %72
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 1
  store %struct.TYPE_17__* %116, %struct.TYPE_17__** %10, align 8
  br label %117

117:                                              ; preds = %114
  %118 = load i64, i64* %5, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %5, align 8
  br label %69

120:                                              ; preds = %69
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 1
  store %struct.TYPE_15__* %122, %struct.TYPE_15__** %9, align 8
  br label %123

123:                                              ; preds = %120
  %124 = load i64, i64* %4, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %4, align 8
  br label %61

126:                                              ; preds = %61
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 10
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = call i32 @opj_free(%struct.TYPE_15__* %129)
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 10
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %132, align 8
  br label %133

133:                                              ; preds = %126, %50
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 9
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %156

138:                                              ; preds = %133
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %138
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @opj_image_data_free(i32 %146)
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 4
  store i32 0, i32* %149, align 8
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 9
  store i64 0, i64* %151, align 8
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 8
  store i64 0, i64* %153, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 7
  store i64 0, i64* %155, align 8
  br label %156

156:                                              ; preds = %143, %138, %133
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @opj_image_data_free(i32 %159)
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 1
  store %struct.TYPE_15__* %162, %struct.TYPE_15__** %8, align 8
  br label %163

163:                                              ; preds = %156
  %164 = load i64, i64* %3, align 8
  %165 = add nsw i64 %164, 1
  store i64 %165, i64* %3, align 8
  br label %44

166:                                              ; preds = %44
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 6
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %168, align 8
  %170 = call i32 @opj_free(%struct.TYPE_15__* %169)
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 6
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %172, align 8
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %176, align 8
  %178 = call i32 @opj_free(%struct.TYPE_15__* %177)
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %182, align 8
  br label %183

183:                                              ; preds = %166, %39, %23, %17
  ret void
}

declare dso_local void @opj_tcd_code_block_dec_deallocate(%struct.TYPE_15__*) #1

declare dso_local void @opj_tcd_code_block_enc_deallocate(%struct.TYPE_15__*) #1

declare dso_local i32 @opj_tgt_destroy(i32) #1

declare dso_local i32 @opj_free(%struct.TYPE_15__*) #1

declare dso_local i32 @opj_image_data_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
