; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_host.c_add_sni.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_host.c_add_sni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_tray = type { i32 }
%struct.swaybar_sni = type { i32 }

@cmp_sni_id = common dso_local global i32 0, align 4
@SWAY_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Registering Status Notifier Item '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.swaybar_tray*, i8*)* @add_sni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_sni(%struct.swaybar_tray* %0, i8* %1) #0 {
  %3 = alloca %struct.swaybar_tray*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.swaybar_sni*, align 8
  store %struct.swaybar_tray* %0, %struct.swaybar_tray** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.swaybar_tray*, %struct.swaybar_tray** %3, align 8
  %8 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @cmp_sni_id, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @list_seq_find(i32 %9, i32 %10, i8* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load i32, i32* @SWAY_INFO, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @sway_log(i32 %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i8*, i8** %4, align 8
  %20 = load %struct.swaybar_tray*, %struct.swaybar_tray** %3, align 8
  %21 = call %struct.swaybar_sni* @create_sni(i8* %19, %struct.swaybar_tray* %20)
  store %struct.swaybar_sni* %21, %struct.swaybar_sni** %6, align 8
  %22 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %23 = icmp ne %struct.swaybar_sni* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = load %struct.swaybar_tray*, %struct.swaybar_tray** %3, align 8
  %26 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.swaybar_sni*, %struct.swaybar_sni** %6, align 8
  %29 = call i32 @list_add(i32 %27, %struct.swaybar_sni* %28)
  br label %30

30:                                               ; preds = %24, %15
  br label %31

31:                                               ; preds = %30, %2
  ret void
}

declare dso_local i32 @list_seq_find(i32, i32, i8*) #1

declare dso_local i32 @sway_log(i32, i8*, i8*) #1

declare dso_local %struct.swaybar_sni* @create_sni(i8*, %struct.swaybar_tray*) #1

declare dso_local i32 @list_add(i32, %struct.swaybar_sni*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
