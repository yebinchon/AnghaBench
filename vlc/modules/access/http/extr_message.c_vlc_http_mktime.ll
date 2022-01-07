; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_mktime.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_mktime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i8, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"%*c%*c%*c, %2d %3s %4d %2d:%2d:%2d\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%*3s %3s %2d %2d:%2d:%2d %4d\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"%*[^,], %2d-%3s-%2d %2d:%2d:%2d\00", align 1
@vlc_http_months = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vlc_http_mktime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_http_mktime(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tm, align 4
  %5 = alloca [4 x i8], align 1
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  %8 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %9 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  %10 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 2
  %11 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 3
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 4
  %13 = call i32 @sscanf(i8* %6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %7, i8* %8, i32* %9, i32* %10, i32* %11, i32* %12)
  %14 = icmp eq i32 %13, 6
  br i1 %14, label %25, label %15

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 2
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 3
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 4
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  %23 = call i32 @sscanf(i8* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %17, i8* %18, i32* %19, i32* %20, i32* %21, i32* %22)
  %24 = icmp eq i32 %23, 6
  br i1 %24, label %25, label %29

25:                                               ; preds = %15, %1
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1900
  store i32 %28, i32* %26, align 4
  br label %50

29:                                               ; preds = %15
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 2
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 3
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 4
  %37 = call i32 @sscanf(i8* %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %31, i8* %32, i32* %33, i32* %34, i32* %35, i32* %36)
  %38 = icmp eq i32 %37, 6
  br i1 %38, label %39, label %48

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sle i32 %41, 75
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 100
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %43, %39
  br label %49

48:                                               ; preds = %29
  br label %74

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %49, %25
  %51 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 5
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %69, %50
  %53 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 12
  br i1 %55, label %56, label %73

56:                                               ; preds = %52
  %57 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %58 = load i32*, i32** @vlc_http_months, align 8
  %59 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @strcmp(i8* %57, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %56
  %67 = call i32 @timegm(%struct.tm* %4)
  store i32 %67, i32* %2, align 4
  br label %76

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %52

73:                                               ; preds = %52
  br label %74

74:                                               ; preds = %73, %48
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %66
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @sscanf(i8*, i8*, i8*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @timegm(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
