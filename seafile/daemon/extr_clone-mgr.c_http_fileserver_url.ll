; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_http_fileserver_url.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_http_fileserver_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c":8082\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @http_fileserver_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @http_fileserver_url(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %7, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @strlen(i8* %8)
  %10 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i8* @g_strdup(i8* %13)
  store i8* %14, i8** %2, align 8
  br label %42

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i8* @strrchr(i8* %20, i8 signext 58)
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %15
  %25 = load i8*, i8** %3, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  %32 = call i8* @g_strndup(i8* %25, i32 %31)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i8* @g_strconcat(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @g_free(i8* %35)
  br label %40

37:                                               ; preds = %15
  %38 = load i8*, i8** %3, align 8
  %39 = call i8* @g_strconcat(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %39, i8** %7, align 8
  br label %40

40:                                               ; preds = %37, %24
  %41 = load i8*, i8** %7, align 8
  store i8* %41, i8** %2, align 8
  br label %42

42:                                               ; preds = %40, %12
  %43 = load i8*, i8** %2, align 8
  ret i8* %43
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @g_strndup(i8*, i32) #1

declare dso_local i8* @g_strconcat(i8*, i8*, i32*) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
