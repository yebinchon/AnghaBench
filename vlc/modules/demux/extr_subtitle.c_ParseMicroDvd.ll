; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_ParseMicroDvd.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_ParseMicroDvd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i8* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"{%d}{}%[^\0D\0A]\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"{%d}{%d}%[^\0D\0A]\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"sub-original-fps\00", align 1
@CLOCK_FREQ = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, i32*, %struct.TYPE_5__*, i64)* @ParseMicroDvd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseMicroDvd(i32* %0, %struct.TYPE_6__* %1, i32* %2, %struct.TYPE_5__* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca float, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = call i32 @VLC_UNUSED(i64 %18)
  br label %20

20:                                               ; preds = %71, %5
  %21 = load i32*, i32** %9, align 8
  %22 = call i8* @TextGetLine(i32* %21)
  store i8* %22, i8** %16, align 8
  %23 = load i8*, i8** %16, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %26, i32* %6, align 4
  br label %125

27:                                               ; preds = %20
  %28 = load i8*, i8** %16, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = add nsw i64 %29, 1
  %31 = call i8* @malloc(i64 %30)
  store i8* %31, i8** %12, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %35, i32* %6, align 4
  br label %125

36:                                               ; preds = %27
  store i32 0, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  %37 = load i8*, i8** %16, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %13, i8* %38)
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %16, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %13, i32* %14, i8* %43)
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %46, label %71

46:                                               ; preds = %41, %36
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %46
  br label %74

53:                                               ; preds = %49
  %54 = load i8*, i8** %12, align 8
  %55 = call float @us_strtof(i8* %54, i32* null)
  store float %55, float* %17, align 4
  %56 = load float, float* %17, align 4
  %57 = fcmp ogt float %56, 0.000000e+00
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load i32*, i32** %7, align 8
  %60 = call float @var_GetFloat(i32* %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %61 = fcmp ole float %60, 0.000000e+00
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load i64, i64* @CLOCK_FREQ, align 8
  %64 = sitofp i64 %63 to float
  %65 = load float, float* %17, align 4
  %66 = fdiv float %64, %65
  %67 = call i32 @llroundf(float %66)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %62, %58, %53
  br label %71

71:                                               ; preds = %70, %41
  %72 = load i8*, i8** %12, align 8
  %73 = call i32 @free(i8* %72)
  br label %20

74:                                               ; preds = %52
  store i32 0, i32* %15, align 4
  br label %75

75:                                               ; preds = %97, %74
  %76 = load i8*, i8** %12, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %75
  %84 = load i8*, i8** %12, align 8
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 124
  br i1 %90, label %91, label %96

91:                                               ; preds = %83
  %92 = load i8*, i8** %12, align 8
  %93 = load i32, i32* %15, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  store i8 10, i8* %95, align 1
  br label %96

96:                                               ; preds = %91, %83
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %15, align 4
  br label %75

100:                                              ; preds = %75
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %101, %104
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* %14, align 4
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %100
  %111 = load i32, i32* %14, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %111, %114
  br label %117

116:                                              ; preds = %100
  br label %117

117:                                              ; preds = %116, %110
  %118 = phi i32 [ %115, %110 ], [ -1, %116 ]
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load i8*, i8** %12, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  store i8* %121, i8** %123, align 8
  %124 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %117, %34, %25
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i32 @VLC_UNUSED(i64) #1

declare dso_local i8* @TextGetLine(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local float @us_strtof(i8*, i32*) #1

declare dso_local float @var_GetFloat(i32*, i8*) #1

declare dso_local i32 @llroundf(float) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
