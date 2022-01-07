; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_anim_encode.c_WebPAnimEncoderAdd.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_anim_encode.c_WebPAnimEncoderAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i64, i64, i32, %struct.TYPE_19__*, %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { i64, i64, i32, i8* }
%struct.TYPE_20__ = type { i32 }

@MAX_DURATION = common dso_local global i64 0, align 8
@VP8_ENC_ERROR_INVALID_CONFIGURATION = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [54 x i8] c"ERROR adding frame: timestamps must be non-decreasing\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"ERROR adding frame: Invalid frame dimensions\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [81 x i8] c"WARNING: Converting frame from YUV(A) to ARGB format; this incurs a small loss.\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"ERROR converting frame from YUV(A) to ARGB\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"ERROR adding frame: Invalid WebPConfig\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WebPAnimEncoderAdd(%struct.TYPE_21__* %0, %struct.TYPE_19__* %1, i32 %2, %struct.TYPE_20__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_20__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %9, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %14 = icmp eq %struct.TYPE_21__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %166

16:                                               ; preds = %4
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %18 = call i32 @MarkNoError(%struct.TYPE_21__* %17)
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %52, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = sub nsw i64 %25, %29
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* @MAX_DURATION, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %23
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %36 = icmp ne %struct.TYPE_19__* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i8*, i8** @VP8_ENC_ERROR_INVALID_CONFIGURATION, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %37, %34
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %43 = call i32 @MarkError(%struct.TYPE_21__* %42, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %166

44:                                               ; preds = %23
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %46 = load i64, i64* %12, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @IncreasePreviousDuration(%struct.TYPE_21__* %45, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %166

51:                                               ; preds = %44
  br label %56

52:                                               ; preds = %16
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %51
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %58 = icmp eq %struct.TYPE_19__* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 2
  store i32 1, i32* %61, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  store i32 1, i32* %5, align 4
  br label %166

65:                                               ; preds = %56
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %81, label %73

73:                                               ; preds = %65
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %73, %65
  %82 = load i8*, i8** @VP8_ENC_ERROR_INVALID_CONFIGURATION, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %86 = call i32 @MarkError(%struct.TYPE_21__* %85, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %166

87:                                               ; preds = %73
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %109, label %92

92:                                               ; preds = %87
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 7
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i32, i32* @stderr, align 4
  %100 = call i32 @fprintf(i32 %99, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %92
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %103 = call i32 @WebPPictureYUVAToARGB(%struct.TYPE_19__* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %107 = call i32 @MarkError(%struct.TYPE_21__* %106, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %166

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108, %87
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %111 = icmp ne %struct.TYPE_20__* %110, null
  br i1 %111, label %112, label %123

112:                                              ; preds = %109
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %114 = call i32 @WebPValidateConfig(%struct.TYPE_20__* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %118 = call i32 @MarkError(%struct.TYPE_21__* %117, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %166

119:                                              ; preds = %112
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %121 = bitcast %struct.TYPE_20__* %10 to i8*
  %122 = bitcast %struct.TYPE_20__* %120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %121, i8* align 4 %122, i64 4, i1 false)
  br label %126

123:                                              ; preds = %109
  %124 = call i32 @WebPConfigInit(%struct.TYPE_20__* %10)
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  store i32 1, i32* %125, align 4
  br label %126

126:                                              ; preds = %123, %119
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 6
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %128, align 8
  %130 = icmp eq %struct.TYPE_19__* %129, null
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 6
  store %struct.TYPE_19__* %133, %struct.TYPE_19__** %135, align 8
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 1
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %143 = call i32 @CopyCurrentCanvas(%struct.TYPE_21__* %142)
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %145 = call i64 @CacheFrame(%struct.TYPE_21__* %144, %struct.TYPE_20__* %10)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %126
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %149 = call i64 @FlushFrames(%struct.TYPE_21__* %148)
  %150 = icmp ne i64 %149, 0
  br label %151

151:                                              ; preds = %147, %126
  %152 = phi i1 [ false, %126 ], [ %150, %147 ]
  %153 = zext i1 %152 to i32
  store i32 %153, i32* %11, align 4
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 6
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %155, align 8
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 5
  store i32 1, i32* %157, align 8
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %151
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %160, %151
  %165 = load i32, i32* %11, align 4
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %164, %116, %105, %81, %59, %50, %41, %15
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local i32 @MarkNoError(%struct.TYPE_21__*) #1

declare dso_local i32 @MarkError(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @IncreasePreviousDuration(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @WebPPictureYUVAToARGB(%struct.TYPE_19__*) #1

declare dso_local i32 @WebPValidateConfig(%struct.TYPE_20__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @WebPConfigInit(%struct.TYPE_20__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CopyCurrentCanvas(%struct.TYPE_21__*) #1

declare dso_local i64 @CacheFrame(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i64 @FlushFrames(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
