; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_dir_read.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_dir_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, i64, i32, i32 }

@FR_NO_FILE = common dso_local global i64 0, align 8
@FR_OK = common dso_local global i64 0, align 8
@DIR_Name = common dso_local global i64 0, align 8
@DIR_Attr = common dso_local global i64 0, align 8
@AM_MASK = common dso_local global i8 0, align 1
@DDEM = common dso_local global i8 0, align 1
@_FS_RPATH = common dso_local global i64 0, align 8
@AM_LFN = common dso_local global i8 0, align 1
@AM_ARC = common dso_local global i8 0, align 1
@AM_VOL = common dso_local global i8 0, align 1
@LDIR_Chksum = common dso_local global i64 0, align 8
@LLEF = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i32)* @dir_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dir_read(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i64, i64* @FR_NO_FILE, align 8
  store i64 %9, i64* %5, align 8
  br label %10

10:                                               ; preds = %89, %2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %90

15:                                               ; preds = %10
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @move_window(i32 %18, i64 %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @FR_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %90

27:                                               ; preds = %15
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i64, i64* @DIR_Name, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %7, align 1
  %35 = load i8, i8* %7, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i64, i64* @FR_NO_FILE, align 8
  store i64 %39, i64* %5, align 8
  br label %90

40:                                               ; preds = %27
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* @DIR_Attr, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = load i8, i8* @AM_MASK, align 1
  %47 = sext i8 %46 to i32
  %48 = and i32 %45, %47
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %6, align 1
  %50 = load i8, i8* %7, align 1
  %51 = sext i8 %50 to i32
  %52 = load i8, i8* @DDEM, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %82

55:                                               ; preds = %40
  %56 = load i64, i64* @_FS_RPATH, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load i8, i8* %7, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 46
  br i1 %61, label %62, label %82

62:                                               ; preds = %58, %55
  %63 = load i8, i8* %6, align 1
  %64 = sext i8 %63 to i32
  %65 = load i8, i8* @AM_LFN, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %64, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %62
  %69 = load i8, i8* %6, align 1
  %70 = sext i8 %69 to i32
  %71 = load i8, i8* @AM_ARC, align 1
  %72 = sext i8 %71 to i32
  %73 = xor i32 %72, -1
  %74 = and i32 %70, %73
  %75 = load i8, i8* @AM_VOL, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %74, %76
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %4, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  br label %90

82:                                               ; preds = %68, %62, %58, %40
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %84 = call i64 @dir_next(%struct.TYPE_4__* %83, i32 0)
  store i64 %84, i64* %5, align 8
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* @FR_OK, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %90

89:                                               ; preds = %82
  br label %10

90:                                               ; preds = %88, %81, %38, %26, %10
  %91 = load i64, i64* %5, align 8
  %92 = load i64, i64* @FR_OK, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %94, %90
  %98 = load i64, i64* %5, align 8
  ret i64 %98
}

declare dso_local i64 @move_window(i32, i64) #1

declare dso_local i64 @dir_next(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
