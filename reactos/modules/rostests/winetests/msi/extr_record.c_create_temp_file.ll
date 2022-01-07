; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_record.c_create_temp_file.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_record.c_create_temp_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"msitest\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @create_temp_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_temp_file(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [26 x i8], align 16
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @GetTempFileNameA(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  store i64 %14, i64* %2, align 8
  br label %51

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* @GENERIC_READ, align 4
  %18 = load i32, i32* @GENERIC_WRITE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @CREATE_ALWAYS, align 4
  %21 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %22 = call i64 @CreateFileA(i8* %16, i32 %19, i32 0, i32* null, i32 %20, i32 %21, i32* null)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %2, align 8
  br label %51

28:                                               ; preds = %15
  store i8 0, i8* %6, align 1
  br label %29

29:                                               ; preds = %41, %28
  %30 = load i8, i8* %6, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp slt i32 %31, 26
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i8, i8* %6, align 1
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %35, 97
  %37 = trunc i32 %36 to i8
  %38 = load i8, i8* %6, align 1
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds [26 x i8], [26 x i8]* %5, i64 0, i64 %39
  store i8 %37, i8* %40, align 1
  br label %41

41:                                               ; preds = %33
  %42 = load i8, i8* %6, align 1
  %43 = add i8 %42, 1
  store i8 %43, i8* %6, align 1
  br label %29

44:                                               ; preds = %29
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds [26 x i8], [26 x i8]* %5, i64 0, i64 0
  %47 = call i64 @WriteFile(i64 %45, i8* %46, i32 26, i32* %7, i32* null)
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @CloseHandle(i64 %48)
  %50 = load i64, i64* %4, align 8
  store i64 %50, i64* %2, align 8
  br label %51

51:                                               ; preds = %44, %26, %13
  %52 = load i64, i64* %2, align 8
  ret i64 %52
}

declare dso_local i64 @GetTempFileNameA(i8*, i8*, i32, i8*) #1

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @WriteFile(i64, i8*, i32, i32*, i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
