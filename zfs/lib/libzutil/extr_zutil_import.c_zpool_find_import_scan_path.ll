; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzutil/extr_zutil_import.c_zpool_find_import_scan_path.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzutil/extr_zutil_import.c_zpool_find_import_scan_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EZFS_BADPATH = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cannot resolve path '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i8*, i32)* @zpool_find_import_scan_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpool_find_import_scan_path(i32* %0, i32* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* @MAXPATHLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i8* @zutil_strdup(i32* %22, i8* %23)
  store i8* %24, i8** %14, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i8* @zutil_strdup(i32* %25, i8* %26)
  store i8* %27, i8** %15, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = call i8* @dirname(i8* %28)
  store i8* %29, i8** %16, align 8
  %30 = load i8*, i8** %15, align 8
  %31 = call i8* @basename(i8* %30)
  store i8* %31, i8** %17, align 8
  %32 = load i8*, i8** %16, align 8
  %33 = call i32* @realpath(i8* %32, i8* %21)
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %52

35:                                               ; preds = %5
  %36 = load i32, i32* @errno, align 4
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @ENOENT, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %11, align 4
  br label %59

41:                                               ; preds = %35
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @strerror(i32 %43)
  %45 = call i32 @zutil_error_aux(i32* %42, i32 %44)
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @EZFS_BADPATH, align 4
  %48 = load i32, i32* @TEXT_DOMAIN, align 4
  %49 = call i32 @dgettext(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @zutil_error_fmt(i32* %46, i32 %47, i32 %49, i8* %50)
  br label %59

52:                                               ; preds = %5
  %53 = load i32*, i32** %6, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load i8*, i8** %17, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @zpool_find_import_scan_add_slice(i32* %53, i32* %54, i32* %55, i8* %21, i8* %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %41, %40
  %60 = load i8*, i8** %15, align 8
  %61 = call i32 @free(i8* %60)
  %62 = load i8*, i8** %14, align 8
  %63 = call i32 @free(i8* %62)
  %64 = load i32, i32* %11, align 4
  %65 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %65)
  ret i32 %64
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @zutil_strdup(i32*, i8*) #2

declare dso_local i8* @dirname(i8*) #2

declare dso_local i8* @basename(i8*) #2

declare dso_local i32* @realpath(i8*, i8*) #2

declare dso_local i32 @zutil_error_aux(i32*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @zutil_error_fmt(i32*, i32, i32, i8*) #2

declare dso_local i32 @dgettext(i32, i8*) #2

declare dso_local i32 @zpool_find_import_scan_add_slice(i32*, i32*, i32*, i8*, i8*, i32) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
