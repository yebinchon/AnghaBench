; ModuleID = '/home/carl/AnghaBench/wcdb/backup/extr_mm_recover.c_mm_recover_init.c'
source_filename = "/home/carl/AnghaBench/wcdb/backup/extr_mm_recover.c_mm_recover_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, i32 (i32, i8*)* }

@MMBAK_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Memory allocation failed.\00", align 1
@MMBAK_FLAG_NO_CIPHER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Cannot open file '%s' for reading: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"Database recover context initialized. [input: %s]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @mm_recover_init(i8* %0, i8* %1, i32 %2, i32 (i32, i8*)* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (i32, i8*)*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 (i32, i8*)* %3, i32 (i32, i8*)** %9, align 8
  %11 = load i32 (i32, i8*)*, i32 (i32, i8*)** %9, align 8
  %12 = icmp ne i32 (i32, i8*)* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i32 (i32, i8*)* @dummy_log, i32 (i32, i8*)** %9, align 8
  br label %14

14:                                               ; preds = %13, %4
  %15 = call i64 @malloc(i32 32)
  %16 = inttoptr i64 %15 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %10, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i32 (i32, i8*)*, i32 (i32, i8*)** %9, align 8
  %21 = load i32, i32* @MMBAK_LOG_ERROR, align 4
  %22 = call i32 %20(i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %89

23:                                               ; preds = %14
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %25 = call i32 @memset(%struct.TYPE_6__* %24, i32 0, i32 32)
  %26 = load i32 (i32, i8*)*, i32 (i32, i8*)** %9, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 4
  store i32 (i32, i8*)* %26, i32 (i32, i8*)** %28, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  %37 = load i32, i32* %8, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @RC4_set_key(i32* %36, i32 %37, i8* %38)
  br label %46

40:                                               ; preds = %31, %23
  %41 = load i32, i32* @MMBAK_FLAG_NO_CIPHER, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %34
  %47 = load i8*, i8** %6, align 8
  %48 = call i64 @fopen(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %46
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* @errno, align 4
  %58 = call i32 @strerror(i32 %57)
  %59 = call i32 @LOG_AND_FAIL(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %56, i32 %58)
  br label %60

60:                                               ; preds = %55, %46
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %62 = call i64 @read_header(%struct.TYPE_6__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %69

65:                                               ; preds = %60
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @LOGI(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %66)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %68, %struct.TYPE_6__** %5, align 8
  br label %89

69:                                               ; preds = %64
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %71 = icmp ne %struct.TYPE_6__* %70, null
  br i1 %71, label %72, label %88

72:                                               ; preds = %69
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = call i32 @inflateEnd(i32* %74)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @fclose(i64 %83)
  br label %85

85:                                               ; preds = %80, %72
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %87 = call i32 @free(%struct.TYPE_6__* %86)
  br label %88

88:                                               ; preds = %85, %69
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %89

89:                                               ; preds = %88, %65, %19
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  ret %struct.TYPE_6__* %90
}

declare dso_local i32 @dummy_log(i32, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @RC4_set_key(i32*, i32, i8*) #1

declare dso_local i64 @fopen(i8*, i8*) #1

declare dso_local i32 @LOG_AND_FAIL(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @read_header(%struct.TYPE_6__*) #1

declare dso_local i32 @LOGI(i8*, i8*) #1

declare dso_local i32 @inflateEnd(i32*) #1

declare dso_local i32 @fclose(i64) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
