; ModuleID = '/home/carl/AnghaBench/vlc/src/config/extr_file.c_config_CreateDir.c'
source_filename = "/home/carl/AnghaBench/vlc/src/config/extr_file.c_config_CreateDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@DIR_SEP_CHAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"could not create %s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_CreateDir(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12, %2
  store i32 -1, i32* %3, align 4
  br label %64

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @vlc_mkdir(i8* %18, i32 448)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %64

22:                                               ; preds = %17
  %23 = load i32, i32* @errno, align 4
  switch i32 %23, label %58 [
    i32 129, label %24
    i32 128, label %25
  ]

24:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %64

25:                                               ; preds = %22
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = add nsw i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %6, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %7, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @strcpy(i8* %31, i8* %32)
  %34 = load i32, i32* @DIR_SEP_CHAR, align 4
  %35 = call i8* @strrchr(i8* %31, i32 %34)
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %25
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, %31
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load i8*, i8** %8, align 8
  store i8 0, i8* %42, align 1
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @config_CreateDir(i32* %43, i8* %31)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i8*, i8** %5, align 8
  %48 = call i64 @vlc_mkdir(i8* %47, i32 448)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %54

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %41
  br label %53

53:                                               ; preds = %52, %38, %25
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %53, %50
  %55 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %9, align 4
  switch i32 %56, label %66 [
    i32 0, label %57
    i32 1, label %64
  ]

57:                                               ; preds = %54
  br label %58

58:                                               ; preds = %57, %22
  %59 = load i32*, i32** %4, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* @errno, align 4
  %62 = call i32 @vlc_strerror_c(i32 %61)
  %63 = call i32 @msg_Warn(i32* %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %60, i32 %62)
  store i32 -1, i32* %3, align 4
  br label %64

64:                                               ; preds = %58, %54, %24, %21, %16
  %65 = load i32, i32* %3, align 4
  ret i32 %65

66:                                               ; preds = %54
  unreachable
}

declare dso_local i64 @vlc_mkdir(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @msg_Warn(i32*, i8*, i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
