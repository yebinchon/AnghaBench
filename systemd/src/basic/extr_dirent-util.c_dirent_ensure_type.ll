; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_dirent-util.c_dirent_ensure_type.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_dirent-util.c_dirent_ensure_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64, i32 }
%struct.stat = type { i32 }

@DT_UNKNOWN = common dso_local global i64 0, align 8
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@DT_REG = common dso_local global i64 0, align 8
@DT_DIR = common dso_local global i64 0, align 8
@DT_LNK = common dso_local global i64 0, align 8
@DT_FIFO = common dso_local global i64 0, align 8
@DT_SOCK = common dso_local global i64 0, align 8
@DT_CHR = common dso_local global i64 0, align 8
@DT_BLK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dirent_ensure_type(%struct.dirent* %0, %struct.dirent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca %struct.stat, align 4
  store %struct.dirent* %0, %struct.dirent** %4, align 8
  store %struct.dirent* %1, %struct.dirent** %5, align 8
  %7 = load %struct.dirent*, %struct.dirent** %4, align 8
  %8 = call i32 @assert(%struct.dirent* %7)
  %9 = load %struct.dirent*, %struct.dirent** %5, align 8
  %10 = call i32 @assert(%struct.dirent* %9)
  %11 = load %struct.dirent*, %struct.dirent** %5, align 8
  %12 = getelementptr inbounds %struct.dirent, %struct.dirent* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DT_UNKNOWN, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %96

17:                                               ; preds = %2
  %18 = load %struct.dirent*, %struct.dirent** %4, align 8
  %19 = call i32 @dirfd(%struct.dirent* %18)
  %20 = load %struct.dirent*, %struct.dirent** %5, align 8
  %21 = getelementptr inbounds %struct.dirent, %struct.dirent* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %24 = call i64 @fstatat(i32 %19, i32 %22, %struct.stat* %6, i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* @errno, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %96

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @S_ISREG(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i64, i64* @DT_REG, align 8
  br label %92

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @S_ISDIR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i64, i64* @DT_DIR, align 8
  br label %90

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @S_ISLNK(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i64, i64* @DT_LNK, align 8
  br label %88

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @S_ISFIFO(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i64, i64* @DT_FIFO, align 8
  br label %86

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @S_ISSOCK(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i64, i64* @DT_SOCK, align 8
  br label %84

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @S_ISCHR(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i64, i64* @DT_CHR, align 8
  br label %82

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @S_ISBLK(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i64, i64* @DT_BLK, align 8
  br label %80

78:                                               ; preds = %71
  %79 = load i64, i64* @DT_UNKNOWN, align 8
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i64 [ %77, %76 ], [ %79, %78 ]
  br label %82

82:                                               ; preds = %80, %69
  %83 = phi i64 [ %70, %69 ], [ %81, %80 ]
  br label %84

84:                                               ; preds = %82, %62
  %85 = phi i64 [ %63, %62 ], [ %83, %82 ]
  br label %86

86:                                               ; preds = %84, %55
  %87 = phi i64 [ %56, %55 ], [ %85, %84 ]
  br label %88

88:                                               ; preds = %86, %48
  %89 = phi i64 [ %49, %48 ], [ %87, %86 ]
  br label %90

90:                                               ; preds = %88, %41
  %91 = phi i64 [ %42, %41 ], [ %89, %88 ]
  br label %92

92:                                               ; preds = %90, %34
  %93 = phi i64 [ %35, %34 ], [ %91, %90 ]
  %94 = load %struct.dirent*, %struct.dirent** %5, align 8
  %95 = getelementptr inbounds %struct.dirent, %struct.dirent* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %92, %26, %16
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @assert(%struct.dirent*) #1

declare dso_local i64 @fstatat(i32, i32, %struct.stat*, i32) #1

declare dso_local i32 @dirfd(%struct.dirent*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
