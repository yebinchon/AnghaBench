; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_iter.c_vdev_run_cmd_thread.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_iter.c_vdev_run_cmd_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@MAXPATHLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@X_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vdev_run_cmd_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_run_cmd_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %3, align 8
  store i8* null, i8** %4, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @strdup(i32 %17)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %73

22:                                               ; preds = %1
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** %6, align 8
  br label %24

24:                                               ; preds = %69, %66, %22
  %25 = load i8*, i8** %6, align 8
  %26 = call i8* @strtok_r(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %6)
  store i8* %26, i8** %4, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %70

28:                                               ; preds = %24
  store i8* null, i8** %7, align 8
  %29 = load i32, i32* @MAXPATHLEN, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %10, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %11, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i32* @strchr(i8* %33, i8 signext 47)
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 2, i32* %12, align 4
  br label %66

37:                                               ; preds = %28
  %38 = call i8* (...) @zpool_get_cmd_search_path()
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 2, i32* %12, align 4
  br label %66

42:                                               ; preds = %37
  %43 = load i8*, i8** %8, align 8
  store i8* %43, i8** %9, align 8
  br label %44

44:                                               ; preds = %62, %54, %42
  %45 = load i8*, i8** %9, align 8
  %46 = call i8* @strtok_r(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %9)
  store i8* %46, i8** %7, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = trunc i64 %30 to i32
  %50 = load i8*, i8** %7, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @snprintf(i8* %32, i32 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %50, i8* %51)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %44

55:                                               ; preds = %48
  %56 = load i32, i32* @X_OK, align 4
  %57 = call i64 @access(i8* %32, i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %61 = call i32 @vdev_run_cmd(%struct.TYPE_3__* %60, i8* %32)
  br label %63

62:                                               ; preds = %55
  br label %44

63:                                               ; preds = %59, %44
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @free(i8* %64)
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %63, %41, %36
  %67 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %12, align 4
  switch i32 %68, label %74 [
    i32 0, label %69
    i32 2, label %24
  ]

69:                                               ; preds = %66
  br label %24

70:                                               ; preds = %24
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @free(i8* %71)
  br label %73

73:                                               ; preds = %70, %21
  ret void

74:                                               ; preds = %66
  unreachable
}

declare dso_local i8* @strdup(i32) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i8* @zpool_get_cmd_search_path(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @vdev_run_cmd(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
