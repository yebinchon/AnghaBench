; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_threadtest3.c_filecopy_x.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_threadtest3.c_filecopy_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@SQLITE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"no such file: %s\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*, i8*)* @filecopy_x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filecopy_x(%struct.TYPE_6__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SQLITE_OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %107

18:                                               ; preds = %3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @filesize_x(%struct.TYPE_6__* %19, i8* %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @sqlite3_mprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = call i32 @test_error_x(%struct.TYPE_6__* %25, i32 %27)
  br label %106

29:                                               ; preds = %18
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @unlink(i8* %30)
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* @O_RDONLY, align 4
  %34 = call i32 (i8*, i32, ...) @open(i8* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = load i32, i32* @errno, align 4
  %40 = call i32 @system_error(%struct.TYPE_6__* %38, i32 %39)
  br label %107

41:                                               ; preds = %29
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* @O_RDWR, align 4
  %44 = load i32, i32* @O_CREAT, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @O_EXCL, align 4
  %47 = or i32 %45, %46
  %48 = call i32 (i8*, i32, ...) @open(i8* %42, i32 %47, i32 420)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %41
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = load i32, i32* @errno, align 4
  %54 = call i32 @system_error(%struct.TYPE_6__* %52, i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @close(i32 %55)
  br label %107

57:                                               ; preds = %41
  store i64 0, i64* %8, align 8
  br label %58

58:                                               ; preds = %96, %57
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %101

62:                                               ; preds = %58
  store i32 1024, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %8, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i64, i64* %7, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = sub nsw i64 %70, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %69, %62
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %10, align 4
  %77 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @read(i32 %76, i8* %77, i32 %78)
  %80 = icmp ne i32 %75, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = load i32, i32* @errno, align 4
  %84 = call i32 @system_error(%struct.TYPE_6__* %82, i32 %83)
  br label %101

85:                                               ; preds = %74
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %11, align 4
  %88 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @write(i32 %87, i8* %88, i32 %89)
  %91 = icmp ne i32 %86, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %94 = load i32, i32* @errno, align 4
  %95 = call i32 @system_error(%struct.TYPE_6__* %93, i32 %94)
  br label %101

96:                                               ; preds = %85
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* %8, align 8
  %100 = add nsw i64 %99, %98
  store i64 %100, i64* %8, align 8
  br label %58

101:                                              ; preds = %92, %81, %58
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @close(i32 %102)
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @close(i32 %104)
  br label %106

106:                                              ; preds = %101, %24
  br label %107

107:                                              ; preds = %37, %51, %106, %3
  ret void
}

declare dso_local i64 @filesize_x(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @test_error_x(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i32 @system_error(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
