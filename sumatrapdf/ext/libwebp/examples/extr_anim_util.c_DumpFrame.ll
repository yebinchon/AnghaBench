; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_anim_util.c_DumpFrame.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_anim_util.c_DumpFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"_frame_\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".pam\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s/%s_frame_%d.pam\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Error while generating file name\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Error opening file for writing: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"P7\0AWIDTH %d\0AHEIGHT %d\0ADEPTH 4\0AMAXVAL 255\0ATUPLTYPE RGB_ALPHA\0AENDHDR\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Write error for file %s\0A\00", align 1
@kNumChannels = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"Error writing to file: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32*, i32, i32)* @DumpFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DumpFrame(i8* %0, i8* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i32* null, i32** %18, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = call i64 @TO_W_CHAR(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %8, align 8
  br label %25

25:                                               ; preds = %22, %6
  %26 = load i8*, i8** %7, align 8
  %27 = call i8* @WSTRRCHR(i8* %26, i8 signext 47)
  store i8* %27, i8** %16, align 8
  %28 = load i8*, i8** %16, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i8*, i8** %7, align 8
  br label %35

32:                                               ; preds = %25
  %33 = load i8*, i8** %16, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  br label %35

35:                                               ; preds = %32, %30
  %36 = phi i8* [ %31, %30 ], [ %34, %32 ]
  store i8* %36, i8** %16, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @WSTRLEN(i8* %37)
  %39 = add nsw i32 %38, 1
  %40 = load i8*, i8** %16, align 8
  %41 = call i32 @WSTRLEN(i8* %40)
  %42 = add nsw i32 %39, %41
  %43 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %44 = add nsw i32 %42, %43
  %45 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %46 = add nsw i32 %44, %45
  %47 = add nsw i32 %46, 8
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %14, align 8
  %49 = load i64, i64* %14, align 8
  %50 = mul i64 %49, 1
  %51 = call i64 @WebPMalloc(i64 %50)
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %17, align 8
  %53 = load i8*, i8** %17, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %35
  br label %118

56:                                               ; preds = %35
  %57 = load i8*, i8** %17, align 8
  %58 = load i64, i64* %14, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %16, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i64 @WSNPRINTF(i8* %57, i64 %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %59, i8* %60, i32 %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load i32, i32* @stderr, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i32*
  %68 = call i64 (i32*, i8*, ...) @fprintf(i32* %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %118

69:                                               ; preds = %56
  %70 = load i8*, i8** %17, align 8
  %71 = call i32* @WFOPEN(i8* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32* %71, i32** %18, align 8
  %72 = load i32*, i32** %18, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* @stderr, align 4
  %76 = load i8*, i8** %17, align 8
  %77 = call i32 @WFPRINTF(i32 %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %76)
  store i32 0, i32* %13, align 4
  br label %118

78:                                               ; preds = %69
  %79 = load i32*, i32** %18, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i64 (i32*, i8*, ...) @fprintf(i32* %79, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0), i32 %80, i32 %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i32, i32* @stderr, align 4
  %86 = load i8*, i8** %17, align 8
  %87 = call i32 @WFPRINTF(i32 %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %86)
  br label %118

88:                                               ; preds = %78
  %89 = load i32*, i32** %10, align 8
  %90 = bitcast i32* %89 to i8*
  store i8* %90, i8** %19, align 8
  store i32 0, i32* %15, align 4
  br label %91

91:                                               ; preds = %114, %88
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %117

95:                                               ; preds = %91
  %96 = load i8*, i8** %19, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @kNumChannels, align 4
  %99 = mul nsw i32 %97, %98
  %100 = load i32*, i32** %18, align 8
  %101 = call i32 @fwrite(i8* %96, i32 %99, i32 1, i32* %100)
  %102 = icmp ne i32 %101, 1
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load i32, i32* @stderr, align 4
  %105 = load i8*, i8** %17, align 8
  %106 = call i32 @WFPRINTF(i32 %104, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8* %105)
  br label %118

107:                                              ; preds = %95
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @kNumChannels, align 4
  %110 = mul nsw i32 %108, %109
  %111 = load i8*, i8** %19, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  store i8* %113, i8** %19, align 8
  br label %114

114:                                              ; preds = %107
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %15, align 4
  br label %91

117:                                              ; preds = %91
  store i32 1, i32* %13, align 4
  br label %118

118:                                              ; preds = %117, %103, %84, %74, %64, %55
  %119 = load i32*, i32** %18, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i32*, i32** %18, align 8
  %123 = call i32 @fclose(i32* %122)
  br label %124

124:                                              ; preds = %121, %118
  %125 = load i8*, i8** %17, align 8
  %126 = call i32 @WebPFree(i8* %125)
  %127 = load i32, i32* %13, align 4
  ret i32 %127
}

declare dso_local i64 @TO_W_CHAR(i8*) #1

declare dso_local i8* @WSTRRCHR(i8*, i8 signext) #1

declare dso_local i32 @WSTRLEN(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @WebPMalloc(i64) #1

declare dso_local i64 @WSNPRINTF(i8*, i64, i8*, i8*, i8*, i32) #1

declare dso_local i64 @fprintf(i32*, i8*, ...) #1

declare dso_local i32* @WFOPEN(i8*, i8*) #1

declare dso_local i32 @WFPRINTF(i32, i8*, i8*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @WebPFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
