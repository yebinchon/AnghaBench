; ModuleID = '/home/carl/AnghaBench/zfs/cmd/mount_zfs/extr_mount_zfs.c_parse_dataset.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/mount_zfs/extr_mount_zfs.c_parse_dataset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat64 = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @parse_dataset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_dataset(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stat64, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %13 = load i32, i32* @PATH_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @stat64(i8* %17, %struct.stat64* %6)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %1
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* @O_RDONLY, align 4
  %24 = call i32 @open(i8* %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %53

28:                                               ; preds = %21
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @zpool_read_label(i32 %29, i32** %9, i32* null)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @close(i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %53

36:                                               ; preds = %28
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* @ZPOOL_CONFIG_POOL_NAME, align 4
  %39 = call i32 @nvlist_lookup_string(i32* %37, i32 %38, i8** %10)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @nvlist_free(i32* %43)
  br label %51

45:                                               ; preds = %36
  %46 = load i8*, i8** %10, align 8
  %47 = call i8* @strdup(i8* %46)
  store i8* %47, i8** %3, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @nvlist_free(i32* %48)
  %50 = load i8*, i8** %3, align 8
  store i8* %50, i8** %2, align 8
  store i32 1, i32* %12, align 4
  br label %82

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %1
  br label %53

53:                                               ; preds = %52, %35, %27
  %54 = load i32, i32* @PATH_MAX, align 4
  %55 = call i32* @getcwd(i8* %16, i32 %54)
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i8*, i8** %3, align 8
  store i8* %58, i8** %2, align 8
  store i32 1, i32* %12, align 4
  br label %82

59:                                               ; preds = %53
  %60 = call i32 @strlen(i8* %16)
  store i32 %60, i32* %8, align 4
  %61 = load i8*, i8** %3, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @strncmp(i8* %16, i8* %61, i32 %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %59
  %66 = load i8*, i8** %3, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i32, i32* %8, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %16, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 47
  %77 = zext i1 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %69, i64 %78
  store i8* %79, i8** %2, align 8
  store i32 1, i32* %12, align 4
  br label %82

80:                                               ; preds = %59
  %81 = load i8*, i8** %3, align 8
  store i8* %81, i8** %2, align 8
  store i32 1, i32* %12, align 4
  br label %82

82:                                               ; preds = %80, %65, %57, %45
  %83 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i8*, i8** %2, align 8
  ret i8* %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @stat64(i8*, %struct.stat64*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @zpool_read_label(i32, i32**, i32*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @nvlist_lookup_string(i32*, i32, i8**) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32* @getcwd(i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
