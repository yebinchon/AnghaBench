; ModuleID = '/home/carl/AnghaBench/tmux/extr_server-fn.c_server_link_window.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server-fn.c_server_link_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winlink = type { i32, i32, i32 }
%struct.session = type { i32, %struct.winlink*, i32, i32 }
%struct.session_group = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"sessions are grouped\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"same index: %d\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"window-unlinked\00", align 1
@WINLINK_ALERTFLAGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"base-index\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server_link_window(%struct.session* %0, %struct.winlink* %1, %struct.session* %2, i32 %3, i32 %4, i32 %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.session*, align 8
  %10 = alloca %struct.winlink*, align 8
  %11 = alloca %struct.session*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca %struct.winlink*, align 8
  %17 = alloca %struct.session_group*, align 8
  %18 = alloca %struct.session_group*, align 8
  store %struct.session* %0, %struct.session** %9, align 8
  store %struct.winlink* %1, %struct.winlink** %10, align 8
  store %struct.session* %2, %struct.session** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8** %6, i8*** %15, align 8
  %19 = load %struct.session*, %struct.session** %9, align 8
  %20 = call %struct.session_group* @session_group_contains(%struct.session* %19)
  store %struct.session_group* %20, %struct.session_group** %17, align 8
  %21 = load %struct.session*, %struct.session** %11, align 8
  %22 = call %struct.session_group* @session_group_contains(%struct.session* %21)
  store %struct.session_group* %22, %struct.session_group** %18, align 8
  %23 = load %struct.session*, %struct.session** %9, align 8
  %24 = load %struct.session*, %struct.session** %11, align 8
  %25 = icmp ne %struct.session* %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %7
  %27 = load %struct.session_group*, %struct.session_group** %17, align 8
  %28 = icmp ne %struct.session_group* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load %struct.session_group*, %struct.session_group** %18, align 8
  %31 = icmp ne %struct.session_group* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.session_group*, %struct.session_group** %17, align 8
  %34 = load %struct.session_group*, %struct.session_group** %18, align 8
  %35 = icmp eq %struct.session_group* %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i8**, i8*** %15, align 8
  %38 = call i32 (i8**, i8*, ...) @xasprintf(i8** %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %127

39:                                               ; preds = %32, %29, %26, %7
  store %struct.winlink* null, %struct.winlink** %16, align 8
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, -1
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.session*, %struct.session** %11, align 8
  %44 = getelementptr inbounds %struct.session, %struct.session* %43, i32 0, i32 2
  %45 = load i32, i32* %12, align 4
  %46 = call %struct.winlink* @winlink_find_by_index(i32* %44, i32 %45)
  store %struct.winlink* %46, %struct.winlink** %16, align 8
  br label %47

47:                                               ; preds = %42, %39
  %48 = load %struct.winlink*, %struct.winlink** %16, align 8
  %49 = icmp ne %struct.winlink* %48, null
  br i1 %49, label %50, label %95

50:                                               ; preds = %47
  %51 = load %struct.winlink*, %struct.winlink** %16, align 8
  %52 = getelementptr inbounds %struct.winlink, %struct.winlink* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.winlink*, %struct.winlink** %10, align 8
  %55 = getelementptr inbounds %struct.winlink, %struct.winlink* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load i8**, i8*** %15, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 (i8**, i8*, ...) @xasprintf(i8** %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  store i32 -1, i32* %8, align 4
  br label %127

62:                                               ; preds = %50
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %94

65:                                               ; preds = %62
  %66 = load %struct.session*, %struct.session** %11, align 8
  %67 = load %struct.winlink*, %struct.winlink** %16, align 8
  %68 = getelementptr inbounds %struct.winlink, %struct.winlink* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @notify_session_window(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), %struct.session* %66, i32 %69)
  %71 = load i32, i32* @WINLINK_ALERTFLAGS, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.winlink*, %struct.winlink** %16, align 8
  %74 = getelementptr inbounds %struct.winlink, %struct.winlink* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.session*, %struct.session** %11, align 8
  %78 = getelementptr inbounds %struct.session, %struct.session* %77, i32 0, i32 3
  %79 = load %struct.winlink*, %struct.winlink** %16, align 8
  %80 = call i32 @winlink_stack_remove(i32* %78, %struct.winlink* %79)
  %81 = load %struct.session*, %struct.session** %11, align 8
  %82 = getelementptr inbounds %struct.session, %struct.session* %81, i32 0, i32 2
  %83 = load %struct.winlink*, %struct.winlink** %16, align 8
  %84 = call i32 @winlink_remove(i32* %82, %struct.winlink* %83)
  %85 = load %struct.winlink*, %struct.winlink** %16, align 8
  %86 = load %struct.session*, %struct.session** %11, align 8
  %87 = getelementptr inbounds %struct.session, %struct.session* %86, i32 0, i32 1
  %88 = load %struct.winlink*, %struct.winlink** %87, align 8
  %89 = icmp eq %struct.winlink* %85, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %65
  store i32 1, i32* %14, align 4
  %91 = load %struct.session*, %struct.session** %11, align 8
  %92 = getelementptr inbounds %struct.session, %struct.session* %91, i32 0, i32 1
  store %struct.winlink* null, %struct.winlink** %92, align 8
  br label %93

93:                                               ; preds = %90, %65
  br label %94

94:                                               ; preds = %93, %62
  br label %95

95:                                               ; preds = %94, %47
  %96 = load i32, i32* %12, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load %struct.session*, %struct.session** %11, align 8
  %100 = getelementptr inbounds %struct.session, %struct.session* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @options_get_number(i32 %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %103 = sub nsw i32 -1, %102
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %98, %95
  %105 = load %struct.session*, %struct.session** %11, align 8
  %106 = load %struct.winlink*, %struct.winlink** %10, align 8
  %107 = getelementptr inbounds %struct.winlink, %struct.winlink* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i8**, i8*** %15, align 8
  %111 = call %struct.winlink* @session_attach(%struct.session* %105, i32 %108, i32 %109, i8** %110)
  store %struct.winlink* %111, %struct.winlink** %16, align 8
  %112 = load %struct.winlink*, %struct.winlink** %16, align 8
  %113 = icmp eq %struct.winlink* %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  store i32 -1, i32* %8, align 4
  br label %127

115:                                              ; preds = %104
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load %struct.session*, %struct.session** %11, align 8
  %120 = load %struct.winlink*, %struct.winlink** %16, align 8
  %121 = getelementptr inbounds %struct.winlink, %struct.winlink* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @session_select(%struct.session* %119, i32 %122)
  br label %124

124:                                              ; preds = %118, %115
  %125 = load %struct.session*, %struct.session** %11, align 8
  %126 = call i32 @server_redraw_session_group(%struct.session* %125)
  store i32 0, i32* %8, align 4
  br label %127

127:                                              ; preds = %124, %114, %58, %36
  %128 = load i32, i32* %8, align 4
  ret i32 %128
}

declare dso_local %struct.session_group* @session_group_contains(%struct.session*) #1

declare dso_local i32 @xasprintf(i8**, i8*, ...) #1

declare dso_local %struct.winlink* @winlink_find_by_index(i32*, i32) #1

declare dso_local i32 @notify_session_window(i8*, %struct.session*, i32) #1

declare dso_local i32 @winlink_stack_remove(i32*, %struct.winlink*) #1

declare dso_local i32 @winlink_remove(i32*, %struct.winlink*) #1

declare dso_local i32 @options_get_number(i32, i8*) #1

declare dso_local %struct.winlink* @session_attach(%struct.session*, i32, i32, i8**) #1

declare dso_local i32 @session_select(%struct.session*, i32) #1

declare dso_local i32 @server_redraw_session_group(%struct.session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
