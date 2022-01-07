; ModuleID = '/home/carl/AnghaBench/tmux/extr_alerts.c_alerts_action_applies.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_alerts.c_alerts_action_applies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winlink = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.winlink*, i32 }

@ALERT_ANY = common dso_local global i32 0, align 4
@ALERT_CURRENT = common dso_local global i32 0, align 4
@ALERT_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.winlink*, i8*)* @alerts_action_applies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alerts_action_applies(%struct.winlink* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.winlink*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.winlink* %0, %struct.winlink** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.winlink*, %struct.winlink** %4, align 8
  %8 = getelementptr inbounds %struct.winlink, %struct.winlink* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @options_get_number(i32 %11, i8* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @ALERT_ANY, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %45

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @ALERT_CURRENT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load %struct.winlink*, %struct.winlink** %4, align 8
  %24 = load %struct.winlink*, %struct.winlink** %4, align 8
  %25 = getelementptr inbounds %struct.winlink, %struct.winlink* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.winlink*, %struct.winlink** %27, align 8
  %29 = icmp eq %struct.winlink* %23, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %45

31:                                               ; preds = %18
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @ALERT_OTHER, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load %struct.winlink*, %struct.winlink** %4, align 8
  %37 = load %struct.winlink*, %struct.winlink** %4, align 8
  %38 = getelementptr inbounds %struct.winlink, %struct.winlink* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.winlink*, %struct.winlink** %40, align 8
  %42 = icmp ne %struct.winlink* %36, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %45

44:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %35, %22, %17
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @options_get_number(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
