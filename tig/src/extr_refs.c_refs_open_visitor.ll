; ModuleID = '/home/carl/AnghaBench/tig/src/extr_refs.c_refs_open_visitor.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_refs.c_refs_open_visitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32 }
%struct.view = type { i32 }
%struct.reference = type { %struct.ref* }
%struct.line = type { i32 }

@refs_all = common dso_local global %struct.ref* null, align 8
@refs_filter = common dso_local global i32 0, align 4
@REFERENCE_TAG = common dso_local global i32 0, align 4
@REFERENCE_LOCAL_TAG = common dso_local global i32 0, align 4
@REFERENCE_BRANCH = common dso_local global i32 0, align 4
@REFERENCE_HEAD = common dso_local global i32 0, align 4
@REFERENCE_TRACKED_REMOTE = common dso_local global i32 0, align 4
@REFERENCE_REMOTE = common dso_local global i32 0, align 4
@LINE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.ref*)* @refs_open_visitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @refs_open_visitor(i8* %0, %struct.ref* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ref*, align 8
  %6 = alloca %struct.view*, align 8
  %7 = alloca %struct.reference*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.line*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.ref* %1, %struct.ref** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.view*
  store %struct.view* %11, %struct.view** %6, align 8
  %12 = load %struct.ref*, %struct.ref** %5, align 8
  %13 = load %struct.ref*, %struct.ref** @refs_all, align 8
  %14 = icmp eq %struct.ref* %12, %13
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %65, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @refs_filter, align 4
  switch i32 %19, label %63 [
    i32 128, label %20
    i32 131, label %34
    i32 129, label %48
    i32 130, label %62
  ]

20:                                               ; preds = %18
  %21 = load %struct.ref*, %struct.ref** %5, align 8
  %22 = getelementptr inbounds %struct.ref, %struct.ref* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @REFERENCE_TAG, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.ref*, %struct.ref** %5, align 8
  %28 = getelementptr inbounds %struct.ref, %struct.ref* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @REFERENCE_LOCAL_TAG, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %80

33:                                               ; preds = %26, %20
  br label %64

34:                                               ; preds = %18
  %35 = load %struct.ref*, %struct.ref** %5, align 8
  %36 = getelementptr inbounds %struct.ref, %struct.ref* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @REFERENCE_BRANCH, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.ref*, %struct.ref** %5, align 8
  %42 = getelementptr inbounds %struct.ref, %struct.ref* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @REFERENCE_HEAD, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %80

47:                                               ; preds = %40, %34
  br label %64

48:                                               ; preds = %18
  %49 = load %struct.ref*, %struct.ref** %5, align 8
  %50 = getelementptr inbounds %struct.ref, %struct.ref* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @REFERENCE_TRACKED_REMOTE, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.ref*, %struct.ref** %5, align 8
  %56 = getelementptr inbounds %struct.ref, %struct.ref* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @REFERENCE_REMOTE, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %80

61:                                               ; preds = %54, %48
  br label %64

62:                                               ; preds = %18
  br label %63

63:                                               ; preds = %18, %62
  br label %64

64:                                               ; preds = %63, %61, %47, %33
  br label %65

65:                                               ; preds = %64, %2
  %66 = load %struct.view*, %struct.view** %6, align 8
  %67 = load i32, i32* @LINE_DEFAULT, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call %struct.line* @add_line_alloc(%struct.view* %66, %struct.reference** %7, i32 %67, i32 0, i32 %68)
  store %struct.line* %69, %struct.line** %9, align 8
  %70 = load %struct.line*, %struct.line** %9, align 8
  %71 = icmp ne %struct.line* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %80

73:                                               ; preds = %65
  %74 = load %struct.ref*, %struct.ref** %5, align 8
  %75 = load %struct.reference*, %struct.reference** %7, align 8
  %76 = getelementptr inbounds %struct.reference, %struct.reference* %75, i32 0, i32 0
  store %struct.ref* %74, %struct.ref** %76, align 8
  %77 = load %struct.view*, %struct.view** %6, align 8
  %78 = load %struct.line*, %struct.line** %9, align 8
  %79 = call i32 @view_column_info_update(%struct.view* %77, %struct.line* %78)
  store i32 1, i32* %3, align 4
  br label %80

80:                                               ; preds = %73, %72, %60, %46, %32
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.line* @add_line_alloc(%struct.view*, %struct.reference**, i32, i32, i32) #1

declare dso_local i32 @view_column_info_update(%struct.view*, %struct.line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
