; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_print_zpool_dir_scripts.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_print_zpool_dir_scripts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }
%struct.stat = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@S_IXUSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @print_zpool_dir_scripts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_zpool_dir_scripts(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.stat, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @MAXPATHLEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i32* @opendir(i8* %12)
  store i32* %13, i32** %3, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %49

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %45, %15
  %17 = load i32*, i32** %3, align 8
  %18 = call %struct.dirent* @readdir(i32* %17)
  store %struct.dirent* %18, %struct.dirent** %4, align 8
  %19 = icmp ne %struct.dirent* %18, null
  br i1 %19, label %20, label %46

20:                                               ; preds = %16
  %21 = load i8*, i8** %2, align 8
  %22 = load %struct.dirent*, %struct.dirent** %4, align 8
  %23 = getelementptr inbounds %struct.dirent, %struct.dirent* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %24)
  %26 = call i64 @stat(i8* %11, %struct.stat* %7)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @S_IXUSR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @S_ISREG(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.dirent*, %struct.dirent** %4, align 8
  %41 = getelementptr inbounds %struct.dirent, %struct.dirent* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @print_zpool_script_help(i8* %42, i8* %11)
  br label %44

44:                                               ; preds = %39, %34, %28
  br label %45

45:                                               ; preds = %44, %20
  br label %16

46:                                               ; preds = %16
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @closedir(i32* %47)
  br label %49

49:                                               ; preds = %46, %1
  %50 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %50)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @opendir(i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i64 @S_ISREG(i32) #2

declare dso_local i32 @print_zpool_script_help(i8*, i8*) #2

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
