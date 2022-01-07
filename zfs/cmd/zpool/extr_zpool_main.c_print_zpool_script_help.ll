; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_print_zpool_script_help.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_print_zpool_script_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"  %-14s  %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @print_zpool_script_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_zpool_script_help(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [3 x i8*], align 16
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 0
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %10, align 8
  %12 = getelementptr inbounds i8*, i8** %10, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  store i8* null, i8** %13, align 8
  store i8** null, i8*** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 0
  %16 = call i32 @libzfs_run_process_get_stdout_nopath(i8* %14, i8** %15, i32* null, i8*** %6, i32* %7)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load i8**, i8*** %6, align 8
  %21 = icmp eq i8** %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22, %19, %2
  %26 = load i8**, i8*** %6, align 8
  %27 = icmp ne i8** %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i8**, i8*** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @libzfs_free_str_array(i8** %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %25
  br label %62

33:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %55, %33
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %34
  %39 = load i8**, i8*** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @is_blank_str(i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %38
  %47 = load i8*, i8** %3, align 8
  %48 = load i8**, i8*** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %47, i8* %52)
  br label %54

54:                                               ; preds = %46, %38
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %34

58:                                               ; preds = %34
  %59 = load i8**, i8*** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @libzfs_free_str_array(i8** %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %32
  ret void
}

declare dso_local i32 @libzfs_run_process_get_stdout_nopath(i8*, i8**, i32*, i8***, i32*) #1

declare dso_local i32 @libzfs_free_str_array(i8**, i32) #1

declare dso_local i32 @is_blank_str(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
