; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_check.c_scan_dir.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_check.c_scan_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_19__*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_19__*, i32**)* @scan_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_dir(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_19__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store i32** %2, i32*** %7, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store %struct.TYPE_19__** %12, %struct.TYPE_19__*** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %15 = call i32 @FSTART(%struct.TYPE_19__* %13, %struct.TYPE_18__* %14)
  store i32 %15, i32* %10, align 4
  %16 = call i32 (...) @new_dir()
  br label %17

17:                                               ; preds = %60, %3
  %18 = load i32, i32* %10, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, -1
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i1 [ false, %17 ], [ %22, %20 ]
  br i1 %24, label %25, label %61

25:                                               ; preds = %23
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @cluster_start(%struct.TYPE_18__* %28, i32 %29)
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = srem i32 %31, %34
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %30, %36
  %38 = load i32**, i32*** %7, align 8
  %39 = call i32 @add_file(%struct.TYPE_18__* %26, %struct.TYPE_19__*** %8, %struct.TYPE_19__* %27, i64 %37, i32** %38)
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = add i64 %41, 4
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = srem i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %25
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @next_cluster(%struct.TYPE_18__* %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %50
  br label %61

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59, %25
  br label %17

61:                                               ; preds = %58, %23
  %62 = call i32 (...) @lfn_check_orphaned()
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @check_dir(%struct.TYPE_18__* %63, %struct.TYPE_19__** %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %85

72:                                               ; preds = %61
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %75, align 8
  %77 = call i64 @check_files(%struct.TYPE_18__* %73, %struct.TYPE_19__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 1, i32* %4, align 4
  br label %85

80:                                               ; preds = %72
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %83 = load i32**, i32*** %7, align 8
  %84 = call i32 @subdirs(%struct.TYPE_18__* %81, %struct.TYPE_19__* %82, i32** %83)
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %80, %79, %71
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @FSTART(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @new_dir(...) #1

declare dso_local i32 @add_file(%struct.TYPE_18__*, %struct.TYPE_19__***, %struct.TYPE_19__*, i64, i32**) #1

declare dso_local i64 @cluster_start(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @next_cluster(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @lfn_check_orphaned(...) #1

declare dso_local i64 @check_dir(%struct.TYPE_18__*, %struct.TYPE_19__**, i32) #1

declare dso_local i64 @check_files(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @subdirs(%struct.TYPE_18__*, %struct.TYPE_19__*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
