; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzutil/extr_zutil_device_path.c_zfs_strcmp_pathname.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzutil/extr_zutil_device_path.c_zfs_strcmp_pathname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_strcmp_pathname(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* @MAXPATHLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i32, i32* @MAXPATHLEN, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %23 = load i32, i32* @MAXPATHLEN, align 4
  %24 = call i32 @memset(i8* %22, i32 0, i32 %23)
  %25 = load i8*, i8** %6, align 8
  %26 = call i8* @strdup(i8* %25)
  store i8* %26, i8** %14, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = call i8* @strtok(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %13, align 8
  br label %29

29:                                               ; preds = %32, %3
  %30 = load i8*, i8** %13, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = trunc i64 %21 to i32
  %34 = call i32 @strlcat(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i8*, i8** %13, align 8
  %36 = trunc i64 %21 to i32
  %37 = call i32 @strlcat(i8* %22, i8* %35, i32 %36)
  %38 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %38, i8** %13, align 8
  br label %29

39:                                               ; preds = %29
  %40 = load i8*, i8** %14, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 47
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @zfs_strcmp_shortname(i8* %48, i8* %22, i32 %49)
  store i32 %50, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %77

51:                                               ; preds = %39
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* @MAXPATHLEN, align 4
  %54 = call i32 @strlcpy(i8* %19, i8* %52, i32 %53)
  %55 = call i32 @strlen(i8* %19)
  store i32 %55, i32* %8, align 4
  %56 = call i32 @strlen(i8* %22)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = load i32, i32* @MAXPATHLEN, align 4
  %61 = call i32 @zfs_append_partition(i8* %19, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @ENOMEM, align 4
  store i32 %65, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %77

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %51
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = call i64 @strcmp(i8* %19, i8* %22)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71, %67
  %75 = load i32, i32* @ENOENT, align 4
  store i32 %75, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %77

76:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %77

77:                                               ; preds = %76, %74, %64, %47
  %78 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i8* @strtok(i8*, i8*) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @zfs_strcmp_shortname(i8*, i8*, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @zfs_append_partition(i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
