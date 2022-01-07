; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_subsusf.c_GrabAttributeValue.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_subsusf.c_GrabAttributeValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @GrabAttributeValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @GrabAttributeValue(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %52

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %52

14:                                               ; preds = %11
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @strchr(i8* %15, i8 signext 62)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i8* @strcasestr(i8* %17, i8* %18)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %51

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = load i8*, i8** %7, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %7, align 8
  %30 = load i8, i8* %28, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 61
  br i1 %32, label %33, label %50

33:                                               ; preds = %22
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %7, align 8
  %36 = load i8, i8* %34, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 34
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = icmp ult i8* %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @strcspn(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %45, i32* %8, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i8* @strndup(i8* %46, i32 %47)
  store i8* %48, i8** %3, align 8
  br label %53

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %33, %22
  br label %51

51:                                               ; preds = %50, %14
  br label %52

52:                                               ; preds = %51, %11, %2
  store i8* null, i8** %3, align 8
  br label %53

53:                                               ; preds = %52, %43
  %54 = load i8*, i8** %3, align 8
  ret i8* %54
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strcasestr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i8* @strndup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
