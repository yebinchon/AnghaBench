; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_set_decoded_components.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_set_decoded_components.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64*, i64 }
%struct.TYPE_6__ = type { i64 }

@EVT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"opj_read_header() should be called before opj_set_decoded_components().\0A\00", align 1
@OPJ_FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid component index: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Component index %u used several times\0A\00", align 1
@OPJ_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @opj_j2k_set_decoded_components(%struct.TYPE_9__* %0, i64 %1, i64* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp eq %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* @EVT_ERROR, align 4
  %19 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %17, i32 %18, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %20, i64* %5, align 8
  br label %145

21:                                               ; preds = %4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @opj_calloc(i32 8, i64 %26)
  %28 = inttoptr i64 %27 to i64*
  store i64* %28, i64** %11, align 8
  %29 = load i64*, i64** %11, align 8
  %30 = icmp eq i64* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %32, i64* %5, align 8
  br label %145

33:                                               ; preds = %21
  store i64 0, i64* %10, align 8
  br label %34

34:                                               ; preds = %88, %33
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %91

38:                                               ; preds = %34
  %39 = load i64*, i64** %8, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp uge i64 %42, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %38
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* @EVT_ERROR, align 4
  %52 = load i64*, i64** %8, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %50, i32 %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  %57 = load i64*, i64** %11, align 8
  %58 = call i32 @opj_free(i64* %57)
  %59 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %59, i64* %5, align 8
  br label %145

60:                                               ; preds = %38
  %61 = load i64*, i64** %11, align 8
  %62 = load i64*, i64** %8, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i64, i64* %61, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %60
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* @EVT_ERROR, align 4
  %72 = load i64*, i64** %8, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %70, i32 %71, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %75)
  %77 = load i64*, i64** %11, align 8
  %78 = call i32 @opj_free(i64* %77)
  %79 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %79, i64* %5, align 8
  br label %145

80:                                               ; preds = %60
  %81 = load i64, i64* @OPJ_TRUE, align 8
  %82 = load i64*, i64** %11, align 8
  %83 = load i64*, i64** %8, align 8
  %84 = load i64, i64* %10, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i64, i64* %82, i64 %86
  store i64 %81, i64* %87, align 8
  br label %88

88:                                               ; preds = %80
  %89 = load i64, i64* %10, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %10, align 8
  br label %34

91:                                               ; preds = %34
  %92 = load i64*, i64** %11, align 8
  %93 = call i32 @opj_free(i64* %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = call i32 @opj_free(i64* %98)
  %100 = load i64, i64* %7, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %133

102:                                              ; preds = %91
  %103 = load i64, i64* %7, align 8
  %104 = mul i64 %103, 8
  %105 = call i64 @opj_malloc(i64 %104)
  %106 = inttoptr i64 %105 to i64*
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  store i64* %106, i64** %110, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = icmp eq i64* %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %102
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  store i64 0, i64* %121, align 8
  %122 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %122, i64* %5, align 8
  br label %145

123:                                              ; preds = %102
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = load i64*, i64** %8, align 8
  %130 = load i64, i64* %7, align 8
  %131 = mul i64 %130, 8
  %132 = call i32 @memcpy(i64* %128, i64* %129, i64 %131)
  br label %138

133:                                              ; preds = %91
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  store i64* null, i64** %137, align 8
  br label %138

138:                                              ; preds = %133, %123
  %139 = load i64, i64* %7, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  store i64 %139, i64* %143, align 8
  %144 = load i64, i64* @OPJ_TRUE, align 8
  store i64 %144, i64* %5, align 8
  br label %145

145:                                              ; preds = %138, %117, %69, %49, %31, %16
  %146 = load i64, i64* %5, align 8
  ret i64 %146
}

declare dso_local i32 @opj_event_msg(i32*, i32, i8*, ...) #1

declare dso_local i64 @opj_calloc(i32, i64) #1

declare dso_local i32 @opj_free(i64*) #1

declare dso_local i64 @opj_malloc(i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
