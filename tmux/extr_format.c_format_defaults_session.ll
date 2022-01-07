; ModuleID = '/home/carl/AnghaBench/tmux/extr_format.c_format_defaults_session.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format.c_format_defaults_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_tree = type { %struct.session* }
%struct.session = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.session_group = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"session_name\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"session_windows\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"session_id\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"$%u\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"session_grouped\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"session_group\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"session_group_size\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"session_group_list\00", align 1
@format_cb_session_group_list = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"session_created\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"session_last_attached\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"session_activity\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"session_attached\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"session_many_attached\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"session_alerts\00", align 1
@format_cb_session_alerts = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [14 x i8] c"session_stack\00", align 1
@format_cb_session_stack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.format_tree*, %struct.session*)* @format_defaults_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_defaults_session(%struct.format_tree* %0, %struct.session* %1) #0 {
  %3 = alloca %struct.format_tree*, align 8
  %4 = alloca %struct.session*, align 8
  %5 = alloca %struct.session_group*, align 8
  store %struct.format_tree* %0, %struct.format_tree** %3, align 8
  store %struct.session* %1, %struct.session** %4, align 8
  %6 = load %struct.session*, %struct.session** %4, align 8
  %7 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %8 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %7, i32 0, i32 0
  store %struct.session* %6, %struct.session** %8, align 8
  %9 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %10 = load %struct.session*, %struct.session** %4, align 8
  %11 = getelementptr inbounds %struct.session, %struct.session* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @format_add(%struct.format_tree* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %15 = load %struct.session*, %struct.session** %4, align 8
  %16 = getelementptr inbounds %struct.session, %struct.session* %15, i32 0, i32 6
  %17 = call i32 @winlink_count(i32* %16)
  %18 = call i32 @format_add(%struct.format_tree* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %17)
  %19 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %20 = load %struct.session*, %struct.session** %4, align 8
  %21 = getelementptr inbounds %struct.session, %struct.session* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @format_add(%struct.format_tree* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %22)
  %24 = load %struct.session*, %struct.session** %4, align 8
  %25 = call %struct.session_group* @session_group_contains(%struct.session* %24)
  store %struct.session_group* %25, %struct.session_group** %5, align 8
  %26 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %27 = load %struct.session_group*, %struct.session_group** %5, align 8
  %28 = icmp ne %struct.session_group* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @format_add(%struct.format_tree* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %29)
  %31 = load %struct.session_group*, %struct.session_group** %5, align 8
  %32 = icmp ne %struct.session_group* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %2
  %34 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %35 = load %struct.session_group*, %struct.session_group** %5, align 8
  %36 = getelementptr inbounds %struct.session_group, %struct.session_group* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @format_add(%struct.format_tree* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %40 = load %struct.session_group*, %struct.session_group** %5, align 8
  %41 = call i32 @session_group_count(%struct.session_group* %40)
  %42 = call i32 @format_add(%struct.format_tree* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %44 = load i32, i32* @format_cb_session_group_list, align 4
  %45 = call i32 @format_add_cb(%struct.format_tree* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %33, %2
  %47 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %48 = load %struct.session*, %struct.session** %4, align 8
  %49 = getelementptr inbounds %struct.session, %struct.session* %48, i32 0, i32 5
  %50 = call i32 @format_add_tv(%struct.format_tree* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32* %49)
  %51 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %52 = load %struct.session*, %struct.session** %4, align 8
  %53 = getelementptr inbounds %struct.session, %struct.session* %52, i32 0, i32 4
  %54 = call i32 @format_add_tv(%struct.format_tree* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32* %53)
  %55 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %56 = load %struct.session*, %struct.session** %4, align 8
  %57 = getelementptr inbounds %struct.session, %struct.session* %56, i32 0, i32 3
  %58 = call i32 @format_add_tv(%struct.format_tree* %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32* %57)
  %59 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %60 = load %struct.session*, %struct.session** %4, align 8
  %61 = getelementptr inbounds %struct.session, %struct.session* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @format_add(%struct.format_tree* %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %65 = load %struct.session*, %struct.session** %4, align 8
  %66 = getelementptr inbounds %struct.session, %struct.session* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %67, 1
  %69 = zext i1 %68 to i32
  %70 = call i32 @format_add(%struct.format_tree* %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %69)
  %71 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %72 = load i32, i32* @format_cb_session_alerts, align 4
  %73 = call i32 @format_add_cb(%struct.format_tree* %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 %72)
  %74 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %75 = load i32, i32* @format_cb_session_stack, align 4
  %76 = call i32 @format_add_cb(%struct.format_tree* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 %75)
  ret void
}

declare dso_local i32 @format_add(%struct.format_tree*, i8*, i8*, i32) #1

declare dso_local i32 @winlink_count(i32*) #1

declare dso_local %struct.session_group* @session_group_contains(%struct.session*) #1

declare dso_local i32 @session_group_count(%struct.session_group*) #1

declare dso_local i32 @format_add_cb(%struct.format_tree*, i8*, i32) #1

declare dso_local i32 @format_add_tv(%struct.format_tree*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
