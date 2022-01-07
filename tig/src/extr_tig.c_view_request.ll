; ModuleID = '/home/carl/AnghaBench/tig/src/extr_tig.c_view_request.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_tig.c_view_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.TYPE_4__, i32*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.view*, i32, i32*)* }

@REQ_ENTER = common dso_local global i32 0, align 4
@opt_focus_child = common dso_local global i32 0, align 4
@opt_send_child_enter = common dso_local global i64 0, align 8
@VIEW_SEND_CHILD_ENTER = common dso_local global i32 0, align 4
@display = common dso_local global %struct.view** null, align 8
@REQ_NONE = common dso_local global i32 0, align 4
@REQ_REFRESH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"This view can not be refreshed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i32)* @view_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @view_request(%struct.view* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.view*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.view*, align 8
  store %struct.view* %0, %struct.view** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.view*, %struct.view** %4, align 8
  %8 = icmp ne %struct.view* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.view*, %struct.view** %4, align 8
  %11 = getelementptr inbounds %struct.view, %struct.view* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9, %2
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %3, align 4
  br label %73

16:                                               ; preds = %9
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @REQ_ENTER, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %16
  %21 = load i32, i32* @opt_focus_child, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* @opt_send_child_enter, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %23
  %27 = load %struct.view*, %struct.view** %4, align 8
  %28 = load i32, i32* @VIEW_SEND_CHILD_ENTER, align 4
  %29 = call i64 @view_has_flags(%struct.view* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load %struct.view**, %struct.view*** @display, align 8
  %33 = getelementptr inbounds %struct.view*, %struct.view** %32, i64 1
  %34 = load %struct.view*, %struct.view** %33, align 8
  store %struct.view* %34, %struct.view** %6, align 8
  %35 = load %struct.view*, %struct.view** %6, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @forward_request_to_child(%struct.view* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load %struct.view*, %struct.view** %6, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @view_request(%struct.view* %40, i32 %41)
  %43 = load i32, i32* @REQ_NONE, align 4
  store i32 %43, i32* %3, align 4
  br label %73

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %26, %23, %20, %16
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @REQ_REFRESH, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load %struct.view*, %struct.view** %4, align 8
  %51 = call i32 @view_can_refresh(%struct.view* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = call i32 @report(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @REQ_NONE, align 4
  store i32 %55, i32* %3, align 4
  br label %73

56:                                               ; preds = %49, %45
  %57 = load %struct.view*, %struct.view** %4, align 8
  %58 = getelementptr inbounds %struct.view, %struct.view* %57, i32 0, i32 2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32 (%struct.view*, i32, i32*)*, i32 (%struct.view*, i32, i32*)** %60, align 8
  %62 = load %struct.view*, %struct.view** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.view*, %struct.view** %4, align 8
  %65 = getelementptr inbounds %struct.view, %struct.view* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.view*, %struct.view** %4, align 8
  %68 = getelementptr inbounds %struct.view, %struct.view* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  %72 = call i32 %61(%struct.view* %62, i32 %63, i32* %71)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %56, %53, %39, %14
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @view_has_flags(%struct.view*, i32) #1

declare dso_local i64 @forward_request_to_child(%struct.view*, i32) #1

declare dso_local i32 @view_can_refresh(%struct.view*) #1

declare dso_local i32 @report(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
