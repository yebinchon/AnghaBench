; ModuleID = '/home/carl/AnghaBench/stb/tests/vorbseek/extr_vorbseek.c_try_seeking.c'
source_filename = "/home/carl/AnghaBench/stb/tests/vorbseek/extr_vorbseek.c_try_seeking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SAMPLES_TO_TEST = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Seek to %u returned error from stb_vorbis\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"Seek to %u allowed decoding %d samples when only %d should have been valid.\0A\00", align 1
@.str.2 = private unnamed_addr constant [93 x i8] c"Seek to %u only decoded %d samples of %d attempted when at least %d should have been valid.\0A\00", align 1
@.str.3 = private unnamed_addr constant [84 x i8] c"Seek to %u produced incorrect samples starting at sample %u (short #%d in buffer).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @try_seeking(i32* %0, i32 %1, i16* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i16* %2, i16** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @SAMPLES_TO_TEST, align 4
  %16 = mul nsw i32 %15, 2
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i16, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ule i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @stb_vorbis_seek(i32* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @stderr, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %120

33:                                               ; preds = %4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* @SAMPLES_TO_TEST, align 4
  %36 = mul nsw i32 %35, 2
  %37 = call i32 @stb_vorbis_get_samples_short_interleaved(i32* %34, i32 2, i16* %19, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sub i32 %39, %40
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %33
  %44 = load i32, i32* @stderr, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sub i32 %47, %48
  %50 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46, i32 %49)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %120

51:                                               ; preds = %33
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @SAMPLES_TO_TEST, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %7, align 4
  %59 = sub i32 %57, %58
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load i32, i32* @stderr, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @SAMPLES_TO_TEST, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %7, align 4
  %68 = sub i32 %66, %67
  %69 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %64, i32 %65, i32 %68)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %120

70:                                               ; preds = %55, %51
  %71 = load i16*, i16** %8, align 8
  %72 = load i32, i32* %7, align 4
  %73 = mul i32 %72, 2
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i16, i16* %71, i64 %74
  %76 = load i32, i32* %10, align 4
  %77 = mul nsw i32 %76, 2
  %78 = call i64 @memcmp(i16* %19, i16* %75, i32 %77)
  %79 = icmp ne i64 0, %78
  br i1 %79, label %80, label %119

80:                                               ; preds = %70
  store i32 0, i32* %14, align 4
  br label %81

81:                                               ; preds = %109, %80
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @SAMPLES_TO_TEST, align 4
  %84 = mul nsw i32 %83, 2
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %112

86:                                               ; preds = %81
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i16, i16* %19, i64 %88
  %90 = load i16, i16* %89, align 2
  %91 = sext i16 %90 to i32
  %92 = load i16*, i16** %8, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i16, i16* %92, i64 %94
  %96 = load i16, i16* %95, align 2
  %97 = sext i16 %96 to i32
  %98 = icmp ne i32 %91, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %86
  %100 = load i32, i32* @stderr, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %14, align 4
  %104 = sdiv i32 %103, 2
  %105 = add i32 %102, %104
  %106 = load i32, i32* %14, align 4
  %107 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), i32 %101, i32 %105, i32 %106)
  br label %112

108:                                              ; preds = %86
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %14, align 4
  br label %81

112:                                              ; preds = %99, %81
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* @SAMPLES_TO_TEST, align 4
  %115 = mul nsw i32 %114, 2
  %116 = icmp ne i32 %113, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %120

119:                                              ; preds = %70
  store i32 1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %120

120:                                              ; preds = %119, %112, %61, %43, %29
  %121 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %121)
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @stb_vorbis_seek(i32*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #2

declare dso_local i32 @stb_vorbis_get_samples_short_interleaved(i32*, i32, i16*, i32) #2

declare dso_local i64 @memcmp(i16*, i16*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
