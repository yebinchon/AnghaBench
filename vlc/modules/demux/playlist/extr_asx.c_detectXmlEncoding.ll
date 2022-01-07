; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_asx.c_detectXmlEncoding.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_asx.c_detectXmlEncoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c" \0A\0D\09\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"<?xml\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"?>\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" \0A\0D\09=\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @detectXmlEncoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @detectXmlEncoding(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strspn(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = load i8*, i8** %3, align 8
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  store i8* %14, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strncasecmp(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %122

19:                                               ; preds = %1
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 5
  store i8* %21, i8** %3, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i8* @strstr(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i8* null, i8** %2, align 8
  br label %122

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %120, %27
  %29 = load i8*, i8** %3, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ult i8* %29, %30
  br i1 %31, label %32, label %121

32:                                               ; preds = %28
  %33 = load i8*, i8** %3, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @strspn(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  store i8* %37, i8** %3, align 8
  store i8* %37, i8** %4, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store i8* null, i8** %2, align 8
  br label %122

43:                                               ; preds = %32
  %44 = load i8*, i8** %3, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @strcspn(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  store i8* %48, i8** %3, align 8
  store i8* %48, i8** %5, align 8
  %49 = load i8*, i8** %3, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i8* null, i8** %2, align 8
  br label %122

54:                                               ; preds = %43
  %55 = load i8*, i8** %3, align 8
  %56 = call i32 @strspn(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %57 = load i8*, i8** %3, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %3, align 8
  %60 = load i8*, i8** %3, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 61
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  store i8* null, i8** %2, align 8
  br label %122

65:                                               ; preds = %54
  %66 = load i8*, i8** %3, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %3, align 8
  %68 = load i8*, i8** %3, align 8
  %69 = call i32 @strspn(i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %70 = load i8*, i8** %3, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %3, align 8
  %73 = load i8*, i8** %3, align 8
  %74 = load i8, i8* %73, align 1
  store i8 %74, i8* %9, align 1
  %75 = load i8, i8* %9, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 34
  br i1 %77, label %78, label %83

78:                                               ; preds = %65
  %79 = load i8, i8* %9, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 39
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i8* null, i8** %2, align 8
  br label %122

83:                                               ; preds = %78, %65
  %84 = load i8*, i8** %3, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %3, align 8
  store i8* %85, i8** %6, align 8
  %86 = load i8*, i8** %3, align 8
  %87 = load i8, i8* %9, align 1
  %88 = call i8* @strchr(i8* %86, i8 signext %87)
  store i8* %88, i8** %3, align 8
  store i8* %88, i8** %7, align 8
  %89 = load i8*, i8** %3, align 8
  %90 = icmp eq i8* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  store i8* null, i8** %2, align 8
  br label %122

92:                                               ; preds = %83
  %93 = load i8*, i8** %3, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %3, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = trunc i64 %100 to i32
  %102 = call i64 @strncasecmp(i8* %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %92
  %105 = load i8*, i8** %7, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = ptrtoint i8* %105 to i64
  %108 = ptrtoint i8* %106 to i64
  %109 = sub i64 %107, %108
  %110 = icmp sgt i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %104
  %112 = load i8*, i8** %6, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = load i8*, i8** %6, align 8
  %115 = ptrtoint i8* %113 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = trunc i64 %117 to i32
  %119 = call i8* @strndup(i8* %112, i32 %118)
  store i8* %119, i8** %2, align 8
  br label %122

120:                                              ; preds = %104, %92
  br label %28

121:                                              ; preds = %28
  store i8* null, i8** %2, align 8
  br label %122

122:                                              ; preds = %121, %111, %91, %82, %64, %53, %42, %26, %18
  %123 = load i8*, i8** %2, align 8
  ret i8* %123
}

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strndup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
