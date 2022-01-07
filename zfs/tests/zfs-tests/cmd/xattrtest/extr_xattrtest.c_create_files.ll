; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/xattrtest/extr_xattrtest.c_create_files.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/xattrtest/extr_xattrtest.c_create_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Error %d: malloc(%d) bytes for file name\0A\00", align 1
@files = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%s/file-%d\00", align 1
@path = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Error %d: path too long\0A\00", align 1
@nth = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"create: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Error %d: unlink(%s)\0A\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Error %d: open(%s, O_CREATE, 0644)\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Error %d: close(%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"create:   %f seconds %f creates/second\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"post\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @create_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_files() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.timeval, align 4
  %5 = alloca %struct.timeval, align 4
  %6 = alloca double, align 8
  %7 = alloca i64, align 8
  store i8* null, i8** %3, align 8
  %8 = load i32, i32* @PATH_MAX, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i8* @malloc(i64 %10)
  store i8* %11, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %0
  %15 = load i32, i32* @ENOMEM, align 4
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @PATH_MAX, align 4
  %18 = call i32 (i8*, i32, ...) @ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  br label %99

19:                                               ; preds = %0
  %20 = call i32 @gettimeofday(%struct.timeval* %4, i32* null)
  store i32 1, i32* %1, align 4
  br label %21

21:                                               ; preds = %85, %19
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @files, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %88

25:                                               ; preds = %21
  %26 = load i8*, i8** %3, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i8*, i8** @path, align 8
  %29 = load i32, i32* %1, align 4
  %30 = call i64 @snprintf(i8* %26, i64 %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %28, i32 %29)
  %31 = load i64, i64* %7, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = call i32 (i8*, i32, ...) @ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %99

37:                                               ; preds = %25
  %38 = load i32, i32* @nth, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* @nth, align 4
  %43 = srem i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @stdout, align 4
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %45, %40, %37
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @unlink(i8* %50)
  store i32 %51, i32* %2, align 4
  %52 = load i32, i32* %2, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load i32, i32* @errno, align 4
  %56 = load i32, i32* @ENOENT, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32, i32* @errno, align 4
  %60 = load i8*, i8** %3, align 8
  %61 = call i32 (i8*, i32, ...) @ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %59, i8* %60)
  %62 = load i32, i32* @errno, align 4
  store i32 %62, i32* %2, align 4
  br label %99

63:                                               ; preds = %54, %49
  %64 = load i8*, i8** %3, align 8
  %65 = load i32, i32* @O_CREAT, align 4
  %66 = call i32 @open(i8* %64, i32 %65, i32 420)
  store i32 %66, i32* %2, align 4
  %67 = load i32, i32* %2, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load i32, i32* @errno, align 4
  %71 = load i8*, i8** %3, align 8
  %72 = call i32 (i8*, i32, ...) @ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %70, i8* %71)
  %73 = load i32, i32* @errno, align 4
  store i32 %73, i32* %2, align 4
  br label %99

74:                                               ; preds = %63
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @close(i32 %75)
  store i32 %76, i32* %2, align 4
  %77 = load i32, i32* %2, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32, i32* @errno, align 4
  %81 = load i32, i32* %2, align 4
  %82 = call i32 (i8*, i32, ...) @ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load i32, i32* @errno, align 4
  store i32 %83, i32* %2, align 4
  br label %99

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %1, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %1, align 4
  br label %21

88:                                               ; preds = %21
  %89 = call i32 @gettimeofday(%struct.timeval* %5, i32* null)
  %90 = call double @timeval_sub_seconds(%struct.timeval* %5, %struct.timeval* %4)
  store double %90, double* %6, align 8
  %91 = load i32, i32* @stdout, align 4
  %92 = load double, double* %6, align 8
  %93 = load i32, i32* @files, align 4
  %94 = sitofp i32 %93 to double
  %95 = load double, double* %6, align 8
  %96 = fdiv double %94, %95
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), double %92, double %96)
  %98 = call i32 @post_hook(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %88, %79, %69, %58, %33, %14
  %100 = load i8*, i8** %3, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i8*, i8** %3, align 8
  %104 = call i32 @free(i8* %103)
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @ERROR(i8*, i32, ...) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local double @timeval_sub_seconds(%struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @post_hook(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
