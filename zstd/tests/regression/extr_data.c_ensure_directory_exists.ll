; ModuleID = '/home/carl/AnghaBench/zstd/tests/regression/extr_data.c_ensure_directory_exists.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/regression/extr_data.c_ensure_directory_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"mkdir() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ensure_directory_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ensure_directory_exists(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i8* @strdup(i8* %8)
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %5, align 4
  br label %66

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %60, %15
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %4, align 8
  br label %19

19:                                               ; preds = %32, %16
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 47
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ false, %19 ], [ %28, %24 ]
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %4, align 8
  br label %19

35:                                               ; preds = %29
  %36 = load i8*, i8** %4, align 8
  %37 = load i8, i8* %36, align 1
  store i8 %37, i8* %6, align 1
  %38 = load i8*, i8** %4, align 8
  store i8 0, i8* %38, align 1
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @UTIL_isDirectory(i8* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i8*, i8** %3, align 8
  %42 = load i32, i32* @S_IRWXU, align 4
  %43 = call i32 @mkdir(i8* %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i8, i8* %6, align 1
  %45 = load i8*, i8** %4, align 8
  store i8 %44, i8* %45, align 1
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %35
  %49 = load i32, i32* @errno, align 4
  %50 = load i32, i32* @EEXIST, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %35
  br label %60

56:                                               ; preds = %52, %48
  %57 = load i32, i32* @errno, align 4
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %66

60:                                               ; preds = %55
  %61 = load i8*, i8** %4, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %16, label %65

65:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %56, %13
  %67 = load i8*, i8** %3, align 8
  %68 = call i32 @free(i8* %67)
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @UTIL_isDirectory(i8*) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
