; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_httpcookies.c_cookie_default_path.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_httpcookies.c_cookie_default_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @cookie_default_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cookie_default_path(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 47
  br i1 %14, label %15, label %17

15:                                               ; preds = %9, %1
  %16 = call i8* @strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %2, align 8
  br label %55

17:                                               ; preds = %9
  %18 = load i8*, i8** %3, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 63)
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load i8*, i8** %3, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  %30 = call i8* @strndup(i8* %23, i32 %29)
  store i8* %30, i8** %4, align 8
  br label %34

31:                                               ; preds = %17
  %32 = load i8*, i8** %3, align 8
  %33 = call i8* @strdup(i8* %32)
  store i8* %33, i8** %4, align 8
  br label %34

34:                                               ; preds = %31, %22
  %35 = load i8*, i8** %4, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i8* null, i8** %2, align 8
  br label %55

38:                                               ; preds = %34
  %39 = load i8*, i8** %4, align 8
  %40 = call i8* @strrchr(i8* %39, i8 signext 47)
  store i8* %40, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = icmp ne i8* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = icmp eq i8* %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8 0, i8* %50, align 1
  br label %53

51:                                               ; preds = %38
  %52 = load i8*, i8** %6, align 8
  store i8 0, i8* %52, align 1
  br label %53

53:                                               ; preds = %51, %48
  %54 = load i8*, i8** %4, align 8
  store i8* %54, i8** %2, align 8
  br label %55

55:                                               ; preds = %53, %37, %15
  %56 = load i8*, i8** %2, align 8
  ret i8* %56
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
