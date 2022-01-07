; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzutil/os/linux/extr_zutil_device_path_os.c_zfs_get_enclosure_sysfs_path.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzutil/os/linux/extr_zutil_device_path_os.c_zfs_get_enclosure_sysfs_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"/sys/block/%s/device\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"enclosure_device\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"enclosure\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"/sys/class/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @zfs_get_enclosure_sysfs_path(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %4, align 8
  %15 = load i32, i32* @MAXPATHLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  store i32 1, i32* %14, align 4
  br label %110

22:                                               ; preds = %1
  %23 = load i8*, i8** %3, align 8
  %24 = call i8* @strrchr(i8* %23, i8 signext 47)
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8* %29, i8** %3, align 8
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i8*, i8** %8, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %30
  store i8* null, i8** %8, align 8
  br label %98

39:                                               ; preds = %35
  %40 = load i8*, i8** %8, align 8
  %41 = call i32* @opendir(i8* %40)
  store i32* %41, i32** %4, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i8* null, i8** %8, align 8
  br label %98

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %96, %56, %45
  %47 = load i32*, i32** %4, align 8
  %48 = call %struct.dirent* @readdir(i32* %47)
  store %struct.dirent* %48, %struct.dirent** %5, align 8
  %49 = icmp ne %struct.dirent* %48, null
  br i1 %49, label %50, label %97

50:                                               ; preds = %46
  %51 = load %struct.dirent*, %struct.dirent** %5, align 8
  %52 = getelementptr inbounds %struct.dirent, %struct.dirent* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @strstr(i8* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %46

57:                                               ; preds = %50
  %58 = load i8*, i8** %8, align 8
  %59 = load %struct.dirent*, %struct.dirent** %5, align 8
  %60 = getelementptr inbounds %struct.dirent, %struct.dirent* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %58, i8* %61)
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = load i8*, i8** %9, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %64, %57
  br label %97

68:                                               ; preds = %64
  %69 = load i8*, i8** %9, align 8
  %70 = trunc i64 %16 to i32
  %71 = call i64 @readlink(i8* %69, i8* %18, i32 %70)
  store i64 %71, i64* %12, align 8
  %72 = load i64, i64* %12, align 8
  %73 = icmp eq i64 %72, -1
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = load i64, i64* %12, align 8
  %76 = icmp uge i64 %75, %16
  br i1 %76, label %77, label %80

77:                                               ; preds = %74, %68
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @free(i8* %78)
  store i8* null, i8** %9, align 8
  br label %97

80:                                               ; preds = %74
  %81 = load i64, i64* %12, align 8
  %82 = getelementptr inbounds i8, i8* %18, i64 %81
  store i8 0, i8* %82, align 1
  %83 = call i8* @strstr(i8* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i8* %83, i8** %10, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %97

87:                                               ; preds = %80
  %88 = load i8*, i8** %10, align 8
  %89 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %88)
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i8* null, i8** %11, align 8
  br label %97

92:                                               ; preds = %87
  %93 = load i8*, i8** %11, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %97

96:                                               ; preds = %92
  br label %46

97:                                               ; preds = %95, %91, %86, %77, %67, %46
  br label %98

98:                                               ; preds = %97, %44, %38
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @free(i8* %99)
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 @free(i8* %101)
  %103 = load i32*, i32** %4, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load i32*, i32** %4, align 8
  %107 = call i32 @closedir(i32* %106)
  br label %108

108:                                              ; preds = %105, %98
  %109 = load i8*, i8** %11, align 8
  store i8* %109, i8** %2, align 8
  store i32 1, i32* %14, align 4
  br label %110

110:                                              ; preds = %108, %21
  %111 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load i8*, i8** %2, align 8
  ret i8* %112
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @asprintf(i8**, i8*, i8*, ...) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i64 @readlink(i8*, i8*, i32) #2

declare dso_local i32 @free(i8*) #2

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
