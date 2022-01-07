; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/copymove/extr_copymove.c_CheckTestFile.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/copymove/extr_copymove.c_CheckTestFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GENERIC_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"CreateFile failed with code %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"ReadFile failed with code %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Trying to read %u bytes but got %lu bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"File contents changed at position %u\0A\00", align 1
@INVALID_FILE_ATTRIBUTES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"GetFileAttributes failed with code %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"Attribute mismatch, expected 0x%08lx found 0x%08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @CheckTestFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CheckTestFile(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [4096 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @GENERIC_READ, align 4
  %12 = load i32, i32* @OPEN_EXISTING, align 4
  %13 = call i64 @CreateFile(i32 %10, i32 %11, i32 0, i32* null, i32 %12, i32 0, i32 0)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 (...) @GetLastError()
  %20 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = call i32 @exit(i32 1) #3
  unreachable

22:                                               ; preds = %2
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %25 = call i32 @ReadFile(i64 %23, i8* %24, i32 4096, i32* %7, i32* null)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 (...) @GetLastError()
  %30 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = call i32 @exit(i32 1) #3
  unreachable

32:                                               ; preds = %22
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, 4096
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* @stderr, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 4096, i32 %38)
  %40 = call i32 @exit(i32 1) #3
  unreachable

41:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %62, %41
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ult i64 %44, 4096
  br i1 %45, label %46, label %65

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = load i32, i32* %8, align 4
  %53 = trunc i32 %52 to i8
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load i32, i32* @stderr, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = call i32 @exit(i32 1) #3
  unreachable

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %42

65:                                               ; preds = %42
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @CloseHandle(i64 %66)
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @GetFileAttributes(i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* @INVALID_FILE_ATTRIBUTES, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = load i32, i32* @stderr, align 4
  %75 = call i32 (...) @GetLastError()
  %76 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  %77 = call i32 @exit(i32 1) #3
  unreachable

78:                                               ; preds = %65
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load i32, i32* @stderr, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 %84, i32 %85)
  %87 = call i32 @exit(i32 1) #3
  unreachable

88:                                               ; preds = %78
  ret void
}

declare dso_local i64 @CreateFile(i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @GetLastError(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @ReadFile(i64, i8*, i32, i32*, i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @GetFileAttributes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
