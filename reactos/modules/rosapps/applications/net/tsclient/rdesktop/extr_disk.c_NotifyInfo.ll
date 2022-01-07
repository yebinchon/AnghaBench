; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_disk.c_NotifyInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_disk.c_NotifyInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.fileinfo* }
%struct.fileinfo = type { i8* }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.stat = type { i64, i64 }
%struct.dirent = type { i8* }

@.str = private unnamed_addr constant [11 x i8] c"NotifyInfo\00", align 1
@STATUS_ACCESS_DENIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@STATUS_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64, i32, %struct.TYPE_6__*)* @NotifyInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NotifyInfo(%struct.TYPE_5__* %0, i64 %1, i32 %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.fileinfo*, align 8
  %11 = alloca %struct.stat, align 8
  %12 = alloca %struct.dirent*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.fileinfo*, %struct.fileinfo** %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %17, i64 %18
  store %struct.fileinfo* %19, %struct.fileinfo** %10, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @fstat(i64 %20, %struct.stat* %11)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  store i32 %25, i32* %5, align 4
  br label %111

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  store i64 %28, i64* %30, align 8
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.fileinfo*, %struct.fileinfo** %10, align 8
  %40 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32* @opendir(i8* %41)
  store i32* %42, i32** %14, align 8
  %43 = load i32*, i32** %14, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %26
  %46 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  store i32 %47, i32* %5, align 4
  br label %111

48:                                               ; preds = %26
  br label %49

49:                                               ; preds = %104, %65, %48
  %50 = load i32*, i32** %14, align 8
  %51 = call %struct.dirent* @readdir(i32* %50)
  store %struct.dirent* %51, %struct.dirent** %12, align 8
  %52 = icmp ne %struct.dirent* %51, null
  br i1 %52, label %53, label %107

53:                                               ; preds = %49
  %54 = load %struct.dirent*, %struct.dirent** %12, align 8
  %55 = getelementptr inbounds %struct.dirent, %struct.dirent* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.dirent*, %struct.dirent** %12, align 8
  %61 = getelementptr inbounds %struct.dirent, %struct.dirent* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59, %53
  br label %49

66:                                               ; preds = %59
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  %71 = load %struct.fileinfo*, %struct.fileinfo** %10, align 8
  %72 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @strlen(i8* %73)
  %75 = load %struct.dirent*, %struct.dirent** %12, align 8
  %76 = getelementptr inbounds %struct.dirent, %struct.dirent* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @strlen(i8* %77)
  %79 = add nsw i64 %74, %78
  %80 = add nsw i64 %79, 2
  %81 = call i64 @xmalloc(i64 %80)
  %82 = inttoptr i64 %81 to i8*
  store i8* %82, i8** %13, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = load %struct.fileinfo*, %struct.fileinfo** %10, align 8
  %85 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.dirent*, %struct.dirent** %12, align 8
  %88 = getelementptr inbounds %struct.dirent, %struct.dirent* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @sprintf(i8* %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %86, i8* %89)
  %91 = load i8*, i8** %13, align 8
  %92 = call i32 @stat(i8* %91, %struct.stat* %11)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %66
  %95 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %96, %98
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, %99
  store i64 %103, i64* %101, align 8
  br label %104

104:                                              ; preds = %94, %66
  %105 = load i8*, i8** %13, align 8
  %106 = call i32 @xfree(i8* %105)
  br label %49

107:                                              ; preds = %49
  %108 = load i32*, i32** %14, align 8
  %109 = call i32 @closedir(i32* %108)
  %110 = load i32, i32* @STATUS_PENDING, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %107, %45, %23
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i64 @fstat(i64, %struct.stat*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
