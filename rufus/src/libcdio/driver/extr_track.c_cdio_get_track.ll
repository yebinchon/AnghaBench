; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/driver/extr_track.c_cdio_get_track.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/driver/extr_track.c_cdio_get_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CDIO_INVALID_TRACK = common dso_local global i32 0, align 4
@CDIO_CDROM_LEADOUT_TRACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdio_get_track(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @CDIO_INVALID_TRACK, align 4
  store i32 %14, i32* %3, align 4
  br label %89

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @cdio_get_first_track_num(i32* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @cdio_get_last_track_num(i32* %18)
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @CDIO_INVALID_TRACK, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* @CDIO_INVALID_TRACK, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %15
  %30 = load i32, i32* @CDIO_INVALID_TRACK, align 4
  store i32 %30, i32* %3, align 4
  br label %89

31:                                               ; preds = %25
  %32 = load i64, i64* %5, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @cdio_get_track_lsn(i32* %33, i32 %34)
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %89

38:                                               ; preds = %31
  %39 = load i64, i64* %5, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* @CDIO_CDROM_LEADOUT_TRACK, align 4
  %42 = call i64 @cdio_get_track_lsn(i32* %40, i32 %41)
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @CDIO_INVALID_TRACK, align 4
  store i32 %45, i32* %3, align 4
  br label %89

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %69, %46
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %48, %49
  %51 = sdiv i32 %50, 2
  store i32 %51, i32* %9, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i64 @cdio_get_track_lsn(i32* %52, i32 %53)
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp sle i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load i32, i32* %9, align 4
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %58, %47
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %10, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %65, %61
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %47, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  %77 = icmp sgt i32 %74, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %78, %73
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* @CDIO_CDROM_LEADOUT_TRACK, align 4
  store i32 %86, i32* %3, align 4
  br label %89

87:                                               ; preds = %81
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %85, %44, %37, %29, %13
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @cdio_get_first_track_num(i32*) #1

declare dso_local i32 @cdio_get_last_track_num(i32*) #1

declare dso_local i64 @cdio_get_track_lsn(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
