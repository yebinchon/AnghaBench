; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zvol_id/extr_zvol_id_main.c_main.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zvol_id/extr_zvol_id_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat64 = type { i32 }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Usage: %s /dev/zvol_device_node\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to access device file: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@ZVOL_MINORS = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Unable to open device file: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"ioctl_get_msg failed:%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%s-part%d\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.stat64, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %18 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  store i8* null, i8** %10, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %115

30:                                               ; preds = %2
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @stat64(i8* %34, %struct.stat64* %12)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @errno, align 4
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %115

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.stat64, %struct.stat64* %12, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @minor(i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @ZVOL_MINORS, align 4
  %48 = srem i32 %46, %47
  store i32 %48, i32* %14, align 4
  %49 = load i8*, i8** %11, align 8
  %50 = load i32, i32* @O_RDONLY, align 4
  %51 = call i32 @open(i8* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* @errno, align 4
  store i32 %57, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %115

58:                                               ; preds = %42
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @ioctl_get_msg(i8* %21, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32, i32* @errno, align 4
  %65 = call i8* @strerror(i32 %64)
  %66 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %65)
  %67 = load i32, i32* @errno, align 4
  store i32 %67, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %115

68:                                               ; preds = %58
  %69 = load i32, i32* %14, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %14, align 4
  %73 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %21, i32 %72)
  store i32 %73, i32* %16, align 4
  br label %76

74:                                               ; preds = %68
  %75 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %21)
  store i32 %75, i32* %16, align 4
  br label %76

76:                                               ; preds = %74, %71
  %77 = load i32, i32* %16, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i8*, i8** %10, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %79, %76
  br label %111

83:                                               ; preds = %79
  store i32 0, i32* %15, align 4
  br label %84

84:                                               ; preds = %103, %83
  %85 = load i32, i32* %15, align 4
  %86 = load i8*, i8** %10, align 8
  %87 = call i32 @strlen(i8* %86)
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %84
  %90 = load i8*, i8** %10, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = call i64 @isblank(i8 signext %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %89
  %98 = load i8*, i8** %10, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  store i8 43, i8* %101, align 1
  br label %102

102:                                              ; preds = %97, %89
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %15, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %15, align 4
  br label %84

106:                                              ; preds = %84
  %107 = load i8*, i8** %10, align 8
  %108 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %107)
  %109 = load i8*, i8** %10, align 8
  %110 = call i32 @free(i8* %109)
  br label %111

111:                                              ; preds = %106, %82
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @close(i32 %112)
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %115

115:                                              ; preds = %111, %63, %54, %38, %24
  %116 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %116)
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @stat64(i8*, %struct.stat64*) #2

declare dso_local i32 @minor(i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @ioctl_get_msg(i8*, i32) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @asprintf(i8**, i8*, i8*, ...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @isblank(i8 signext) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
