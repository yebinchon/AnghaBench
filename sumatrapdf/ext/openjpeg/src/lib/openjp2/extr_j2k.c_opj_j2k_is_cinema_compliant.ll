; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_is_cinema_compliant.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_is_cinema_compliant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@EVT_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [166 x i8] c"JPEG 2000 Profile-3 (2k dc profile) requires:\0A3 components-> Number of components of input image (%d) is not compliant\0A-> Non-profile-3 codestream will be generated\0A\00", align 1
@OPJ_FALSE = common dso_local global i32 0, align 4
@__const.opj_j2k_is_cinema_compliant.signed_str = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@__const.opj_j2k_is_cinema_compliant.unsigned_str = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.1 = private unnamed_addr constant [217 x i8] c"JPEG 2000 Profile-3 (2k dc profile) requires:\0APrecision of each component shall be 12 bits unsigned-> At least component %d of input image (%d bits, %s) is not compliant\0A-> Non-profile-3 codestream will be generated\0A\00", align 1
@.str.2 = private unnamed_addr constant [171 x i8] c"JPEG 2000 Profile-3 (2k dc profile) requires:\0Awidth <= 2048 and height <= 1080\0A-> Input image size %d x %d is not compliant\0A-> Non-profile-3 codestream will be generated\0A\00", align 1
@.str.3 = private unnamed_addr constant [165 x i8] c"JPEG 2000 Profile-4 (4k dc profile) requires:\0Awidth <= 4096 and height <= 2160\0A-> Image size %d x %d is not compliant\0A-> Non-profile-4 codestream will be generated\0A\00", align 1
@OPJ_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32*)* @opj_j2k_is_cinema_compliant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opj_j2k_is_cinema_compliant(%struct.TYPE_5__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [7 x i8], align 1
  %10 = alloca [9 x i8], align 1
  %11 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 3
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* @EVT_WARNING, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32*, i32, i8*, i32, ...) @opj_event_msg(i32* %17, i32 %18, i8* getelementptr inbounds ([166 x i8], [166 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %23, i32* %4, align 4
  br label %165

24:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %25

25:                                               ; preds = %83, %24
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = icmp ult i64 %26, %30
  br i1 %31, label %32, label %86

32:                                               ; preds = %25
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 12
  %41 = zext i1 %40 to i32
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %41, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %82

51:                                               ; preds = %32
  %52 = bitcast [7 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %52, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.opj_j2k_is_cinema_compliant.signed_str, i32 0, i32 0), i64 7, i1 false)
  %53 = bitcast [9 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %53, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.opj_j2k_is_cinema_compliant.unsigned_str, i32 0, i32 0), i64 9, i1 false)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = getelementptr inbounds [7 x i8], [7 x i8]* %9, i64 0, i64 0
  br label %66

64:                                               ; preds = %51
  %65 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 0
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i8* [ %63, %62 ], [ %65, %64 ]
  store i8* %67, i8** %11, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* @EVT_WARNING, align 4
  %70 = load i64, i64* %8, align 8
  %71 = trunc i64 %70 to i32
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i64, i64* %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %11, align 8
  %80 = call i32 (i32*, i32, i8*, i32, ...) @opj_event_msg(i32* %68, i32 %69, i8* getelementptr inbounds ([217 x i8], [217 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %78, i8* %79)
  %81 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %81, i32* %4, align 4
  br label %165

82:                                               ; preds = %32
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %8, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %8, align 8
  br label %25

86:                                               ; preds = %25
  %87 = load i32, i32* %6, align 4
  switch i32 %87, label %162 [
    i32 129, label %88
    i32 128, label %125
  ]

88:                                               ; preds = %86
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp sgt i32 %94, 2048
  %96 = zext i1 %95 to i32
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp sgt i32 %102, 1080
  %104 = zext i1 %103 to i32
  %105 = or i32 %96, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %124

107:                                              ; preds = %88
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* @EVT_WARNING, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i32*, i32, i8*, i32, ...) @opj_event_msg(i32* %108, i32 %109, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.2, i64 0, i64 0), i32 %115, i32 %121)
  %123 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %123, i32* %4, align 4
  br label %165

124:                                              ; preds = %88
  br label %163

125:                                              ; preds = %86
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = icmp sgt i32 %131, 4096
  %133 = zext i1 %132 to i32
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = icmp sgt i32 %139, 2160
  %141 = zext i1 %140 to i32
  %142 = or i32 %133, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %161

144:                                              ; preds = %125
  %145 = load i32*, i32** %7, align 8
  %146 = load i32, i32* @EVT_WARNING, align 4
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (i32*, i32, i8*, i32, ...) @opj_event_msg(i32* %145, i32 %146, i8* getelementptr inbounds ([165 x i8], [165 x i8]* @.str.3, i64 0, i64 0), i32 %152, i32 %158)
  %160 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %160, i32* %4, align 4
  br label %165

161:                                              ; preds = %125
  br label %163

162:                                              ; preds = %86
  br label %163

163:                                              ; preds = %162, %161, %124
  %164 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %163, %144, %107, %66, %16
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @opj_event_msg(i32*, i32, i8*, i32, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
