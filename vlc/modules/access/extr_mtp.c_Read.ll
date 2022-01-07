; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_mtp.c_Read.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_mtp.c_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"read failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"File reading failed\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"VLC could not read the file: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i8*, i64)* @Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Read(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @read(i32 %16, i8* %17, i64 %18)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %3
  %23 = load i32, i32* @errno, align 4
  switch i32 %23, label %25 [
    i32 128, label %24
    i32 129, label %24
  ]

24:                                               ; preds = %22, %22
  br label %36

25:                                               ; preds = %22
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @vlc_strerror_c(i32 %27)
  %29 = call i32 @msg_Err(%struct.TYPE_5__* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 @vlc_strerror(i32 %33)
  %35 = call i32 @vlc_dialog_display_error(%struct.TYPE_5__* %30, i32 %31, i32 %32, i32 %34)
  store i64 0, i64* %4, align 8
  br label %39

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %3
  %38 = load i64, i64* %10, align 8
  store i64 %38, i64* %4, align 8
  br label %39

39:                                               ; preds = %37, %25
  %40 = load i64, i64* %4, align 8
  ret i64 %40
}

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @msg_Err(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local i32 @vlc_dialog_display_error(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @vlc_strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
