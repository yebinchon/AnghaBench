; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_vc-common.c_vc_compare_commits.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_vc-common.c_vc_compare_commits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i8* }

@VC_UP_TO_DATE = common dso_local global i32 0, align 4
@seaf = common dso_local global %struct.TYPE_9__* null, align 8
@VC_INDEPENDENT = common dso_local global i32 0, align 4
@VC_FAST_FORWARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc_compare_commits(i8* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call i64 @strcmp(i8* %14, i8* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @VC_UP_TO_DATE, align 4
  store i32 %19, i32* %5, align 4
  br label %92

20:                                               ; preds = %4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** @seaf, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call %struct.TYPE_8__* @seaf_commit_manager_get_commit(i32 %23, i8* %24, i32 %25, i8* %26)
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %10, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %29 = icmp ne %struct.TYPE_8__* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %20
  %31 = load i32, i32* @VC_INDEPENDENT, align 4
  store i32 %31, i32* %5, align 4
  br label %92

32:                                               ; preds = %20
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** @seaf, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = call %struct.TYPE_8__* @seaf_commit_manager_get_commit(i32 %35, i8* %36, i32 %37, i8* %38)
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %11, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %41 = icmp ne %struct.TYPE_8__* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %32
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %44 = call i32 @seaf_commit_unref(%struct.TYPE_8__* %43)
  %45 = load i32, i32* @VC_INDEPENDENT, align 4
  store i32 %45, i32* %5, align 4
  br label %92

46:                                               ; preds = %32
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %49 = call %struct.TYPE_8__* @get_merge_base(%struct.TYPE_8__* %47, %struct.TYPE_8__* %48)
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %12, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %51 = icmp ne %struct.TYPE_8__* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @VC_INDEPENDENT, align 4
  store i32 %53, i32* %13, align 4
  br label %80

54:                                               ; preds = %46
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @strcmp(i8* %57, i8* %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* @VC_UP_TO_DATE, align 4
  store i32 %64, i32* %13, align 4
  br label %79

65:                                               ; preds = %54
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @strcmp(i8* %68, i8* %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = load i32, i32* @VC_FAST_FORWARD, align 4
  store i32 %75, i32* %13, align 4
  br label %78

76:                                               ; preds = %65
  %77 = load i32, i32* @VC_INDEPENDENT, align 4
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %76, %74
  br label %79

79:                                               ; preds = %78, %63
  br label %80

80:                                               ; preds = %79, %52
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %82 = icmp ne %struct.TYPE_8__* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %85 = call i32 @seaf_commit_unref(%struct.TYPE_8__* %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %88 = call i32 @seaf_commit_unref(%struct.TYPE_8__* %87)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %90 = call i32 @seaf_commit_unref(%struct.TYPE_8__* %89)
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %86, %42, %30, %18
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_8__* @seaf_commit_manager_get_commit(i32, i8*, i32, i8*) #1

declare dso_local i32 @seaf_commit_unref(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @get_merge_base(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
