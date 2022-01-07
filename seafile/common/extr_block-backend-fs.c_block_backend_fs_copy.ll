; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_block-backend-fs.c_block_backend_fs_copy.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_block-backend-fs.c_block_backend_fs_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEAF_PATH_MAX = common dso_local global i32 0, align 4
@G_FILE_TEST_EXISTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to create dst path %s for block %s.\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to link %s to %s: %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8*, i32, i8*)* @block_backend_fs_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_backend_fs_copy(i32* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %19 = load i32, i32* @SEAF_PATH_MAX, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %14, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %15, align 8
  %23 = load i32, i32* @SEAF_PATH_MAX, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %16, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @get_block_path(i32* %26, i8* %27, i8* %22, i8* %28, i32 %29)
  %31 = load i32*, i32** %8, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @get_block_path(i32* %31, i8* %32, i8* %25, i8* %33, i32 %34)
  %36 = load i32, i32* @G_FILE_TEST_EXISTS, align 4
  %37 = call i64 @g_file_test(i8* %25, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %60

40:                                               ; preds = %6
  %41 = call i64 @create_parent_path(i8* %25)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i8*, i8** %13, align 8
  %45 = call i32 (i8*, i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %44)
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %60

46:                                               ; preds = %40
  %47 = call i32 @link(i8* %22, i8* %25)
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %18, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i64, i64* @errno, align 8
  %52 = load i64, i64* @EEXIST, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i64, i64* @errno, align 8
  %56 = call i32 @strerror(i64 %55)
  %57 = call i32 (i8*, i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %22, i8* %25, i32 %56)
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %60

58:                                               ; preds = %50, %46
  %59 = load i32, i32* %18, align 4
  store i32 %59, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %60

60:                                               ; preds = %58, %54, %43, %39
  %61 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_block_path(i32*, i8*, i8*, i8*, i32) #2

declare dso_local i64 @g_file_test(i8*, i32) #2

declare dso_local i64 @create_parent_path(i8*) #2

declare dso_local i32 @seaf_warning(i8*, i8*, i8*, ...) #2

declare dso_local i32 @link(i8*, i8*) #2

declare dso_local i32 @strerror(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
