; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_disk.c_disk_close.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_disk.c_disk_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.fileinfo* }
%struct.fileinfo = type { i8*, i8*, i64 }

@True = common dso_local global i32 0, align 4
@STATUS_CANCELLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"closedir\00", align 1
@STATUS_INVALID_HANDLE = common dso_local global i32 0, align 4
@STATUS_ACCESS_DENIED = common dso_local global i32 0, align 4
@False = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64)* @disk_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disk_close(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fileinfo*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %9, i64 %10
  store %struct.fileinfo* %11, %struct.fileinfo** %6, align 8
  %12 = load i32, i32* @True, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* @STATUS_CANCELLED, align 4
  %18 = call i32 @rdpdr_abort_io(%struct.TYPE_4__* %15, i64 %16, i32 0, i32 %17)
  %19 = load %struct.fileinfo*, %struct.fileinfo** %6, align 8
  %20 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %54

23:                                               ; preds = %2
  %24 = load %struct.fileinfo*, %struct.fileinfo** %6, align 8
  %25 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @closedir(i64 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @STATUS_INVALID_HANDLE, align 4
  store i32 %31, i32* %3, align 4
  br label %85

32:                                               ; preds = %23
  %33 = load %struct.fileinfo*, %struct.fileinfo** %6, align 8
  %34 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load %struct.fileinfo*, %struct.fileinfo** %6, align 8
  %39 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @rmdir(i8* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.fileinfo*, %struct.fileinfo** %6, align 8
  %45 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @perror(i8* %46)
  %48 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  store i32 %48, i32* %3, align 4
  br label %85

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %32
  %51 = load i8*, i8** @False, align 8
  %52 = load %struct.fileinfo*, %struct.fileinfo** %6, align 8
  %53 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  br label %83

54:                                               ; preds = %2
  %55 = load i64, i64* %5, align 8
  %56 = call i64 @close(i64 %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @STATUS_INVALID_HANDLE, align 4
  store i32 %60, i32* %3, align 4
  br label %85

61:                                               ; preds = %54
  %62 = load %struct.fileinfo*, %struct.fileinfo** %6, align 8
  %63 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load %struct.fileinfo*, %struct.fileinfo** %6, align 8
  %68 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @unlink(i8* %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.fileinfo*, %struct.fileinfo** %6, align 8
  %74 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @perror(i8* %75)
  %77 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  store i32 %77, i32* %3, align 4
  br label %85

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78, %61
  %80 = load i8*, i8** @False, align 8
  %81 = load %struct.fileinfo*, %struct.fileinfo** %6, align 8
  %82 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %79, %50
  %84 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %72, %58, %43, %29
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @rdpdr_abort_io(%struct.TYPE_4__*, i64, i32, i32) #1

declare dso_local i64 @closedir(i64) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @rmdir(i8*) #1

declare dso_local i64 @close(i64) #1

declare dso_local i64 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
