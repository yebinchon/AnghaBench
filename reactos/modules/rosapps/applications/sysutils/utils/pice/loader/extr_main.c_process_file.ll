; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/loader/extr_main.c_process_file.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/loader/extr_main.c_process_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@_O_BINARY = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"LOADER: file %s is %u bytes\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"LOADER: file %s could not be opened\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %6, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = load i32, i32* @O_RDONLY, align 4
  %10 = load i32, i32* @_O_BINARY, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @_open(i8* %8, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @SEEK_END, align 4
  %18 = call i32 @_lseek(i32 %16, i32 0, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i8*, i8** %2, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @SEEK_SET, align 4
  %24 = call i32 @_lseek(i32 %22, i32 0, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 16
  %27 = call i8* @malloc(i32 %26)
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %15
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 16
  %34 = call i32 @memset(i8* %31, i32 0, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = load i32, i32* %3, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @_read(i32 %37, i8* %38, i32 %39)
  store i64 %40, i64* %7, align 8
  %41 = icmp eq i64 %36, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load i8*, i8** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @process_pe(i8* %43, i32 %44, i8* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %42, %30
  br label %49

49:                                               ; preds = %48, %15
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @_close(i32 %50)
  br label %55

52:                                               ; preds = %1
  %53 = load i8*, i8** %2, align 8
  %54 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  store i32 1, i32* %6, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @_open(i8*, i32) #1

declare dso_local i32 @_lseek(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @_read(i32, i8*, i32) #1

declare dso_local i32 @process_pe(i8*, i32, i8*, i32) #1

declare dso_local i32 @_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
