; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/converter/extr_tospdif.c_write_buffer_truehd.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/converter/extr_tospdif.c_write_buffer_truehd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_16__, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_19__ = type { i32 }

@SPDIF_ERROR = common dso_local global i32 0, align 4
@write_buffer_truehd.p_mat_start_code = internal constant [20 x i8] c"\07\9E\00\03\84\01\01\01\80\00V\A5;\F4\81\83I\80w\E0", align 16
@SPDIF_HEADER_SIZE = common dso_local global i32 0, align 4
@write_buffer_truehd.p_mat_middle_code = internal constant [12 x i8] c"\C3\C1BI;\FA\82\83I\80w\E0", align 1
@write_buffer_truehd.p_mat_end_code = internal constant [16 x i8] c"\C3\C2\C0\C4\00\00\00\00\00\00\00\00\00\00\97\11", align 16
@IEC61937_TRUEHD = common dso_local global i32 0, align 4
@SPDIF_SUCCESS = common dso_local global i32 0, align 4
@SPDIF_MORE_DATA = common dso_local global i32 0, align 4
@TRUEHD_FRAME_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_19__*)* @write_buffer_truehd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_buffer_truehd(%struct.TYPE_17__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  store %struct.TYPE_18__* %10, %struct.TYPE_18__** %6, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %14 = icmp ne %struct.TYPE_15__* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %18 = call i64 @write_init(%struct.TYPE_17__* %16, %struct.TYPE_19__* %17, i32 61440, i32 3840)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @SPDIF_ERROR, align 4
  store i32 %21, i32* %3, align 4
  br label %156

22:                                               ; preds = %15, %2
  store i32 0, i32* %7, align 4
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = call i32 @write_data(%struct.TYPE_17__* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @write_buffer_truehd.p_mat_start_code, i64 0, i64 0), i32 20, i32 1)
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 2560, %33
  %35 = sub nsw i32 %34, 20
  %36 = load i32, i32* @SPDIF_HEADER_SIZE, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %7, align 4
  br label %121

38:                                               ; preds = %22
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 11
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 2560, %47
  %49 = sub nsw i32 %48, 4
  store i32 %49, i32* %7, align 4
  br label %120

50:                                               ; preds = %38
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 12
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %58 = call i32 @write_data(%struct.TYPE_17__* %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @write_buffer_truehd.p_mat_middle_code, i64 0, i64 0), i32 12, i32 1)
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 2560, %61
  %63 = sub nsw i32 %62, 8
  store i32 %63, i32* %7, align 4
  br label %119

64:                                               ; preds = %50
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 23
  br i1 %69, label %70, label %113

70:                                               ; preds = %64
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 2560, %73
  %75 = sub nsw i32 %74, 24
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %95, label %78

78:                                               ; preds = %70
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %89, %92
  %94 = icmp sgt i64 %84, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %78, %70
  %96 = load i32, i32* @SPDIF_ERROR, align 4
  store i32 %96, i32* %3, align 4
  br label %156

97:                                               ; preds = %78
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %100 = call i32 @write_buffer(%struct.TYPE_17__* %98, %struct.TYPE_19__* %99)
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @write_padding(%struct.TYPE_17__* %101, i32 %102)
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %105 = call i32 @write_data(%struct.TYPE_17__* %104, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @write_buffer_truehd.p_mat_end_code, i64 0, i64 0), i32 16, i32 1)
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %107 = load i32, i32* @IEC61937_TRUEHD, align 4
  %108 = call i32 @write_finalize(%struct.TYPE_17__* %106, i32 %107, i32 1)
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  %112 = load i32, i32* @SPDIF_SUCCESS, align 4
  store i32 %112, i32* %3, align 4
  br label %156

113:                                              ; preds = %64
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 2560, %116
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %113
  br label %119

119:                                              ; preds = %118, %56
  br label %120

120:                                              ; preds = %119, %44
  br label %121

121:                                              ; preds = %120, %28
  %122 = load i32, i32* %7, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %141, label %124

124:                                              ; preds = %121
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 %135, %138
  %140 = icmp sgt i64 %130, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %124, %121
  %142 = load i32, i32* @SPDIF_ERROR, align 4
  store i32 %142, i32* %3, align 4
  br label %156

143:                                              ; preds = %124
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %146 = call i32 @write_buffer(%struct.TYPE_17__* %144, %struct.TYPE_19__* %145)
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @write_padding(%struct.TYPE_17__* %147, i32 %148)
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 8
  %155 = load i32, i32* @SPDIF_MORE_DATA, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %143, %141, %97, %95, %20
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i64 @write_init(%struct.TYPE_17__*, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @write_data(%struct.TYPE_17__*, i8*, i32, i32) #1

declare dso_local i32 @write_buffer(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

declare dso_local i32 @write_padding(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @write_finalize(%struct.TYPE_17__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
