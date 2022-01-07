; ModuleID = '/home/carl/AnghaBench/tig/src/extr_refs.c_refs_request.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_refs.c_refs_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.view = type { i32 }
%struct.line = type { %struct.reference* }
%struct.reference = type { %struct.ref* }
%struct.ref = type { i8* }

@REQ_NONE = common dso_local global i32 0, align 4
@encoding_arg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%(mainargs)\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"--all\00", align 1
@main_view = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to format argument\00", align 1
@OPEN_SPLIT = common dso_local global i32 0, align 4
@OPEN_PREPARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i32, %struct.line*)* @refs_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @refs_request(%struct.view* %0, i32 %1, %struct.line* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.line*, align 8
  %8 = alloca %struct.reference*, align 8
  %9 = alloca %struct.ref*, align 8
  %10 = alloca [1 x i8*], align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.line* %2, %struct.line** %7, align 8
  %11 = load %struct.line*, %struct.line** %7, align 8
  %12 = getelementptr inbounds %struct.line, %struct.line* %11, i32 0, i32 0
  %13 = load %struct.reference*, %struct.reference** %12, align 8
  store %struct.reference* %13, %struct.reference** %8, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %54 [
    i32 128, label %15
    i32 129, label %20
  ]

15:                                               ; preds = %3
  %16 = call i32 @load_refs(i32 1)
  %17 = load %struct.view*, %struct.view** %5, align 8
  %18 = call i32 @refresh_view(%struct.view* %17)
  %19 = load i32, i32* @REQ_NONE, align 4
  store i32 %19, i32* %4, align 4
  br label %56

20:                                               ; preds = %3
  %21 = load %struct.reference*, %struct.reference** %8, align 8
  %22 = getelementptr inbounds %struct.reference, %struct.reference* %21, i32 0, i32 0
  %23 = load %struct.ref*, %struct.ref** %22, align 8
  store %struct.ref* %23, %struct.ref** %9, align 8
  %24 = getelementptr inbounds [1 x i8*], [1 x i8*]* %10, i64 0, i64 0
  %25 = load i32, i32* @encoding_arg, align 4
  %26 = call i32 (...) @commit_order_arg()
  %27 = load %struct.reference*, %struct.reference** %8, align 8
  %28 = call i32 @refs_is_all(%struct.reference* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %35

31:                                               ; preds = %20
  %32 = load %struct.ref*, %struct.ref** %9, align 8
  %33 = getelementptr inbounds %struct.ref, %struct.ref* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  br label %35

35:                                               ; preds = %31, %30
  %36 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %30 ], [ %34, %31 ]
  %37 = call i32 (...) @show_notes_arg()
  %38 = call i32 (...) @log_custom_pretty_arg()
  %39 = call i8* @GIT_MAIN_LOG(i32 %25, i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38)
  store i8* %39, i8** %24, align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @main_view, i32 0, i32 1), align 4
  %41 = getelementptr inbounds [1 x i8*], [1 x i8*]* %10, i64 0, i64 0
  %42 = call i32 @argv_format(i32 %40, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @main_view, i32 0, i32 0), i8** %41, i32 0, i32 0)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %35
  %45 = call i32 @report(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %52

46:                                               ; preds = %35
  %47 = load %struct.view*, %struct.view** %5, align 8
  %48 = load i32, i32* @OPEN_SPLIT, align 4
  %49 = load i32, i32* @OPEN_PREPARED, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @open_view(%struct.view* %47, %struct.TYPE_3__* @main_view, i32 %50)
  br label %52

52:                                               ; preds = %46, %44
  %53 = load i32, i32* @REQ_NONE, align 4
  store i32 %53, i32* %4, align 4
  br label %56

54:                                               ; preds = %3
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %52, %15
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @load_refs(i32) #1

declare dso_local i32 @refresh_view(%struct.view*) #1

declare dso_local i8* @GIT_MAIN_LOG(i32, i32, i8*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @commit_order_arg(...) #1

declare dso_local i32 @refs_is_all(%struct.reference*) #1

declare dso_local i32 @show_notes_arg(...) #1

declare dso_local i32 @log_custom_pretty_arg(...) #1

declare dso_local i32 @argv_format(i32, i32*, i8**, i32, i32) #1

declare dso_local i32 @report(i8*) #1

declare dso_local i32 @open_view(%struct.view*, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
