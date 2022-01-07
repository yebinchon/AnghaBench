; ModuleID = '/home/carl/AnghaBench/toxcore/testing/extr_nTox.c_add_filesender.c'
source_filename = "/home/carl/AnghaBench/toxcore/testing/extr_nTox.c_add_filesender.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@TOX_FILE_KIND_DATA = common dso_local global i32 0, align 4
@file_senders = common dso_local global %struct.TYPE_2__* null, align 8
@numfilesenders = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_filesender(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32* @fopen(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %56

16:                                               ; preds = %3
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* @SEEK_END, align 4
  %19 = call i32 @fseek(i32* %17, i32 0, i32 %18)
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @ftell(i32* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* @SEEK_SET, align 4
  %24 = call i32 @fseek(i32* %22, i32 0, i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @TOX_FILE_KIND_DATA, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = bitcast i8* %29 to i32*
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = call i32 @tox_file_send(i32* %25, i32 %26, i32 %27, i32 %28, i32 0, i32* %30, i32 %32, i32 0)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %56

37:                                               ; preds = %16
  %38 = load i32*, i32** %8, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_senders, align 8
  %40 = load i64, i64* @numfilesenders, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store i32* %38, i32** %42, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_senders, align 8
  %45 = load i64, i64* @numfilesenders, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_senders, align 8
  %50 = load i64, i64* @numfilesenders, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 8
  %53 = load i64, i64* @numfilesenders, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* @numfilesenders, align 8
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %37, %36, %15
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i32 @tox_file_send(i32*, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
