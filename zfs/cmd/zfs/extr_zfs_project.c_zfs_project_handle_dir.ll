; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_project.c_zfs_project_handle_dir.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_project.c_zfs_project_handle_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.dirent = type { i8*, i64 }

@PATH_MAX = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to opendir %s: %s\0A\00", align 1
@B_TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@DT_DIR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to readdir %s: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_4__*, i32*)* @zfs_project_handle_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_project_handle_dir(i8* %0, %struct.TYPE_4__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dirent*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* @PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  store i32 0, i32* %12, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i32* @opendir(i8* %18)
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %42

22:                                               ; preds = %3
  %23 = load i32, i32* @errno, align 4
  %24 = load i32, i32* @ENOENT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %125

32:                                               ; preds = %26, %22
  %33 = load i32, i32* @errno, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* @stderr, align 4
  %36 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* @errno, align 4
  %39 = call i8* @strerror(i32 %38)
  %40 = call i32 @fprintf(i32 %35, i8* %36, i8* %37, i8* %39)
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %125

42:                                               ; preds = %3
  %43 = load i64, i64* @B_TRUE, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  store i32 0, i32* @errno, align 4
  br label %46

46:                                               ; preds = %105, %67, %42
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load i32*, i32** %11, align 8
  %51 = call %struct.dirent* @readdir(i32* %50)
  store %struct.dirent* %51, %struct.dirent** %10, align 8
  %52 = icmp ne %struct.dirent* %51, null
  br label %53

53:                                               ; preds = %49, %46
  %54 = phi i1 [ false, %46 ], [ %52, %49 ]
  br i1 %54, label %55, label %106

55:                                               ; preds = %53
  %56 = load %struct.dirent*, %struct.dirent** %10, align 8
  %57 = getelementptr inbounds %struct.dirent, %struct.dirent* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load %struct.dirent*, %struct.dirent** %10, align 8
  %63 = getelementptr inbounds %struct.dirent, %struct.dirent* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61, %55
  br label %46

68:                                               ; preds = %61
  %69 = load %struct.dirent*, %struct.dirent** %10, align 8
  %70 = getelementptr inbounds %struct.dirent, %struct.dirent* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @strlen(i8* %73)
  %75 = add nsw i32 %72, %74
  %76 = sext i32 %75 to i64
  %77 = add i64 %15, 1
  %78 = icmp uge i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %80, i32* @errno, align 4
  br label %106

81:                                               ; preds = %68
  %82 = load i8*, i8** %5, align 8
  %83 = load %struct.dirent*, %struct.dirent** %10, align 8
  %84 = getelementptr inbounds %struct.dirent, %struct.dirent* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %82, i8* %85)
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %88 = call i32 @zfs_project_handle_one(i8* %17, %struct.TYPE_4__* %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %105, label %91

91:                                               ; preds = %81
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %91
  %97 = load %struct.dirent*, %struct.dirent** %10, align 8
  %98 = getelementptr inbounds %struct.dirent, %struct.dirent* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @DT_DIR, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 @zfs_project_item_alloc(i32* %103, i8* %17)
  br label %105

105:                                              ; preds = %102, %96, %91, %81
  br label %46

106:                                              ; preds = %79, %53
  %107 = load i32, i32* @errno, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %106
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %121, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* @errno, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* @stderr, align 4
  %116 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %117 = load i8*, i8** %5, align 8
  %118 = load i32, i32* @errno, align 4
  %119 = call i8* @strerror(i32 %118)
  %120 = call i32 @fprintf(i32 %115, i8* %116, i8* %117, i8* %119)
  br label %121

121:                                              ; preds = %112, %109, %106
  %122 = load i32*, i32** %11, align 8
  %123 = call i32 @closedir(i32* %122)
  %124 = load i32, i32* %12, align 4
  store i32 %124, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %125

125:                                              ; preds = %121, %32, %31
  %126 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %126)
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @opendir(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @zfs_project_handle_one(i8*, %struct.TYPE_4__*) #2

declare dso_local i32 @zfs_project_item_alloc(i32*, i8*) #2

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
