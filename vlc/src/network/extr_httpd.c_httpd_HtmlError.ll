; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_httpd.c_httpd_HtmlError.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_httpd.c_httpd_HtmlError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [300 x i8] c"<?xml version=\221.0\22 encoding=\22ascii\22 ?>\0A<!DOCTYPE html PUBLIC \22-//W3C//DTD XHTML 1.0 Strict//EN\22 \22http://www.w3.org/TR/xhtml10/DTD/xhtml10strict.dtd\22>\0A<html lang=\22en\22>\0A<head>\0A<title>%s</title>\0A</head>\0A<body>\0A<h1>%d %s%s%s%s</h1>\0A<hr />\0A<a href=\22http://www.videolan.org\22>VideoLAN</a>\0A</body>\0A</html>\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8**, i32, i8*)* @httpd_HtmlError to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @httpd_HtmlError(i8** %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i8* @httpd_ReasonFromCode(i32 %11)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @assert(i8* %13)
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i8* [ %18, %17 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %19 ]
  %22 = call i8* @vlc_xml_encode(i8* %21)
  store i8* %22, i8** %9, align 8
  %23 = load i8**, i8*** %5, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %31 = load i8*, i8** %9, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %20
  %34 = load i8*, i8** %9, align 8
  br label %36

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i8* [ %34, %33 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %35 ]
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %42 = call i32 @asprintf(i8** %23, i8* getelementptr inbounds ([300 x i8], [300 x i8]* @.str.1, i64 0, i64 0), i8* %24, i32 %25, i8* %26, i8* %30, i8* %37, i8* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @free(i8* %43)
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i8**, i8*** %5, align 8
  store i8* null, i8** %48, align 8
  store i64 0, i64* %4, align 8
  br label %52

49:                                               ; preds = %36
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %4, align 8
  br label %52

52:                                               ; preds = %49, %47
  %53 = load i64, i64* %4, align 8
  ret i64 %53
}

declare dso_local i8* @httpd_ReasonFromCode(i32) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i8* @vlc_xml_encode(i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
