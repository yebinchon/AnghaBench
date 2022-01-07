; ModuleID = '/home/carl/AnghaBench/zstd/tests/regression/extr_data.c_data_buffer_read.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/regression/extr_data.c_data_buffer_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32* }

@UTIL_FILESIZE_UNKNOWN = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unknown size for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"malloc failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"file null\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"read %zu != %zu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @data_buffer_read(%struct.TYPE_4__* noalias sret %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store i8* %1, i8** %3, align 8
  %6 = bitcast %struct.TYPE_4__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 24, i1 false)
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @UTIL_getFileSize(i8* %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @UTIL_FILESIZE_UNKNOWN, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @stderr, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %65

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @malloc(i64 %17)
  %19 = inttoptr i64 %18 to i32*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  store i32* %19, i32** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %65

27:                                               ; preds = %16
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  store i64 %28, i64* %29, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = call i32* @fopen(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %31, i32** %5, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %60

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i64 @fread(i32* %39, i32 1, i64 %41, i32* %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  store i64 %43, i64* %44, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @fclose(i32* %45)
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %48, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %37
  %53 = load i32, i32* @stderr, align 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %55, i64 %57)
  br label %60

59:                                               ; preds = %37
  br label %65

60:                                               ; preds = %52, %34
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @free(i32* %62)
  %64 = call i32 @memset(%struct.TYPE_4__* %0, i32 0, i32 24)
  br label %65

65:                                               ; preds = %60, %59, %24, %12
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @UTIL_getFileSize(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i64 @malloc(i64) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i64 @fread(i32*, i32, i64, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
