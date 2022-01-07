; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_get_source.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_get_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ZPROP_SRC_TEMPORARY = common dso_local global i64 0, align 8
@ZPROP_SRC_NONE = common dso_local global i64 0, align 8
@ZPROP_SRC_DEFAULT = common dso_local global i64 0, align 8
@ZPROP_SOURCE_VAL_RECVD = common dso_local global i32 0, align 4
@ZPROP_SRC_RECEIVED = common dso_local global i64 0, align 8
@ZPROP_SRC_LOCAL = common dso_local global i64 0, align 8
@ZPROP_SRC_INHERITED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64*, i8*, i8*, i64)* @get_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_source(%struct.TYPE_3__* %0, i64* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i8*, i8** %9, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %5
  %14 = load i64*, i64** %7, align 8
  %15 = icmp eq i64* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load i64*, i64** %7, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ZPROP_SRC_TEMPORARY, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %13, %5
  br label %65

22:                                               ; preds = %16
  %23 = load i8*, i8** %8, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i64, i64* @ZPROP_SRC_NONE, align 8
  %27 = load i64*, i64** %7, align 8
  store i64 %26, i64* %27, align 8
  br label %65

28:                                               ; preds = %22
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i64, i64* @ZPROP_SRC_DEFAULT, align 8
  %36 = load i64*, i64** %7, align 8
  store i64 %35, i64* %36, align 8
  br label %64

37:                                               ; preds = %28
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* @ZPROP_SOURCE_VAL_RECVD, align 4
  %40 = call i32* @strstr(i8* %38, i32 %39)
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i64, i64* @ZPROP_SRC_RECEIVED, align 8
  %44 = load i64*, i64** %7, align 8
  store i64 %43, i64* %44, align 8
  br label %63

45:                                               ; preds = %37
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @strcmp(i8* %46, i32 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i64, i64* @ZPROP_SRC_LOCAL, align 8
  %54 = load i64*, i64** %7, align 8
  store i64 %53, i64* %54, align 8
  br label %62

55:                                               ; preds = %45
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @strlcpy(i8* %56, i8* %57, i64 %58)
  %60 = load i64, i64* @ZPROP_SRC_INHERITED, align 8
  %61 = load i64*, i64** %7, align 8
  store i64 %60, i64* %61, align 8
  br label %62

62:                                               ; preds = %55, %52
  br label %63

63:                                               ; preds = %62, %42
  br label %64

64:                                               ; preds = %63, %34
  br label %65

65:                                               ; preds = %21, %64, %25
  ret void
}

declare dso_local i32* @strstr(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
