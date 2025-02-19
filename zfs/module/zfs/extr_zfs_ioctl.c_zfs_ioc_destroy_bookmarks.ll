; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_destroy_bookmarks.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_destroy_bookmarks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @zfs_ioc_destroy_bookmarks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_destroy_bookmarks(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strlen(i8* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32* @nvlist_next_nvpair(i32* %15, i32* null)
  store i32* %16, i32** %10, align 8
  br label %17

17:                                               ; preds = %61, %3
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %65

20:                                               ; preds = %17
  %21 = load i32*, i32** %10, align 8
  %22 = call i8* @nvpair_name(i32* %21)
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = call i8* @strchr(i8* %23, i8 signext 35)
  store i8* %24, i8** %12, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %20
  %28 = load i8*, i8** %12, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = call i64 @zfs_component_namecheck(i8* %29, i32* null, i32* null)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %20
  %33 = load i32, i32* @EINVAL, align 4
  %34 = call i32 @SET_ERROR(i32 %33)
  store i32 %34, i32* %4, align 4
  br label %70

35:                                               ; preds = %27
  %36 = load i8*, i8** %11, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @strncmp(i8* %36, i8* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %35
  %42 = load i8*, i8** %11, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 47
  br i1 %48, label %49, label %60

49:                                               ; preds = %41
  %50 = load i8*, i8** %11, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 35
  br i1 %56, label %57, label %60

57:                                               ; preds = %49, %35
  %58 = load i32, i32* @EXDEV, align 4
  %59 = call i32 @SET_ERROR(i32 %58)
  store i32 %59, i32* %4, align 4
  br label %70

60:                                               ; preds = %49, %41
  br label %61

61:                                               ; preds = %60
  %62 = load i32*, i32** %6, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = call i32* @nvlist_next_nvpair(i32* %62, i32* %63)
  store i32* %64, i32** %10, align 8
  br label %17

65:                                               ; preds = %17
  %66 = load i32*, i32** %6, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @dsl_bookmark_destroy(i32* %66, i32* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %65, %57, %32
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @zfs_component_namecheck(i8*, i32*, i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @dsl_bookmark_destroy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
