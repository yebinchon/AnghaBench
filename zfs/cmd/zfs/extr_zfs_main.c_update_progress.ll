; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_update_progress.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_update_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pt_shown = common dso_local global i64 0, align 8
@pt_begin = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"%s: %s%*.*s\00", align 1
@pt_header = common dso_local global i8* null, align 8
@pt_reverse = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%s%*.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @update_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_progress(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i64, i64* @pt_shown, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %1
  %8 = call i64 @time(i32* null)
  %9 = load i64, i64* @pt_begin, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @strlen(i8* %12)
  store i32 %13, i32* %3, align 4
  %14 = load i8*, i8** @pt_header, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @pt_reverse, align 4
  %19 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %15, i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* @stdout, align 4
  %21 = call i32 @fflush(i32 %20)
  %22 = load i64, i64* @B_TRUE, align 8
  store i64 %22, i64* @pt_shown, align 8
  br label %37

23:                                               ; preds = %7, %1
  %24 = load i64, i64* @pt_shown, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 @strlen(i8* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i8*, i8** %2, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @pt_reverse, align 4
  %33 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %29, i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* @stdout, align 4
  %35 = call i32 @fflush(i32 %34)
  br label %36

36:                                               ; preds = %26, %23
  br label %37

37:                                               ; preds = %36, %11
  ret void
}

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
