; ModuleID = '/home/carl/AnghaBench/tig/src/extr_blob.c_blob_request.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_blob.c_blob_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32, i32, %struct.TYPE_2__*, %struct.blob_state* }
%struct.TYPE_2__ = type { %struct.line*, i32, i32 }
%struct.blob_state = type { i32, i32 }
%struct.line = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Cannot reload immutable blob\00", align 1
@REQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i32, %struct.line*)* @blob_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blob_request(%struct.view* %0, i32 %1, %struct.line* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.line*, align 8
  %8 = alloca %struct.blob_state*, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.line* %2, %struct.line** %7, align 8
  %9 = load %struct.view*, %struct.view** %5, align 8
  %10 = getelementptr inbounds %struct.view, %struct.view* %9, i32 0, i32 3
  %11 = load %struct.blob_state*, %struct.blob_state** %10, align 8
  store %struct.blob_state* %11, %struct.blob_state** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %99 [
    i32 129, label %13
    i32 128, label %38
    i32 130, label %64
  ]

13:                                               ; preds = %3
  %14 = load %struct.blob_state*, %struct.blob_state** %8, align 8
  %15 = getelementptr inbounds %struct.blob_state, %struct.blob_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = call i32 @report(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %36

20:                                               ; preds = %13
  %21 = load %struct.view*, %struct.view** %5, align 8
  %22 = getelementptr inbounds %struct.view, %struct.view* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.blob_state*, %struct.blob_state** %8, align 8
  %27 = getelementptr inbounds %struct.blob_state, %struct.blob_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.blob_state*, %struct.blob_state** %8, align 8
  %30 = getelementptr inbounds %struct.blob_state, %struct.blob_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strlen(i32 %31)
  %33 = call i32 @string_ncopy(i32 %25, i32 %28, i32 %32)
  %34 = load %struct.view*, %struct.view** %5, align 8
  %35 = call i32 @refresh_view(%struct.view* %34)
  br label %36

36:                                               ; preds = %20, %18
  %37 = load i32, i32* @REQ_NONE, align 4
  store i32 %37, i32* %4, align 4
  br label %104

38:                                               ; preds = %3
  %39 = load %struct.view*, %struct.view** %5, align 8
  %40 = getelementptr inbounds %struct.view, %struct.view* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.blob_state*, %struct.blob_state** %8, align 8
  %45 = getelementptr inbounds %struct.blob_state, %struct.blob_state* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.blob_state*, %struct.blob_state** %8, align 8
  %48 = getelementptr inbounds %struct.blob_state, %struct.blob_state* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strlen(i32 %49)
  %51 = call i32 @string_ncopy(i32 %43, i32 %46, i32 %50)
  %52 = load %struct.line*, %struct.line** %7, align 8
  %53 = load %struct.view*, %struct.view** %5, align 8
  %54 = getelementptr inbounds %struct.view, %struct.view* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = sub i64 0, %56
  %58 = getelementptr inbounds %struct.line, %struct.line* %52, i64 %57
  %59 = load %struct.view*, %struct.view** %5, align 8
  %60 = getelementptr inbounds %struct.view, %struct.view* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store %struct.line* %58, %struct.line** %62, align 8
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %4, align 4
  br label %104

64:                                               ; preds = %3
  %65 = load %struct.blob_state*, %struct.blob_state** %8, align 8
  %66 = getelementptr inbounds %struct.blob_state, %struct.blob_state* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %64
  %70 = load %struct.blob_state*, %struct.blob_state** %8, align 8
  %71 = getelementptr inbounds %struct.blob_state, %struct.blob_state* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.line*, %struct.line** %7, align 8
  %74 = load %struct.view*, %struct.view** %5, align 8
  %75 = getelementptr inbounds %struct.view, %struct.view* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = sub i64 0, %77
  %79 = getelementptr inbounds %struct.line, %struct.line* %73, i64 %78
  %80 = getelementptr inbounds %struct.line, %struct.line* %79, i64 1
  %81 = ptrtoint %struct.line* %80 to i32
  %82 = call i32 @open_editor(i32 %72, i32 %81)
  br label %97

83:                                               ; preds = %64
  %84 = load %struct.view*, %struct.view** %5, align 8
  %85 = getelementptr inbounds %struct.view, %struct.view* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.line*, %struct.line** %7, align 8
  %88 = load %struct.view*, %struct.view** %5, align 8
  %89 = getelementptr inbounds %struct.view, %struct.view* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = sub i64 0, %91
  %93 = getelementptr inbounds %struct.line, %struct.line* %87, i64 %92
  %94 = getelementptr inbounds %struct.line, %struct.line* %93, i64 1
  %95 = ptrtoint %struct.line* %94 to i32
  %96 = call i32 @open_blob_editor(i32 %86, i32* null, i32 %95)
  br label %97

97:                                               ; preds = %83, %69
  %98 = load i32, i32* @REQ_NONE, align 4
  store i32 %98, i32* %4, align 4
  br label %104

99:                                               ; preds = %3
  %100 = load %struct.view*, %struct.view** %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.line*, %struct.line** %7, align 8
  %103 = call i32 @pager_request(%struct.view* %100, i32 %101, %struct.line* %102)
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %99, %97, %38, %36
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @report(i8*) #1

declare dso_local i32 @string_ncopy(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @refresh_view(%struct.view*) #1

declare dso_local i32 @open_editor(i32, i32) #1

declare dso_local i32 @open_blob_editor(i32, i32*, i32) #1

declare dso_local i32 @pager_request(%struct.view*, i32, %struct.line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
