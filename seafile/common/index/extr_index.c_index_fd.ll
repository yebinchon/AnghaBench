; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_index.c_index_fd.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_index.c_index_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@SMALL_FILE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"short read %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @index_fd(i8* %0, i32 %1, %struct.TYPE_3__* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %12, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %5
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %12, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 @index_mem(i8* %21, i8* null, i64 %22, i32 %23, i8* %24)
  store i32 %25, i32* %11, align 4
  br label %69

26:                                               ; preds = %5
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* @SMALL_FILE_SIZE, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %26
  %31 = load i64, i64* %12, align 8
  %32 = call i8* @malloc(i64 %31)
  store i8* %32, i8** %13, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i8*, i8** %13, align 8
  %36 = load i64, i64* %12, align 8
  %37 = call i64 @readn(i32 %34, i8* %35, i64 %36)
  %38 = icmp eq i64 %33, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %30
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @index_mem(i8* %40, i8* %41, i64 %42, i32 %43, i8* %44)
  store i32 %45, i32* %11, align 4
  br label %50

46:                                               ; preds = %30
  %47 = load i32, i32* @errno, align 4
  %48 = call i32 @strerror(i32 %47)
  %49 = call i32 @seaf_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %48)
  store i32 -1, i32* %11, align 4
  br label %50

50:                                               ; preds = %46, %39
  %51 = load i8*, i8** %13, align 8
  %52 = call i32 @free(i8* %51)
  br label %68

53:                                               ; preds = %26
  %54 = load i64, i64* %12, align 8
  %55 = load i32, i32* @PROT_READ, align 4
  %56 = load i32, i32* @MAP_PRIVATE, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i8* @mmap(i32* null, i64 %54, i32 %55, i32 %56, i32 %57, i32 0)
  store i8* %58, i8** %14, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @index_mem(i8* %59, i8* %60, i64 %61, i32 %62, i8* %63)
  store i32 %64, i32* %11, align 4
  %65 = load i8*, i8** %14, align 8
  %66 = load i64, i64* %12, align 8
  %67 = call i32 @munmap(i8* %65, i64 %66)
  br label %68

68:                                               ; preds = %53, %50
  br label %69

69:                                               ; preds = %68, %20
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @close(i32 %70)
  %72 = load i32, i32* %11, align 4
  ret i32 %72
}

declare dso_local i32 @index_mem(i8*, i8*, i64, i32, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @readn(i32, i8*, i64) #1

declare dso_local i32 @seaf_warning(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @munmap(i8*, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
