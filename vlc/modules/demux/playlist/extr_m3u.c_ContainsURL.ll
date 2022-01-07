; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_m3u.c_ContainsURL.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_m3u.c_ContainsURL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"://\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"mms\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ftp\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"rtsp\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"ftps\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"https\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"ftpes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @ContainsURL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ContainsURL(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32* %11 to i8*
  store i8* %12, i8** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = bitcast i32* %13 to i8*
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  store i8* %16, i8** %7, align 8
  store i64 9, i64* %8, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ult i64 %17, 10
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %112

20:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %21

21:                                               ; preds = %108, %38, %20
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 9
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ult i8* %24, %25
  br i1 %26, label %27, label %111

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %112

33:                                               ; preds = %27
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %6, align 8
  store i32 1, i32* %9, align 4
  br label %21

41:                                               ; preds = %33
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %108

44:                                               ; preds = %41
  %45 = load i8*, i8** %6, align 8
  %46 = call i8* @strnstr(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 9)
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %91

49:                                               ; preds = %44
  %50 = load i8*, i8** %10, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  switch i64 %54, label %89 [
    i64 3, label %55
    i64 4, label %65
    i64 5, label %79
  ]

55:                                               ; preds = %49
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @strncasecmp(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @strncasecmp(i8* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59, %55
  store i32 1, i32* %3, align 4
  br label %112

64:                                               ; preds = %59
  br label %90

65:                                               ; preds = %49
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @strncasecmp(i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @strncasecmp(i8* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @strncasecmp(i8* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73, %69, %65
  store i32 1, i32* %3, align 4
  br label %112

78:                                               ; preds = %73
  br label %90

79:                                               ; preds = %49
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @strncasecmp(i8* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 5)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @strncasecmp(i8* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83, %79
  store i32 1, i32* %3, align 4
  br label %112

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %49, %88
  br label %90

90:                                               ; preds = %89, %78, %64
  br label %91

91:                                               ; preds = %90, %44
  %92 = load i8*, i8** %6, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 35
  br i1 %95, label %96, label %107

96:                                               ; preds = %91
  %97 = load i8*, i8** %6, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 10
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load i8*, i8** %6, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 13
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %112

107:                                              ; preds = %101, %96, %91
  store i32 0, i32* %9, align 4
  br label %108

108:                                              ; preds = %107, %41
  %109 = load i8*, i8** %6, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %6, align 8
  br label %21

111:                                              ; preds = %21
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %106, %87, %77, %63, %32, %19
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i8* @strnstr(i8*, i8*, i64) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
