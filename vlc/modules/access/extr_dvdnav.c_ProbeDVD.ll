; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_dvdnav.c_ProbeDVD.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_dvdnav.c_ProbeDVD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"CD001\01\00", align 1
@DVD_VIDEO_LB_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ProbeDVD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ProbeDVD(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 4
  %7 = alloca [6 x i8], align 1
  %8 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %13, i32* %2, align 4
  br label %92

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* @O_RDONLY, align 4
  %17 = load i32, i32* @O_NONBLOCK, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @vlc_open(i8* %15, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %32

22:                                               ; preds = %14
  %23 = load i64, i64* @errno, align 8
  %24 = load i64, i64* @ENOENT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @VLC_EGENERIC, align 4
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @VLC_SUCCESS, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %2, align 4
  br label %92

32:                                               ; preds = %14
  %33 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @fstat(i32 %34, %struct.stat* %6)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %88

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @S_ISREG(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @S_ISDIR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @S_ISBLK(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48, %43
  %54 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %48
  br label %88

56:                                               ; preds = %38
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @SEEK_SET, align 4
  %59 = call i32 @lseek(i32 %57, i32 32769, i32 %58)
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %70, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  %63 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %64 = call i32 @read(i32 %62, i8* %63, i32 6)
  %65 = icmp slt i32 %64, 6
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %68 = call i64 @memcmp(i8* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %61, %56
  br label %88

71:                                               ; preds = %66
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @DVD_VIDEO_LB_LEN, align 4
  %74 = mul nsw i32 256, %73
  %75 = load i32, i32* @SEEK_SET, align 4
  %76 = call i32 @lseek(i32 %72, i32 %74, i32 %75)
  %77 = icmp ne i32 %76, -1
  br i1 %77, label %78, label %87

78:                                               ; preds = %71
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @read(i32 %79, i8* %8, i32 2)
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = call i32 @GetWLE(i8* %8)
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %85, %82, %78, %71
  br label %88

88:                                               ; preds = %87, %70, %55, %37
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @vlc_close(i32 %89)
  %91 = load i32, i32* %5, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %88, %30, %12
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @vlc_open(i8*, i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @GetWLE(i8*) #1

declare dso_local i32 @vlc_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
