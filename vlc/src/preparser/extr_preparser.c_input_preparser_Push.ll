; ModuleID = '/home/carl/AnghaBench/vlc/src/preparser/extr_preparser.c_input_preparser_Push.c'
source_filename = "/home/carl/AnghaBench/vlc/src/preparser/extr_preparser.c_input_preparser_Push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_13__*, i32, i8*)* }
%struct.input_preparser_req_t = type { i64 }

@META_REQUEST_OPTION_DO_INTERACT = common dso_local global i32 0, align 4
@META_REQUEST_OPTION_SCOPE_NETWORK = common dso_local global i32 0, align 4
@ITEM_PREPARSE_SKIPPED = common dso_local global i32 0, align 4
@ITEM_PREPARSE_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_preparser_Push(%struct.TYPE_11__* %0, %struct.TYPE_13__* %1, i32 %2, %struct.TYPE_12__* %3, i8* %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.input_preparser_req_t*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = call i64 @atomic_load(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %7
  br label %108

23:                                               ; preds = %7
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 3
  %26 = call i32 @vlc_mutex_lock(i32* %25)
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %15, align 4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @META_REQUEST_OPTION_DO_INTERACT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %23
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 2
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %23
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 3
  %43 = call i32 @vlc_mutex_unlock(i32* %42)
  %44 = load i32, i32* %15, align 4
  switch i32 %44, label %55 [
    i32 129, label %45
    i32 130, label %45
    i32 131, label %45
    i32 128, label %45
  ]

45:                                               ; preds = %40, %40, %40, %40
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @META_REQUEST_OPTION_SCOPE_NETWORK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %45
  br label %72

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %40, %54
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %57 = icmp ne %struct.TYPE_12__* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_13__*, i32, i8*)*, i32 (%struct.TYPE_13__*, i32, i8*)** %60, align 8
  %62 = icmp ne i32 (%struct.TYPE_13__*, i32, i8*)* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32 (%struct.TYPE_13__*, i32, i8*)*, i32 (%struct.TYPE_13__*, i32, i8*)** %65, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %68 = load i32, i32* @ITEM_PREPARSE_SKIPPED, align 4
  %69 = load i8*, i8** %12, align 8
  %70 = call i32 %66(%struct.TYPE_13__* %67, i32 %68, i8* %69)
  br label %71

71:                                               ; preds = %63, %58, %55
  br label %108

72:                                               ; preds = %53
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = call %struct.input_preparser_req_t* @ReqCreate(%struct.TYPE_13__* %73, i32 %74, %struct.TYPE_12__* %75, i8* %76)
  store %struct.input_preparser_req_t* %77, %struct.input_preparser_req_t** %17, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.input_preparser_req_t*, %struct.input_preparser_req_t** %17, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i64 @background_worker_Push(i32 %80, %struct.input_preparser_req_t* %81, i8* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %72
  %87 = load %struct.input_preparser_req_t*, %struct.input_preparser_req_t** %17, align 8
  %88 = getelementptr inbounds %struct.input_preparser_req_t, %struct.input_preparser_req_t* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %86
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32 (%struct.TYPE_13__*, i32, i8*)*, i32 (%struct.TYPE_13__*, i32, i8*)** %93, align 8
  %95 = icmp ne i32 (%struct.TYPE_13__*, i32, i8*)* %94, null
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32 (%struct.TYPE_13__*, i32, i8*)*, i32 (%struct.TYPE_13__*, i32, i8*)** %98, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %101 = load i32, i32* @ITEM_PREPARSE_FAILED, align 4
  %102 = load i8*, i8** %12, align 8
  %103 = call i32 %99(%struct.TYPE_13__* %100, i32 %101, i8* %102)
  br label %104

104:                                              ; preds = %96, %91, %86
  br label %105

105:                                              ; preds = %104, %72
  %106 = load %struct.input_preparser_req_t*, %struct.input_preparser_req_t** %17, align 8
  %107 = call i32 @ReqRelease(%struct.input_preparser_req_t* %106)
  br label %108

108:                                              ; preds = %105, %71, %22
  ret void
}

declare dso_local i64 @atomic_load(i32*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local %struct.input_preparser_req_t* @ReqCreate(%struct.TYPE_13__*, i32, %struct.TYPE_12__*, i8*) #1

declare dso_local i64 @background_worker_Push(i32, %struct.input_preparser_req_t*, i8*, i32) #1

declare dso_local i32 @ReqRelease(%struct.input_preparser_req_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
