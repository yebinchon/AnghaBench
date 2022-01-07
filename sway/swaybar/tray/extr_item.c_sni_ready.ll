; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_item.c_sni_ready.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_item.c_sni_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_sni = type { i8*, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swaybar_sni*)* @sni_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sni_ready(%struct.swaybar_sni* %0) #0 {
  %2 = alloca %struct.swaybar_sni*, align 8
  store %struct.swaybar_sni* %0, %struct.swaybar_sni** %2, align 8
  %3 = load %struct.swaybar_sni*, %struct.swaybar_sni** %2, align 8
  %4 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %44

7:                                                ; preds = %1
  %8 = load %struct.swaybar_sni*, %struct.swaybar_sni** %2, align 8
  %9 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 78
  br i1 %14, label %15, label %28

15:                                               ; preds = %7
  %16 = load %struct.swaybar_sni*, %struct.swaybar_sni** %2, align 8
  %17 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.swaybar_sni*, %struct.swaybar_sni** %2, align 8
  %22 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi i1 [ true, %15 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  br label %41

28:                                               ; preds = %7
  %29 = load %struct.swaybar_sni*, %struct.swaybar_sni** %2, align 8
  %30 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.swaybar_sni*, %struct.swaybar_sni** %2, align 8
  %35 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i1 [ true, %28 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  br label %41

41:                                               ; preds = %38, %25
  %42 = phi i32 [ %27, %25 ], [ %40, %38 ]
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %41, %1
  %45 = phi i1 [ false, %1 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
