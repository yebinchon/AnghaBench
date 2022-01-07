; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_msg_add_cookies.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_msg_add_cookies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_msg = type { i8*, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"https\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Cookie\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_http_msg_add_cookies(%struct.vlc_http_msg* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlc_http_msg*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vlc_http_msg* %0, %struct.vlc_http_msg** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %4, align 8
  %11 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %2
  %15 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %4, align 8
  %16 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %4, align 8
  %21 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %14, %2
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %101

26:                                               ; preds = %19
  %27 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %4, align 8
  %28 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @strcasecmp(i32* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  store i32 1, i32* %9, align 4
  br label %42

33:                                               ; preds = %26
  %34 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %4, align 8
  %35 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @strcasecmp(i32* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %41

40:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %101

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %41, %32
  %43 = load i32*, i32** %5, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %101

46:                                               ; preds = %42
  %47 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %4, align 8
  %48 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 91
  br i1 %53, label %54, label %65

54:                                               ; preds = %46
  %55 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %4, align 8
  %56 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %4, align 8
  %60 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = call i32 @strcspn(i8* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %64 = call i8* @strndup(i8* %58, i32 %63)
  store i8* %64, i8** %6, align 8
  br label %74

65:                                               ; preds = %46
  %66 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %4, align 8
  %67 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %4, align 8
  %70 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @strcspn(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %73 = call i8* @strndup(i8* %68, i32 %72)
  store i8* %73, i8** %6, align 8
  br label %74

74:                                               ; preds = %65, %54
  %75 = load i8*, i8** %6, align 8
  %76 = icmp eq i8* %75, null
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 -1, i32* %3, align 4
  br label %101

81:                                               ; preds = %74
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i8*, i8** %6, align 8
  %85 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %4, align 8
  %86 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = call i8* @vlc_http_cookies_fetch(i32* %82, i32 %83, i8* %84, i32* %87)
  store i8* %88, i8** %7, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @free(i8* %89)
  %91 = load i8*, i8** %7, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %81
  %94 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %4, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @vlc_http_msg_add_header(%struct.vlc_http_msg* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 @free(i8* %97)
  br label %99

99:                                               ; preds = %93, %81
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %80, %45, %40, %24
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @strcasecmp(i32*, i8*) #1

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @vlc_http_cookies_fetch(i32*, i32, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_http_msg_add_header(%struct.vlc_http_msg*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
