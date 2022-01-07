; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/xattrtest/extr_xattrtest.c_run_process.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/xattrtest/extr_xattrtest.c_run_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @run_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_process(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %10 = call i64 (...) @vfork()
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %2
  %14 = load i32, i32* @O_WRONLY, align 4
  %15 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 @_exit(i32 -1) #3
  unreachable

20:                                               ; preds = %13
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @STDOUT_FILENO, align 4
  %23 = call i32 @dup2(i32 %21, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @STDERR_FILENO, align 4
  %26 = call i32 @dup2(i32 %24, i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @close(i32 %27)
  %29 = load i8*, i8** %4, align 8
  %30 = load i8**, i8*** %5, align 8
  %31 = call i32 @execvp(i8* %29, i8** %30)
  %32 = call i32 @_exit(i32 -1) #3
  unreachable

33:                                               ; preds = %2
  %34 = load i64, i64* %6, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %47, %36
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @waitpid(i64 %38, i32* %9, i32 0)
  store i32 %39, i32* %7, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @EINTR, align 8
  %44 = icmp eq i64 %42, %43
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i1 [ false, %37 ], [ %44, %41 ]
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  br label %37

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @WIFEXITED(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51, %48
  store i32 -1, i32* %3, align 4
  br label %61

56:                                               ; preds = %51
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @WEXITSTATUS(i32 %57)
  store i32 %58, i32* %3, align 4
  br label %61

59:                                               ; preds = %33
  br label %60

60:                                               ; preds = %59
  store i32 -1, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %56, %55
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @vfork(...) #1

declare dso_local i32 @open(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i32 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
