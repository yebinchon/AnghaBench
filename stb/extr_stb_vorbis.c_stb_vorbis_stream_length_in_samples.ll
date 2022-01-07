; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_stb_vorbis_stream_length_in_samples.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_stb_vorbis_stream_length_in_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_11__, i8* }
%struct.TYPE_11__ = type { i32, i32, i32 }

@VORBIS_invalid_api_mixing = common dso_local global i32 0, align 4
@VORBIS_cant_find_last_page = common dso_local global i8* null, align 8
@SAMPLE_unknown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb_vorbis_stream_length_in_samples(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [6 x i8], align 1
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = call i64 @IS_PUSH_MODE(%struct.TYPE_12__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = load i32, i32* @VORBIS_invalid_api_mixing, align 4
  %18 = call i32 @error(%struct.TYPE_12__* %16, i32 %17)
  store i32 %18, i32* %2, align 4
  br label %142

19:                                               ; preds = %1
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %129, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = call i32 @stb_vorbis_get_file_offset(%struct.TYPE_12__* %25)
  store i32 %26, i32* %4, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %29, 65536
  br i1 %30, label %31, label %45

31:                                               ; preds = %24
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 65536
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %35, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 65536
  store i32 %44, i32* %5, align 4
  br label %49

45:                                               ; preds = %31, %24
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @set_file_offset(%struct.TYPE_12__* %50, i32 %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = call i32 @vorbis_find_page(%struct.TYPE_12__* %53, i32* %6, i32* %8)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %49
  %57 = load i8*, i8** @VORBIS_cant_find_last_page, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  store i32 -1, i32* %61, align 8
  br label %125

62:                                               ; preds = %49
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %64 = call i32 @stb_vorbis_get_file_offset(%struct.TYPE_12__* %63)
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %77, %62
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  br i1 %68, label %69, label %82

69:                                               ; preds = %65
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @set_file_offset(%struct.TYPE_12__* %70, i32 %71)
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %74 = call i32 @vorbis_find_page(%struct.TYPE_12__* %73, i32* %6, i32* %8)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %69
  br label %82

77:                                               ; preds = %69
  %78 = load i32, i32* %7, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %5, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %81 = call i32 @stb_vorbis_get_file_offset(%struct.TYPE_12__* %80)
  store i32 %81, i32* %7, align 4
  br label %65

82:                                               ; preds = %76, %65
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @set_file_offset(%struct.TYPE_12__* %83, i32 %84)
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %87 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %88 = call i32 @getn(%struct.TYPE_12__* %86, i8* %87, i32 6)
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %90 = call i32 @get32(%struct.TYPE_12__* %89)
  store i32 %90, i32* %9, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %92 = call i32 @get32(%struct.TYPE_12__* %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %105

95:                                               ; preds = %82
  %96 = load i32, i32* %10, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load i8*, i8** @VORBIS_cant_find_last_page, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 4
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* @SAMPLE_unknown, align 4
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %125

105:                                              ; preds = %95, %82
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 -2, i32* %9, align 4
  br label %109

109:                                              ; preds = %108, %105
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  store i32 %121, i32* %124, align 4
  br label %125

125:                                              ; preds = %109, %98, %56
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @set_file_offset(%struct.TYPE_12__* %126, i32 %127)
  br label %129

129:                                              ; preds = %125, %19
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @SAMPLE_unknown, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %140

136:                                              ; preds = %129
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  br label %140

140:                                              ; preds = %136, %135
  %141 = phi i32 [ 0, %135 ], [ %139, %136 ]
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %140, %15
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i64 @IS_PUSH_MODE(%struct.TYPE_12__*) #1

declare dso_local i32 @error(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @stb_vorbis_get_file_offset(%struct.TYPE_12__*) #1

declare dso_local i32 @set_file_offset(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @vorbis_find_page(%struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @getn(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @get32(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
