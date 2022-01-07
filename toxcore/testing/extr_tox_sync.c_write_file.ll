; ModuleID = '/home/carl/AnghaBench/toxcore/testing/extr_tox_sync.c_write_file.c'
source_filename = "/home/carl/AnghaBench/toxcore/testing/extr_tox_sync.c_write_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@file_recv = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"File closed\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%u file transfer: %u completed\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Error writing data\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_file(i32* %0, i32 %1, i32 %2, i32 %3, i64* %4, i64 %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  store i8* %6, i8** %14, align 8
  %16 = load i32, i32* %10, align 4
  %17 = ashr i32 %16, 16
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %15, align 8
  %20 = load i64, i64* %13, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %7
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_recv, align 8
  %24 = load i64, i64* %15, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @fclose(i64 %27)
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_recv, align 8
  %31 = load i64, i64* %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35)
  br label %65

37:                                               ; preds = %7
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_recv, align 8
  %39 = load i64, i64* %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %37
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_recv, align 8
  %46 = load i64, i64* %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @SEEK_SET, align 4
  %52 = call i32 @fseek(i64 %49, i32 %50, i32 %51)
  %53 = load i64*, i64** %12, align 8
  %54 = load i64, i64* %13, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_recv, align 8
  %56 = load i64, i64* %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @fwrite(i64* %53, i64 %54, i32 1, i64 %59)
  %61 = icmp ne i32 %60, 1
  br i1 %61, label %62, label %64

62:                                               ; preds = %44
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %44
  br label %65

65:                                               ; preds = %22, %64, %37
  ret void
}

declare dso_local i32 @fclose(i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fseek(i64, i32, i32) #1

declare dso_local i32 @fwrite(i64*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
