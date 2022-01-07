; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/isotest/extr_isotest.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/isotest/extr_isotest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Usage: isotest [Drive:]\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\\\\.\\\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"CreateFile(): Invalid disk handle!\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Out of memory!\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@FILE_BEGIN = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [80 x i32], align 16
  %10 = alloca %struct.TYPE_5__, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %65

15:                                               ; preds = %2
  %16 = getelementptr inbounds [80 x i32], [80 x i32]* %9, i64 0, i64 0
  %17 = call i32 @strcpy(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %18 = getelementptr inbounds [80 x i32], [80 x i32]* %9, i64 0, i64 0
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strcat(i32* %18, i8* %21)
  %23 = getelementptr inbounds [80 x i32], [80 x i32]* %9, i64 0, i64 0
  %24 = load i32, i32* @GENERIC_READ, align 4
  %25 = load i32, i32* @FILE_SHARE_READ, align 4
  %26 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @OPEN_EXISTING, align 4
  %29 = call i64 @CreateFile(i32* %23, i32 %24, i32 %27, i32* null, i32 %28, i32 0, i32* null)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %15
  %34 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %65

35:                                               ; preds = %15
  %36 = call i64 @malloc(i32 2048)
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @CloseHandle(i64 %41)
  %43 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %65

44:                                               ; preds = %35
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @memset(i8* %45, i32 0, i32 2048)
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 32768, i32* %47, align 4
  %48 = load i64, i64* %6, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i64 @ReadBlock(i64 %48, i8* %49, %struct.TYPE_5__* %10, i32 2048, i32* %7)
  %51 = load i64, i64* @FALSE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %44
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @CloseHandle(i64 %54)
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @free(i8* %56)
  store i32 0, i32* %3, align 4
  br label %65

58:                                               ; preds = %44
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @HexDump(i8* %59, i32 128)
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @CloseHandle(i64 %61)
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @free(i8* %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %58, %53, %40, %33, %13
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @strcpy(i32*, i8*) #1

declare dso_local i32 @strcat(i32*, i8*) #1

declare dso_local i64 @CreateFile(i32*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @ReadBlock(i64, i8*, %struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @HexDump(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
