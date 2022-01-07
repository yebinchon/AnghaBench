; ModuleID = '/home/carl/AnghaBench/tmux/extr_session.c_session_group_new.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_session.c_session_group_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session_group = type { i32, i32 }

@session_groups = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.session_group* @session_group_new(i8* %0) #0 {
  %2 = alloca %struct.session_group*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.session_group*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct.session_group* @session_group_find(i8* %5)
  store %struct.session_group* %6, %struct.session_group** %4, align 8
  %7 = icmp ne %struct.session_group* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load %struct.session_group*, %struct.session_group** %4, align 8
  store %struct.session_group* %9, %struct.session_group** %2, align 8
  br label %23

10:                                               ; preds = %1
  %11 = call %struct.session_group* @xcalloc(i32 1, i32 8)
  store %struct.session_group* %11, %struct.session_group** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @xstrdup(i8* %12)
  %14 = load %struct.session_group*, %struct.session_group** %4, align 8
  %15 = getelementptr inbounds %struct.session_group, %struct.session_group* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.session_group*, %struct.session_group** %4, align 8
  %17 = getelementptr inbounds %struct.session_group, %struct.session_group* %16, i32 0, i32 0
  %18 = call i32 @TAILQ_INIT(i32* %17)
  %19 = load i32, i32* @session_groups, align 4
  %20 = load %struct.session_group*, %struct.session_group** %4, align 8
  %21 = call i32 @RB_INSERT(i32 %19, i32* @session_groups, %struct.session_group* %20)
  %22 = load %struct.session_group*, %struct.session_group** %4, align 8
  store %struct.session_group* %22, %struct.session_group** %2, align 8
  br label %23

23:                                               ; preds = %10, %8
  %24 = load %struct.session_group*, %struct.session_group** %2, align 8
  ret %struct.session_group* %24
}

declare dso_local %struct.session_group* @session_group_find(i8*) #1

declare dso_local %struct.session_group* @xcalloc(i32, i32) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.session_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
