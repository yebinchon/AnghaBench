; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzutil/os/linux/extr_zutil_device_path_os.c_dm_get_underlying_path.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzutil/os/linux/extr_zutil_device_path_os.c_dm_get_underlying_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64, i8* }

@.str = private unnamed_addr constant [22 x i8] c"/sys/block/%s/slaves/\00", align 1
@DT_DIR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"/dev/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @dm_get_underlying_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dm_get_underlying_path(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %4, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %75

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @realpath(i8* %15, i32* null)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i8* null, i8** %2, align 8
  br label %75

20:                                               ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = call i8* @strrchr(i8* %21, i8 signext 47)
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8* %27, i8** %9, align 8
  br label %30

28:                                               ; preds = %20
  %29 = load i8*, i8** %7, align 8
  store i8* %29, i8** %9, align 8
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @asprintf(i8** %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35, %30
  br label %63

39:                                               ; preds = %35
  %40 = load i8*, i8** %7, align 8
  %41 = call i32* @opendir(i8* %40)
  store i32* %41, i32** %4, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %63

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %61, %45
  %47 = load i32*, i32** %4, align 8
  %48 = call %struct.dirent* @readdir(i32* %47)
  store %struct.dirent* %48, %struct.dirent** %5, align 8
  %49 = icmp ne %struct.dirent* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load %struct.dirent*, %struct.dirent** %5, align 8
  %52 = getelementptr inbounds %struct.dirent, %struct.dirent* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DT_DIR, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.dirent*, %struct.dirent** %5, align 8
  %58 = getelementptr inbounds %struct.dirent, %struct.dirent* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @asprintf(i8** %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  store i32 %60, i32* %10, align 4
  br label %62

61:                                               ; preds = %50
  br label %46

62:                                               ; preds = %56, %46
  br label %63

63:                                               ; preds = %62, %44, %38
  %64 = load i32*, i32** %4, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @closedir(i32* %67)
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @free(i8* %70)
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @free(i8* %72)
  %74 = load i8*, i8** %8, align 8
  store i8* %74, i8** %2, align 8
  br label %75

75:                                               ; preds = %69, %19, %13
  %76 = load i8*, i8** %2, align 8
  ret i8* %76
}

declare dso_local i8* @realpath(i8*, i32*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
