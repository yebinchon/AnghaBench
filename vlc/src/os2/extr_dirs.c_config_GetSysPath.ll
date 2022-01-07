; ModuleID = '/home/carl/AnghaBench/vlc/src/os2/extr_dirs.c_config_GetSysPath.c'
source_filename = "/home/carl/AnghaBench/vlc/src/os2/extr_dirs.c_config_GetSysPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYSDATADIR = common dso_local global i32 0, align 4
@LOCALEDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

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
  switch i32 %8, label %21 [
    i32 131, label %9
    i32 129, label %11
    i32 130, label %13
    i32 128, label %15
    i32 132, label %18
  ]

9:                                                ; preds = %2
  %10 = call i8* (...) @config_GetDataDir()
  store i8* %10, i8** %6, align 8
  br label %23

11:                                               ; preds = %2
  %12 = call i8* (...) @config_GetLibDir()
  store i8* %12, i8** %6, align 8
  br label %23

13:                                               ; preds = %2
  %14 = call i8* (...) @config_GetLibExecDir()
  store i8* %14, i8** %6, align 8
  br label %23

15:                                               ; preds = %2
  %16 = load i32, i32* @SYSDATADIR, align 4
  %17 = call i8* @config_GetRealDir(i32 %16)
  store i8* %17, i8** %6, align 8
  br label %23

18:                                               ; preds = %2
  %19 = load i32, i32* @LOCALEDIR, align 4
  %20 = call i8* @config_GetRealDir(i32 %19)
  store i8* %20, i8** %6, align 8
  br label %23

21:                                               ; preds = %2
  %22 = call i32 (...) @vlc_assert_unreachable()
  br label %23

23:                                               ; preds = %21, %18, %15, %13, %11, %9
  %24 = load i8*, i8** %5, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %6, align 8
  %28 = icmp eq i8* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26, %23
  %33 = load i8*, i8** %6, align 8
  store i8* %33, i8** %3, align 8
  br label %41

34:                                               ; preds = %26
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @asprintf(i8** %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %36)
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @free(i8* %38)
  %40 = load i8*, i8** %7, align 8
  store i8* %40, i8** %3, align 8
  br label %41

41:                                               ; preds = %34, %32
  %42 = load i8*, i8** %3, align 8
  ret i8* %42
}

declare dso_local i8* @config_GetDataDir(...) #1

declare dso_local i8* @config_GetLibDir(...) #1

declare dso_local i8* @config_GetLibExecDir(...) #1

declare dso_local i8* @config_GetRealDir(i32) #1

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
