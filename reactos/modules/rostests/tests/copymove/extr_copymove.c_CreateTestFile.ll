; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/copymove/extr_copymove.c_CreateTestFile.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/copymove/extr_copymove.c_CreateTestFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"CreateFile failed with code %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"WriteFile failed with code %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"SetFileAttributes failed with code %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @CreateTestFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CreateTestFile(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [4096 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @DeleteTestFile(i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @GENERIC_READ, align 4
  %13 = load i32, i32* @GENERIC_WRITE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @CREATE_ALWAYS, align 4
  %16 = call i64 @CreateFile(i32 %11, i32 %14, i32 0, i32* null, i32 %15, i32 0, i32 0)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 (...) @GetLastError()
  %23 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = call i32 @exit(i32 1) #3
  unreachable

25:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %36, %25
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %28, 4096
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = trunc i32 %31 to i8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 %34
  store i8 %32, i8* %35, align 1
  br label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %26

39:                                               ; preds = %26
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %42 = call i32 @WriteFile(i64 %40, i8* %41, i32 4096, i32* %7, i32* null)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 (...) @GetLastError()
  %47 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = call i32 @exit(i32 1) #3
  unreachable

49:                                               ; preds = %39
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @CloseHandle(i64 %50)
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @SetFileAttributes(i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @stderr, align 4
  %58 = call i32 (...) @GetLastError()
  %59 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = call i32 @exit(i32 1) #3
  unreachable

61:                                               ; preds = %49
  ret void
}

declare dso_local i32 @DeleteTestFile(i32) #1

declare dso_local i64 @CreateFile(i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @WriteFile(i64, i8*, i32, i32*, i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @SetFileAttributes(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
