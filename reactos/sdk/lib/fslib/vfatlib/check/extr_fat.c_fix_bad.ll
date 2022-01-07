; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_fat.c_fix_bad.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_fat.c_fix_bad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Checking for bad clusters.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Cluster %lu is unreadable.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fix_bad(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = load i64, i64* @verbose, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %1
  store i32 2, i32* %3, align 4
  br label %10

10:                                               ; preds = %52, %9
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 2
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %55

17:                                               ; preds = %10
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %23 = call i32 @get_fat(%struct.TYPE_10__* %4, i32 %20, i32 %21, %struct.TYPE_11__* %22)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @get_owner(%struct.TYPE_11__* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %51, label %28

28:                                               ; preds = %17
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @FAT_IS_BAD(%struct.TYPE_11__* %29, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @cluster_start(%struct.TYPE_11__* %35, i32 %36)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @fs_test(i32 %37, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @set_fat(%struct.TYPE_11__* %47, i32 %48, i32 -2)
  br label %50

50:                                               ; preds = %43, %34
  br label %51

51:                                               ; preds = %50, %28, %17
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %10

55:                                               ; preds = %10
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @get_fat(%struct.TYPE_10__*, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @get_owner(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @FAT_IS_BAD(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @fs_test(i32, i32) #1

declare dso_local i32 @cluster_start(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @set_fat(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
