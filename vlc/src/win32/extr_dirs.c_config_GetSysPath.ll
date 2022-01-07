; ModuleID = '/home/carl/AnghaBench/vlc/src/win32/extr_dirs.c_config_GetSysPath.c'
source_filename = "/home/carl/AnghaBench/vlc/src/win32/extr_dirs.c_config_GetSysPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @config_GetSysPath(i32 %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %16 [
    i32 131, label %9
    i32 129, label %11
    i32 130, label %11
    i32 128, label %13
    i32 132, label %14
  ]

9:                                                ; preds = %2
  %10 = call i8* (...) @config_GetDataDir()
  store i8* %10, i8** %6, align 8
  br label %18

11:                                               ; preds = %2, %2
  %12 = call i8* (...) @config_GetLibDir()
  store i8* %12, i8** %6, align 8
  br label %18

13:                                               ; preds = %2
  br label %18

14:                                               ; preds = %2
  %15 = call i8* @config_GetSysPath(i32 131, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %6, align 8
  br label %18

16:                                               ; preds = %2
  %17 = call i32 (...) @vlc_assert_unreachable()
  br label %18

18:                                               ; preds = %16, %14, %13, %11, %9
  %19 = load i8*, i8** %5, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load i8*, i8** %6, align 8
  %23 = icmp eq i8* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21, %18
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** %3, align 8
  br label %42

29:                                               ; preds = %21
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @asprintf(i8** %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %30, i8* %31)
  %33 = icmp eq i32 %32, -1
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i8* null, i8** %7, align 8
  br label %38

38:                                               ; preds = %37, %29
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load i8*, i8** %7, align 8
  store i8* %41, i8** %3, align 8
  br label %42

42:                                               ; preds = %38, %27
  %43 = load i8*, i8** %3, align 8
  ret i8* %43
}

declare dso_local i8* @config_GetDataDir(...) #1

declare dso_local i8* @config_GetLibDir(...) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
