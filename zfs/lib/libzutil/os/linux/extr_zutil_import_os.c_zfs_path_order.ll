; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzutil/os/linux/extr_zutil_import_os.c_zfs_path_order.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzutil/os/linux/extr_zutil_import_os.c_zfs_path_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ZPOOL_IMPORT_PATH\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@DEFAULT_IMPORT_PATH_SIZE = common dso_local global i32 0, align 4
@zpool_default_import_path = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @zfs_path_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_path_order(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* @ENOENT, align 4
  store i32 %10, i32* %6, align 4
  %11 = call i8* @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %39

14:                                               ; preds = %2
  %15 = load i8*, i8** %8, align 8
  %16 = call i8* @strdup(i8* %15)
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i8* @strtok(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %18, i8** %7, align 8
  br label %19

19:                                               ; preds = %32, %14
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = load i8*, i8** %3, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = call i64 @strncmp(i8* %23, i8* %24, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = load i32*, i32** %4, align 8
  store i32 %30, i32* %31, align 4
  store i32 0, i32* %6, align 4
  br label %36

32:                                               ; preds = %22
  %33 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %33, i8** %7, align 8
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %19

36:                                               ; preds = %29, %19
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @free(i8* %37)
  br label %67

39:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %63, %39
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @DEFAULT_IMPORT_PATH_SIZE, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %40
  %45 = load i8*, i8** %3, align 8
  %46 = load i8**, i8*** @zpool_default_import_path, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = load i8**, i8*** @zpool_default_import_path, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = call i64 @strncmp(i8* %45, i8* %50, i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %44
  %60 = load i32, i32* %5, align 4
  %61 = load i32*, i32** %4, align 8
  store i32 %60, i32* %61, align 4
  store i32 0, i32* %6, align 4
  br label %66

62:                                               ; preds = %44
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %40

66:                                               ; preds = %59, %40
  br label %67

67:                                               ; preds = %66, %36
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
