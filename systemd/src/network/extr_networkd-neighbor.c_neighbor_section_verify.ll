; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-neighbor.c_neighbor_section_verify.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-neighbor.c_neighbor_section_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [92 x i8] c"%s: Neighbor section without Address= configured. Ignoring [Neighbor] section from line %u.\00", align 1
@.str.1 = private unnamed_addr constant [101 x i8] c"%s: Neighbor section without LinkLayerAddress= configured. Ignoring [Neighbor] section from line %u.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @neighbor_section_verify(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = call i64 @section_is_invalid(%struct.TYPE_5__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %52

12:                                               ; preds = %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AF_UNSPEC, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %12
  %19 = load i32, i32* @EINVAL, align 4
  %20 = call i32 @SYNTHETIC_ERRNO(i32 %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @log_warning_errno(i32 %20, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %30)
  store i32 %31, i32* %2, align 4
  br label %52

32:                                               ; preds = %12
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  %39 = call i32 @SYNTHETIC_ERRNO(i32 %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @log_warning_errno(i32 %39, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %49)
  store i32 %50, i32* %2, align 4
  br label %52

51:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %37, %18, %9
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @section_is_invalid(%struct.TYPE_5__*) #1

declare dso_local i32 @log_warning_errno(i32, i8*, i32, i32) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
