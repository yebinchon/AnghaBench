; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzutil/extr_zutil_import.c_zpool_find_import_scan_dir.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzutil/extr_zutil_import.c_zpool_find_import_scan_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent64 = type { i8* }

@MAXPATHLEN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EZFS_BADPATH = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cannot resolve path '%s'\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"cannot open '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i8*, i32)* @zpool_find_import_scan_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpool_find_import_scan_dir(i32* %0, i32* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.dirent64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* @MAXPATHLEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = call i32* @realpath(i8* %23, i8* %22)
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %5
  %27 = load i32, i32* @errno, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @ENOENT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %103

32:                                               ; preds = %26
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @strerror(i32 %34)
  %36 = call i32 @zutil_error_aux(i32* %33, i32 %35)
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @EZFS_BADPATH, align 4
  %39 = load i32, i32* @TEXT_DOMAIN, align 4
  %40 = call i32 @dgettext(i32 %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @zutil_error_fmt(i32* %37, i32 %38, i32 %40, i8* %41)
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %103

44:                                               ; preds = %5
  %45 = call i32* @opendir(i8* %22)
  store i32* %45, i32** %16, align 8
  %46 = load i32*, i32** %16, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load i32, i32* @errno, align 4
  store i32 %49, i32* %12, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @strerror(i32 %51)
  %53 = call i32 @zutil_error_aux(i32* %50, i32 %52)
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* @EZFS_BADPATH, align 4
  %56 = load i32, i32* @TEXT_DOMAIN, align 4
  %57 = call i32 @dgettext(i32 %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %58 = call i32 @zutil_error_fmt(i32* %54, i32 %55, i32 %57, i8* %22)
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %103

60:                                               ; preds = %44
  br label %61

61:                                               ; preds = %93, %92, %60
  %62 = load i32*, i32** %16, align 8
  %63 = call %struct.dirent64* @readdir64(i32* %62)
  store %struct.dirent64* %63, %struct.dirent64** %15, align 8
  %64 = icmp ne %struct.dirent64* %63, null
  br i1 %64, label %65, label %100

65:                                               ; preds = %61
  %66 = load %struct.dirent64*, %struct.dirent64** %15, align 8
  %67 = getelementptr inbounds %struct.dirent64, %struct.dirent64* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %18, align 8
  %69 = load i8*, i8** %18, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 46
  br i1 %73, label %74, label %93

74:                                               ; preds = %65
  %75 = load i8*, i8** %18, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %74
  %81 = load i8*, i8** %18, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 46
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load i8*, i8** %18, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 2
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86, %74
  br label %61

93:                                               ; preds = %86, %80, %65
  %94 = load i32*, i32** %7, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = load i8*, i8** %18, align 8
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @zpool_find_import_scan_add_slice(i32* %94, i32* %95, i32* %96, i8* %22, i8* %97, i32 %98)
  br label %61

100:                                              ; preds = %61
  %101 = load i32*, i32** %16, align 8
  %102 = call i32 @closedir(i32* %101)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %103

103:                                              ; preds = %100, %48, %32, %31
  %104 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @realpath(i8*, i8*) #2

declare dso_local i32 @zutil_error_aux(i32*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @zutil_error_fmt(i32*, i32, i32, i8*) #2

declare dso_local i32 @dgettext(i32, i8*) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local %struct.dirent64* @readdir64(i32*) #2

declare dso_local i32 @zpool_find_import_scan_add_slice(i32*, i32*, i32*, i8*, i8*, i32) #2

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
