; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/regtests2xml/extr_regtests2xml.c_read_file.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/regtests2xml/extr_regtests2xml.c_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@file_handle = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Can't open %s\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@file_size = common dso_local global i64 0, align 8
@file_buffer = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Read error in file %s\0A\00", align 1
@file_pointer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @read_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32* @fopen(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %4, i32** @file_handle, align 8
  %5 = load i32*, i32** @file_handle, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %8)
  %10 = call i32 @exit(i32 1) #3
  unreachable

11:                                               ; preds = %1
  %12 = load i32*, i32** @file_handle, align 8
  %13 = load i32, i32* @SEEK_END, align 4
  %14 = call i32 @fseek(i32* %12, i32 0, i32 %13)
  %15 = load i32*, i32** @file_handle, align 8
  %16 = call i64 @ftell(i32* %15)
  store i64 %16, i64* @file_size, align 8
  %17 = load i64, i64* @file_size, align 8
  %18 = call i32* @malloc(i64 %17)
  store i32* %18, i32** @file_buffer, align 8
  %19 = load i32*, i32** @file_buffer, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %11
  %22 = load i32*, i32** @file_handle, align 8
  %23 = call i32 @fclose(i32* %22)
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i32 @exit(i32 1) #3
  unreachable

26:                                               ; preds = %11
  %27 = load i32*, i32** @file_handle, align 8
  %28 = load i32, i32* @SEEK_SET, align 4
  %29 = call i32 @fseek(i32* %27, i32 0, i32 %28)
  %30 = load i64, i64* @file_size, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load i32*, i32** @file_buffer, align 8
  %34 = load i64, i64* @file_size, align 8
  %35 = load i32*, i32** @file_handle, align 8
  %36 = call i32 @fread(i32* %33, i32 1, i64 %34, i32* %35)
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i32*, i32** @file_handle, align 8
  %40 = call i32 @fclose(i32* %39)
  %41 = load i8*, i8** %2, align 8
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  %43 = call i32 @exit(i32 1) #3
  unreachable

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %26
  store i64 0, i64* @file_pointer, align 8
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fread(i32*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
