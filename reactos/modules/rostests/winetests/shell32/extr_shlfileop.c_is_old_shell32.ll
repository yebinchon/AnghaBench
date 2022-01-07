; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfileop.c_is_old_shell32.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfileop.c_is_old_shell32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32*, i32*, i32*, i32, i32* }

@MAX_PATH = common dso_local global i32 0, align 4
@FO_COPY = common dso_local global i32 0, align 4
@FOF_NOCONFIRMATION = common dso_local global i32 0, align 4
@FOF_SILENT = common dso_local global i32 0, align 4
@FOF_NOERRORUI = common dso_local global i32 0, align 4
@FOF_MULTIDESTFILES = common dso_local global i32 0, align 4
@FOF_NOCONFIRMMKDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"test1.txt\00test2.txt\00test3.txt\00\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"test6.txt\00test7.txt\00\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"test6.txt\\test1.txt\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"test6.txt\\test2.txt\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"test6.txt\\test3.txt\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"test6.txt\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"test7.txt\\test2.txt\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"test7.txt\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @is_old_shell32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_old_shell32() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = mul nsw i32 5, %8
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = mul nsw i32 5, %13
  %15 = zext i32 %14 to i64
  %16 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 6
  store i32* null, i32** %17, align 8
  %18 = load i32, i32* @FO_COPY, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 5
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 4
  store i32* %12, i32** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  store i32* %16, i32** %21, align 8
  %22 = load i32, i32* @FOF_NOCONFIRMATION, align 4
  %23 = load i32, i32* @FOF_SILENT, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @FOF_NOERRORUI, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @FOF_MULTIDESTFILES, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @FOF_NOCONFIRMMKDIR, align 4
  %30 = or i32 %28, %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  store i32* null, i32** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = call i32 @set_curr_dir_path(i32* %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @set_curr_dir_path(i32* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i64 @SHFileOperationA(%struct.TYPE_3__* %2)
  store i64 %36, i64* %6, align 8
  %37 = call i32 @DeleteFileA(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32 @DeleteFileA(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %39 = call i32 @DeleteFileA(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %40 = call i32 @RemoveDirectoryA(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %41 = call i32 @DeleteFileA(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %42 = call i32 @RemoveDirectoryA(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @ERROR_SUCCESS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %0
  %47 = load i32, i32* @TRUE, align 4
  store i32 %47, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %50

48:                                               ; preds = %0
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %51)
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @set_curr_dir_path(i32*, i8*) #2

declare dso_local i64 @SHFileOperationA(%struct.TYPE_3__*) #2

declare dso_local i32 @DeleteFileA(i8*) #2

declare dso_local i32 @RemoveDirectoryA(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
