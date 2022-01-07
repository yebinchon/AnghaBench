; ModuleID = '/home/carl/AnghaBench/systemd/src/tmpfiles/extr_tmpfiles.c_xopendirat_nomod.c'
source_filename = "/home/carl/AnghaBench/systemd/src/tmpfiles/extr_tmpfiles.c_xopendirat_nomod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_NOFOLLOW = common dso_local global i32 0, align 4
@O_NOATIME = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Cannot open %sdirectory \22%s\22: %m\00", align 1
@AT_FDCWD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@EPERM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i8*)* @xopendirat_nomod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xopendirat_nomod(i32 %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* @O_NOFOLLOW, align 4
  %10 = load i32, i32* @O_NOATIME, align 4
  %11 = or i32 %9, %10
  %12 = call i32* @xopendirat(i32 %7, i8* %8, i32 %11)
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32*, i32** %6, align 8
  store i32* %16, i32** %3, align 8
  br label %48

17:                                               ; preds = %2
  %18 = load i64, i64* @errno, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @AT_FDCWD, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @log_debug_errno(i64 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %24)
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @EPERM, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  store i32* null, i32** %3, align 8
  br label %48

30:                                               ; preds = %17
  %31 = load i32, i32* %4, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* @O_NOFOLLOW, align 4
  %34 = call i32* @xopendirat(i32 %31, i8* %32, i32 %33)
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %30
  %38 = load i64, i64* @errno, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @AT_FDCWD, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @log_debug_errno(i64 %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %43, i8* %44)
  br label %46

46:                                               ; preds = %37, %30
  %47 = load i32*, i32** %6, align 8
  store i32* %47, i32** %3, align 8
  br label %48

48:                                               ; preds = %46, %29, %15
  %49 = load i32*, i32** %3, align 8
  ret i32* %49
}

declare dso_local i32* @xopendirat(i32, i8*, i32) #1

declare dso_local i32 @log_debug_errno(i64, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
