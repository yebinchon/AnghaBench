; ModuleID = '/home/carl/AnghaBench/tmux/extr_session.c_session_attach.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_session.c_session_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winlink = type { %struct.session* }
%struct.session = type { i32 }
%struct.window = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"index in use: %d\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"window-linked\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.winlink* @session_attach(%struct.session* %0, %struct.window* %1, i32 %2, i8** %3) #0 {
  %5 = alloca %struct.winlink*, align 8
  %6 = alloca %struct.session*, align 8
  %7 = alloca %struct.window*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.winlink*, align 8
  store %struct.session* %0, %struct.session** %6, align 8
  store %struct.window* %1, %struct.window** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %11 = load %struct.session*, %struct.session** %6, align 8
  %12 = getelementptr inbounds %struct.session, %struct.session* %11, i32 0, i32 0
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.winlink* @winlink_add(i32* %12, i32 %13)
  store %struct.winlink* %14, %struct.winlink** %10, align 8
  %15 = icmp eq %struct.winlink* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i8**, i8*** %9, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @xasprintf(i8** %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %18)
  store %struct.winlink* null, %struct.winlink** %5, align 8
  br label %33

20:                                               ; preds = %4
  %21 = load %struct.session*, %struct.session** %6, align 8
  %22 = load %struct.winlink*, %struct.winlink** %10, align 8
  %23 = getelementptr inbounds %struct.winlink, %struct.winlink* %22, i32 0, i32 0
  store %struct.session* %21, %struct.session** %23, align 8
  %24 = load %struct.winlink*, %struct.winlink** %10, align 8
  %25 = load %struct.window*, %struct.window** %7, align 8
  %26 = call i32 @winlink_set_window(%struct.winlink* %24, %struct.window* %25)
  %27 = load %struct.session*, %struct.session** %6, align 8
  %28 = load %struct.window*, %struct.window** %7, align 8
  %29 = call i32 @notify_session_window(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.session* %27, %struct.window* %28)
  %30 = load %struct.session*, %struct.session** %6, align 8
  %31 = call i32 @session_group_synchronize_from(%struct.session* %30)
  %32 = load %struct.winlink*, %struct.winlink** %10, align 8
  store %struct.winlink* %32, %struct.winlink** %5, align 8
  br label %33

33:                                               ; preds = %20, %16
  %34 = load %struct.winlink*, %struct.winlink** %5, align 8
  ret %struct.winlink* %34
}

declare dso_local %struct.winlink* @winlink_add(i32*, i32) #1

declare dso_local i32 @xasprintf(i8**, i8*, i32) #1

declare dso_local i32 @winlink_set_window(%struct.winlink*, %struct.window*) #1

declare dso_local i32 @notify_session_window(i8*, %struct.session*, %struct.window*) #1

declare dso_local i32 @session_group_synchronize_from(%struct.session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
