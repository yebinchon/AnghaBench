; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/tests/functional/tmpfile/extr_tmpfile_test.c_main.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/tests/functional/tmpfile/extr_tmpfile_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Usage: %s dir\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"\22%s\22 is not a directory\0A\00", align 1
@O_TMPFILE = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EISDIR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"The kernel doesn't support O_TMPFILE\0A\00", align 1
@EOPNOTSUPP = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"The filesystem doesn't support O_TMPFILE\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"open\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32, i32* @stderr, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i32 2, i32* %3, align 4
  br label %66

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @stat(i8* %19, %struct.stat* %7)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  br label %66

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @S_ISDIR(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @stderr, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  store i32 2, i32* %3, align 4
  br label %66

35:                                               ; preds = %24
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* @O_TMPFILE, align 4
  %40 = load i32, i32* @O_WRONLY, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @open(i8* %38, i32 %41, i32 438)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %35
  %46 = load i64, i64* @errno, align 8
  %47 = load i64, i64* @EISDIR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @stderr, align 4
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %66

52:                                               ; preds = %45
  %53 = load i64, i64* @errno, align 8
  %54 = load i64, i64* @EOPNOTSUPP, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @stderr, align 4
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  br label %66

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59
  %61 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %65

62:                                               ; preds = %35
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @close(i32 %63)
  br label %65

65:                                               ; preds = %62, %60
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %56, %49, %29, %22, %10
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
