; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_vdr.c_Read.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_vdr.c_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32 }

@FILE_COUNT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"failed to read (%s)\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"File reading failed\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"VLC could not read the file (%s).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i8*, i64)* @Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Read(%struct.TYPE_10__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %8, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %78

18:                                               ; preds = %3
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @read(i32 %21, i8* %22, i64 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %18
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %28
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = call i32 @UpdateFileSize(%struct.TYPE_10__* %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = call i32 @FindSeekpoint(%struct.TYPE_10__* %37)
  %39 = load i64, i64* %9, align 8
  store i64 %39, i64* %4, align 8
  br label %78

40:                                               ; preds = %18
  %41 = load i64, i64* %9, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @FILE_COUNT, align 4
  %48 = sub nsw i32 %47, 1
  %49 = icmp sge i32 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = call i32 @ImportNextFile(%struct.TYPE_10__* %51)
  br label %53

53:                                               ; preds = %50, %43
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  %59 = call i32 @SwitchFile(%struct.TYPE_10__* %54, i32 %58)
  store i64 -1, i64* %4, align 8
  br label %78

60:                                               ; preds = %40
  %61 = load i64, i64* @errno, align 8
  %62 = load i64, i64* @EINTR, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i64 -1, i64* %4, align 8
  br label %78

65:                                               ; preds = %60
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = load i64, i64* @errno, align 8
  %68 = call i32 @vlc_strerror_c(i64 %67)
  %69 = call i32 @msg_Err(%struct.TYPE_10__* %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %72 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i64, i64* @errno, align 8
  %74 = call i32 @vlc_strerror(i64 %73)
  %75 = call i32 @vlc_dialog_display_error(%struct.TYPE_10__* %70, i32 %71, i32 %72, i32 %74)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = call i32 @SwitchFile(%struct.TYPE_10__* %76, i32 -1)
  store i64 0, i64* %4, align 8
  br label %78

78:                                               ; preds = %65, %64, %53, %27, %17
  %79 = load i64, i64* %4, align 8
  ret i64 %79
}

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @UpdateFileSize(%struct.TYPE_10__*) #1

declare dso_local i32 @FindSeekpoint(%struct.TYPE_10__*) #1

declare dso_local i32 @ImportNextFile(%struct.TYPE_10__*) #1

declare dso_local i32 @SwitchFile(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i64) #1

declare dso_local i32 @vlc_dialog_display_error(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @vlc_strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
