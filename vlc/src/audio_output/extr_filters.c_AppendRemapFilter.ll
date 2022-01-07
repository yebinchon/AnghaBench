; ModuleID = '/home/carl/AnghaBench/vlc/src/audio_output/extr_filters.c_AppendRemapFilter.c'
source_filename = "/home/carl/AnghaBench/vlc/src/audio_output/extr_filters.c_AppendRemapFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AppendRemapFilter.wg4_to_remap = internal constant [9 x i32] [i32 0, i32 2, i32 6, i32 7, i32 3, i32 5, i32 4, i32 1, i32 8], align 16
@AOUT_CHAN_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [197 x i8] c"remap{channel-left=%d,channel-right=%d,channel-middleleft=%d,channel-middleright=%d,channel-rearleft=%d,channel-rearright=%d,channel-rearcenter=%d,channel-center=%d,channel-lfe=%d,normalize=false}\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"audio filter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32*)* @AppendRemapFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AppendRemapFilter(i32* %0, i32* noalias %1, i32* noalias %2, i32* noalias %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load i32, i32* @AOUT_CHAN_MAX, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %25

25:                                               ; preds = %60, %5
  %26 = load i32, i32* %17, align 4
  %27 = load i32, i32* @AOUT_CHAN_MAX, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %63

29:                                               ; preds = %25
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %17, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %17, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 1, i32* %16, align 4
  br label %38

38:                                               ; preds = %37, %29
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* %17, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %17, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [9 x i32], [9 x i32]* @AppendRemapFilter.wg4_to_remap, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  br label %55

54:                                               ; preds = %38
  br label %55

55:                                               ; preds = %54, %45
  %56 = phi i32 [ %53, %45 ], [ -1, %54 ]
  %57 = load i32, i32* %17, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %24, i64 %58
  store i32 %56, i32* %59, align 4
  br label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %17, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %17, align 4
  br label %25

63:                                               ; preds = %25
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %120

67:                                               ; preds = %63
  %68 = getelementptr inbounds i32, i32* %24, i64 0
  %69 = load i32, i32* %68, align 16
  %70 = getelementptr inbounds i32, i32* %24, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds i32, i32* %24, i64 2
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds i32, i32* %24, i64 3
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds i32, i32* %24, i64 4
  %77 = load i32, i32* %76, align 16
  %78 = getelementptr inbounds i32, i32* %24, i64 5
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds i32, i32* %24, i64 6
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds i32, i32* %24, i64 7
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds i32, i32* %24, i64 8
  %85 = load i32, i32* %84, align 16
  %86 = call i32 @asprintf(i8** %19, i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %71, i32 %73, i32 %75, i32 %77, i32 %79, i32 %81, i32 %83, i32 %85)
  store i32 %86, i32* %20, align 4
  %87 = load i32, i32* %20, align 4
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %90

89:                                               ; preds = %67
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %120

90:                                               ; preds = %67
  %91 = load i8*, i8** %19, align 8
  %92 = call i8* @config_ChainCreate(i8** %12, i32** %13, i8* %91)
  %93 = call i32 @free(i8* %92)
  %94 = load i8*, i8** %12, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %107

96:                                               ; preds = %90
  %97 = load i32*, i32** %13, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  %100 = load i32*, i32** %7, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = load i32*, i32** %13, align 8
  %106 = call i32 @AppendFilter(i32* %100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %101, i32* %102, i32* %103, i32* %104, i32* %105)
  store i32 %106, i32* %20, align 4
  br label %108

107:                                              ; preds = %96, %90
  store i32 -1, i32* %20, align 4
  br label %108

108:                                              ; preds = %107, %99
  %109 = load i8*, i8** %19, align 8
  %110 = call i32 @free(i8* %109)
  %111 = load i8*, i8** %12, align 8
  %112 = call i32 @free(i8* %111)
  %113 = load i32*, i32** %13, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load i32*, i32** %13, align 8
  %117 = call i32 @config_ChainDestroy(i32* %116)
  br label %118

118:                                              ; preds = %115, %108
  %119 = load i32, i32* %20, align 4
  store i32 %119, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %120

120:                                              ; preds = %118, %89, %66
  %121 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %121)
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @asprintf(i8**, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @config_ChainCreate(i8**, i32**, i8*) #2

declare dso_local i32 @AppendFilter(i32*, i8*, i8*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @config_ChainDestroy(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
