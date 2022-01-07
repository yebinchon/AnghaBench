; ModuleID = '/home/carl/AnghaBench/tig/src/extr_refdb.c_get_ref_format.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_refdb.c_get_ref_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_format = type { i8*, i8* }
%struct.ref = type { i64 }

@get_ref_format.default_format = internal constant %struct.ref_format { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@REFERENCE_TAG = common dso_local global i64 0, align 8
@REFERENCE_REMOTE = common dso_local global i64 0, align 8
@REFERENCE_BRANCH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ref_format* @get_ref_format(%struct.ref_format** %0, %struct.ref* %1) #0 {
  %3 = alloca %struct.ref_format*, align 8
  %4 = alloca %struct.ref_format**, align 8
  %5 = alloca %struct.ref*, align 8
  %6 = alloca %struct.ref_format*, align 8
  store %struct.ref_format** %0, %struct.ref_format*** %4, align 8
  store %struct.ref* %1, %struct.ref** %5, align 8
  %7 = load %struct.ref_format**, %struct.ref_format*** %4, align 8
  %8 = icmp ne %struct.ref_format** %7, null
  br i1 %8, label %9, label %53

9:                                                ; preds = %2
  %10 = load %struct.ref_format**, %struct.ref_format*** %4, align 8
  %11 = load %struct.ref*, %struct.ref** %5, align 8
  %12 = getelementptr inbounds %struct.ref, %struct.ref* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.ref_format*, %struct.ref_format** %10, i64 %13
  %15 = load %struct.ref_format*, %struct.ref_format** %14, align 8
  store %struct.ref_format* %15, %struct.ref_format** %6, align 8
  %16 = load %struct.ref_format*, %struct.ref_format** %6, align 8
  %17 = icmp ne %struct.ref_format* %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %9
  %19 = load %struct.ref*, %struct.ref** %5, align 8
  %20 = call i64 @ref_is_tag(%struct.ref* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load %struct.ref_format**, %struct.ref_format*** %4, align 8
  %24 = load i64, i64* @REFERENCE_TAG, align 8
  %25 = getelementptr inbounds %struct.ref_format*, %struct.ref_format** %23, i64 %24
  %26 = load %struct.ref_format*, %struct.ref_format** %25, align 8
  store %struct.ref_format* %26, %struct.ref_format** %6, align 8
  br label %27

27:                                               ; preds = %22, %18, %9
  %28 = load %struct.ref_format*, %struct.ref_format** %6, align 8
  %29 = icmp ne %struct.ref_format* %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = load %struct.ref*, %struct.ref** %5, align 8
  %32 = call i64 @ref_is_remote(%struct.ref* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.ref_format**, %struct.ref_format*** %4, align 8
  %36 = load i64, i64* @REFERENCE_REMOTE, align 8
  %37 = getelementptr inbounds %struct.ref_format*, %struct.ref_format** %35, i64 %36
  %38 = load %struct.ref_format*, %struct.ref_format** %37, align 8
  store %struct.ref_format* %38, %struct.ref_format** %6, align 8
  br label %39

39:                                               ; preds = %34, %30, %27
  %40 = load %struct.ref_format*, %struct.ref_format** %6, align 8
  %41 = icmp ne %struct.ref_format* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load %struct.ref_format**, %struct.ref_format*** %4, align 8
  %44 = load i64, i64* @REFERENCE_BRANCH, align 8
  %45 = getelementptr inbounds %struct.ref_format*, %struct.ref_format** %43, i64 %44
  %46 = load %struct.ref_format*, %struct.ref_format** %45, align 8
  store %struct.ref_format* %46, %struct.ref_format** %6, align 8
  br label %47

47:                                               ; preds = %42, %39
  %48 = load %struct.ref_format*, %struct.ref_format** %6, align 8
  %49 = icmp ne %struct.ref_format* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load %struct.ref_format*, %struct.ref_format** %6, align 8
  store %struct.ref_format* %51, %struct.ref_format** %3, align 8
  br label %54

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %2
  store %struct.ref_format* @get_ref_format.default_format, %struct.ref_format** %3, align 8
  br label %54

54:                                               ; preds = %53, %50
  %55 = load %struct.ref_format*, %struct.ref_format** %3, align 8
  ret %struct.ref_format* %55
}

declare dso_local i64 @ref_is_tag(%struct.ref*) #1

declare dso_local i64 @ref_is_remote(%struct.ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
