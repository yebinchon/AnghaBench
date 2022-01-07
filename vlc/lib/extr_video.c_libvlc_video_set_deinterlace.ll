; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_video.c_libvlc_video_set_deinterlace.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_video.c_libvlc_video_set_deinterlace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"blend\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bob\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"discard\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"mean\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"yadif\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"yadif2x\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"phosphor\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"ivtc\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"deinterlace-mode\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"deinterlace\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libvlc_video_set_deinterlace(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 -1, i32* %5, align 4
  br label %17

17:                                               ; preds = %16, %13, %3
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %65

20:                                               ; preds = %17
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %65

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %65

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %32
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %40
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %44
  %49 = load i8*, i8** %6, align 8
  %50 = call i64 @strcmp(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = load i8*, i8** %6, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load i8*, i8** %6, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i8*, i8** %6, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %111

65:                                               ; preds = %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %17
  %66 = load i8*, i8** %6, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32*, i32** %4, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @var_SetString(i32* %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %71, %68, %65
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @var_SetInteger(i32* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %77)
  %79 = load i32*, i32** %4, align 8
  %80 = call i32** @GetVouts(i32* %79, i64* %7)
  store i32** %80, i32*** %8, align 8
  store i64 0, i64* %9, align 8
  br label %81

81:                                               ; preds = %105, %75
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %7, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %108

85:                                               ; preds = %81
  %86 = load i32**, i32*** %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds i32*, i32** %86, i64 %87
  %89 = load i32*, i32** %88, align 8
  store i32* %89, i32** %10, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %85
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32*, i32** %10, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @var_SetString(i32* %96, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %97)
  br label %99

99:                                               ; preds = %95, %92, %85
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @var_SetInteger(i32* %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %101)
  %103 = load i32*, i32** %10, align 8
  %104 = call i32 @vout_Release(i32* %103)
  br label %105

105:                                              ; preds = %99
  %106 = load i64, i64* %9, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %9, align 8
  br label %81

108:                                              ; preds = %81
  %109 = load i32**, i32*** %8, align 8
  %110 = call i32 @free(i32** %109)
  br label %111

111:                                              ; preds = %108, %64
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @var_SetString(i32*, i8*, i8*) #1

declare dso_local i32 @var_SetInteger(i32*, i8*, i32) #1

declare dso_local i32** @GetVouts(i32*, i64*) #1

declare dso_local i32 @vout_Release(i32*) #1

declare dso_local i32 @free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
