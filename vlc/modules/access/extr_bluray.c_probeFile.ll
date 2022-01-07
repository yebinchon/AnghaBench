; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_bluray.c_probeFile.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_bluray.c_probeFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @probeFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probeFile(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca [2048 x i64], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = load i32, i32* @O_NONBLOCK, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @vlc_open(i8* %10, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %18, i32* %2, align 4
  br label %79

19:                                               ; preds = %1
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @fstat(i32 %20, %struct.stat* %4)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %75

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @S_ISREG(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @S_ISBLK(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %75

35:                                               ; preds = %29, %24
  %36 = load i32, i32* %8, align 4
  %37 = getelementptr inbounds [2048 x i64], [2048 x i64]* %5, i64 0, i64 0
  %38 = call i32 @read(i32 %36, i64* %37, i32 16384)
  %39 = sext i32 %38 to i64
  %40 = icmp ne i64 %39, 16384
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %75

42:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %55, %42
  %44 = load i32, i32* %6, align 4
  %45 = zext i32 %44 to i64
  %46 = icmp ult i64 %45, 16384
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [2048 x i64], [2048 x i64]* %5, i64 0, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %75

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %43

58:                                               ; preds = %43
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @SEEK_SET, align 4
  %61 = call i32 @lseek(i32 %59, i32 524288, i32 %60)
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %72, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  %65 = getelementptr inbounds [2048 x i64], [2048 x i64]* %5, i64 0, i64 0
  %66 = call i32 @read(i32 %64, i64* %65, i32 16)
  %67 = icmp ne i32 %66, 16
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds [2048 x i64], [2048 x i64]* %5, i64 0, i64 0
  %70 = call i32 @decode_descriptor_tag(i64* %69)
  %71 = icmp ne i32 %70, 2
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %63, %58
  br label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %73, %72, %53, %41, %34, %23
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @vlc_close(i32 %76)
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %75, %17
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @vlc_open(i8*, i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @S_ISBLK(i32) #1

declare dso_local i32 @read(i32, i64*, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @decode_descriptor_tag(i64*) #1

declare dso_local i32 @vlc_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
