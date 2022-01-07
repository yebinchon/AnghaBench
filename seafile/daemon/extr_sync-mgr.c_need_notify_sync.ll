; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_need_notify_sync.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_need_notify_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@seaf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"notify_sync\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @need_notify_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @need_notify_sync(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @seaf, align 4
  %7 = call i8* @seafile_session_config_get_string(i32 %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @seaf, align 4
  %12 = call i32 @seafile_session_config_set_string(i32 %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @TRUE, align 4
  store i32 %13, i32* %2, align 4
  br label %22

14:                                               ; preds = %1
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @g_strcmp0(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @g_free(i8* %19)
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %14, %10
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i8* @seafile_session_config_get_string(i32, i8*) #1

declare dso_local i32 @seafile_session_config_set_string(i32, i8*, i8*) #1

declare dso_local i64 @g_strcmp0(i8*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
