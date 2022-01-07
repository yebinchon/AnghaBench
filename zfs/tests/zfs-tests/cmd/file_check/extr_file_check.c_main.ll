; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/file_check/extr_file_check.c_main.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/file_check/extr_file_check.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DATA = common dso_local global i8 0, align 1
@BIGBUFFERSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Usage: %s filename [pattern]\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"open %s failed %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@bigbuffer = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"read failed (%ld), %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"error %s: 0x%x != 0x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i8, i8* @DATA, align 1
  store i8 %12, i8* %9, align 1
  %13 = load i32, i32* @BIGBUFFERSIZE, align 4
  store i32 %13, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = call i32 @exit(i32 1) #3
  unreachable

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 2
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 2
  %30 = load i8*, i8** %29, align 8
  %31 = call zeroext i8 @atoi(i8* %30)
  store i8 %31, i8* %9, align 1
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* @O_RDONLY, align 4
  %37 = call i32 @open(i8* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* @errno, align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %42, i32 %43)
  %45 = call i32 @exit(i32 1) #3
  unreachable

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %93, %46
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @read(i32 %48, i8** @bigbuffer, i32 %49)
  store i64 %50, i64* %8, align 8
  %51 = icmp eq i64 %50, -1
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i64, i64* %8, align 8
  %54 = load i32, i32* @errno, align 4
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %53, i32 %54)
  %56 = load i32, i32* @errno, align 4
  %57 = call i32 @exit(i32 %56) #3
  unreachable

58:                                               ; preds = %47
  store i64 0, i64* %7, align 8
  br label %59

59:                                               ; preds = %86, %58
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %89

63:                                               ; preds = %59
  %64 = load i8*, i8** @bigbuffer, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8, i8* %9, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %63
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** @bigbuffer, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* %9, align 1
  %82 = zext i8 %81 to i32
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %75, i32 %80, i32 %82)
  %84 = call i32 @exit(i32 1) #3
  unreachable

85:                                               ; preds = %63
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %7, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %7, align 8
  br label %59

89:                                               ; preds = %59
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* %11, align 8
  %92 = add nsw i64 %91, %90
  store i64 %92, i64* %11, align 8
  br label %93

93:                                               ; preds = %89
  %94 = load i64, i64* %8, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp eq i64 %94, %96
  br i1 %97, label %47, label %98

98:                                               ; preds = %93
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local zeroext i8 @atoi(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @read(i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
