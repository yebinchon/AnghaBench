; ModuleID = '/home/carl/AnghaBench/zfs/module/zcommon/extr_zprop_common.c_zprop_compare.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zcommon/extr_zprop_common.c_zprop_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@PROP_READONLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @zprop_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zprop_compare(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__**
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_2__**
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %7, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PROP_READONLY, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PROP_READONLY, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @strcmp(i32 %34, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %44

39:                                               ; preds = %2
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 -1, i32 1
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %39, %31
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
