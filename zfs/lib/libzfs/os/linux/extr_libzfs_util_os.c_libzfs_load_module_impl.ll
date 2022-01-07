; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/os/linux/extr_libzfs_util_os.c_libzfs_load_module_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/os/linux/extr_libzfs_util_os.c_libzfs_load_module_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"/sbin/modprobe\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"ZFS_MODULE_LOADING\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@ENOEXEC = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"ZFS_MODULE_TIMEOUT\00", align 1
@ZFS_DEV = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@MILLISEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @libzfs_load_module_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libzfs_load_module_impl(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [4 x i8*], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %12 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %3, align 8
  store i8* %15, i8** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8* null, i8** %16, align 8
  store i64 10, i64* %7, align 8
  store i64 10, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @libzfs_module_loaded(i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %54, label %20

20:                                               ; preds = %1
  %21 = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %27 = call i32 @strncasecmp(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %32 = call i32 @strncasecmp(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %24
  store i32 1, i32* %9, align 4
  br label %36

35:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %35, %34
  br label %37

37:                                               ; preds = %36, %20
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %42 = call i64 @libzfs_run_process(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %41, i32 0)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @ENOEXEC, align 4
  store i32 %45, i32* %2, align 4
  br label %111

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %37
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @libzfs_module_loaded(i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @ENXIO, align 4
  store i32 %52, i32* %2, align 4
  br label %111

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %1
  %55 = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i8* %55, i8** %6, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i8*, i8** %6, align 8
  %60 = call i64 @strtol(i8* %59, i32* null, i32 0)
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @MIN(i64 %61, i32 600)
  %63 = call i64 @MAX(i32 %62, i32 0)
  store i64 %63, i64* %7, align 8
  br label %64

64:                                               ; preds = %58, %54
  %65 = call i64 (...) @gethrtime()
  store i64 %65, i64* %11, align 8
  br label %66

66:                                               ; preds = %99, %64
  %67 = load i32, i32* @ZFS_DEV, align 4
  %68 = load i32, i32* @O_RDWR, align 4
  %69 = call i32 @open(i32 %67, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @close(i32 %73)
  store i32 0, i32* %2, align 4
  br label %111

75:                                               ; preds = %66
  %76 = load i64, i64* @errno, align 8
  %77 = load i64, i64* @ENOENT, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i64, i64* @errno, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %2, align 4
  br label %111

82:                                               ; preds = %75
  %83 = call i64 (...) @gethrtime()
  %84 = load i64, i64* %11, align 8
  %85 = sub nsw i64 %83, %84
  %86 = call i64 @NSEC2MSEC(i64 %85)
  %87 = load i64, i64* %8, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = call i32 (...) @sched_yield()
  br label %96

91:                                               ; preds = %82
  %92 = load i64, i64* @MILLISEC, align 8
  %93 = mul nsw i64 10, %92
  %94 = trunc i64 %93 to i32
  %95 = call i32 @usleep(i32 %94)
  br label %96

96:                                               ; preds = %91, %89
  br label %97

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98
  %100 = call i64 (...) @gethrtime()
  %101 = load i64, i64* %11, align 8
  %102 = sub nsw i64 %100, %101
  %103 = call i64 @NSEC2MSEC(i64 %102)
  %104 = load i64, i64* %7, align 8
  %105 = load i64, i64* @MILLISEC, align 8
  %106 = mul nsw i64 %104, %105
  %107 = icmp slt i64 %103, %106
  br i1 %107, label %66, label %108

108:                                              ; preds = %99
  %109 = load i64, i64* @ENOENT, align 8
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %108, %79, %72, %51, %44
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @libzfs_module_loaded(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @libzfs_run_process(i8*, i8**, i32) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i64 @gethrtime(...) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @NSEC2MSEC(i64) #1

declare dso_local i32 @sched_yield(...) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
