; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_dbgmsg_print_tree.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_dbgmsg_print_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i8*, i64, %struct.TYPE_4__**, i64, i64, %struct.TYPE_5__*, i64, i64 }

@vdev_missing_ops = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [15 x i8] c"%*svdev %u: %s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"offline\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"removed\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"can't open\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"faulted\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"degraded\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"healthy\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"<state %u>\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"%*svdev %u: %s%s, guid: %llu, path: %s, %s\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c" (log)\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdev_dbgmsg_print_tree(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [20 x i8], align 16
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 6
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = icmp eq %struct.TYPE_5__* %14, @vdev_missing_ops
  br i1 %15, label %16, label %28

16:                                               ; preds = %11, %2
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 6
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, i32, i8*, i32, i32, ...) @zfs_dbgmsg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %26)
  br label %114

28:                                               ; preds = %11
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %56 [
    i32 128, label %32
    i32 134, label %35
    i32 130, label %38
    i32 129, label %41
    i32 135, label %44
    i32 132, label %47
    i32 133, label %50
    i32 131, label %53
  ]

32:                                               ; preds = %28
  %33 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %34 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %33, i32 20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %62

35:                                               ; preds = %28
  %36 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %37 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %36, i32 20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %62

38:                                               ; preds = %28
  %39 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %40 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %39, i32 20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %62

41:                                               ; preds = %28
  %42 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %43 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %42, i32 20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %62

44:                                               ; preds = %28
  %45 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %46 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %45, i32 20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %62

47:                                               ; preds = %28
  %48 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %49 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %48, i32 20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %62

50:                                               ; preds = %28
  %51 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %52 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %51, i32 20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %62

53:                                               ; preds = %28
  %54 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %55 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %54, i32 20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %62

56:                                               ; preds = %28
  %57 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %57, i32 20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %56, %53, %50, %47, %44, %41, %38, %35, %32
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 7
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 6
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %62
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  br label %92

91:                                               ; preds = %62
  br label %92

92:                                               ; preds = %91, %87
  %93 = phi i8* [ %90, %87 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), %91 ]
  %94 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %95 = call i32 (i8*, i32, i8*, i32, i32, ...) @zfs_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i32 %63, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %72, i8* %78, i32 %82, i8* %93, i8* %94)
  store i64 0, i64* %6, align 8
  br label %96

96:                                               ; preds = %111, %92
  %97 = load i64, i64* %6, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ult i64 %97, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %96
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %104, align 8
  %106 = load i64, i64* %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %105, i64 %106
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 2
  call void @vdev_dbgmsg_print_tree(%struct.TYPE_4__* %108, i32 %110)
  br label %111

111:                                              ; preds = %102
  %112 = load i64, i64* %6, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %6, align 8
  br label %96

114:                                              ; preds = %16, %96
  ret void
}

declare dso_local i32 @zfs_dbgmsg(i8*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
