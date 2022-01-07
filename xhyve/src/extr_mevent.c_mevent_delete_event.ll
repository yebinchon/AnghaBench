; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_mevent.c_mevent_delete_event.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_mevent.c_mevent_delete_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mevent = type { i32, i32, i32 }

@me_list = common dso_local global i32 0, align 4
@change_head = common dso_local global i32 0, align 4
@MEV_DEL_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mevent*, i32)* @mevent_delete_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mevent_delete_event(%struct.mevent* %0, i32 %1) #0 {
  %3 = alloca %struct.mevent*, align 8
  %4 = alloca i32, align 4
  store %struct.mevent* %0, %struct.mevent** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @mevent_qlock()
  %6 = load %struct.mevent*, %struct.mevent** %3, align 8
  %7 = getelementptr inbounds %struct.mevent, %struct.mevent* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.mevent*, %struct.mevent** %3, align 8
  %12 = getelementptr inbounds %struct.mevent, %struct.mevent* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.mevent*, %struct.mevent** %3, align 8
  %14 = load i32, i32* @me_list, align 4
  %15 = call i32 @LIST_REMOVE(%struct.mevent* %13, i32 %14)
  %16 = load %struct.mevent*, %struct.mevent** %3, align 8
  %17 = load i32, i32* @me_list, align 4
  %18 = call i32 @LIST_INSERT_HEAD(i32* @change_head, %struct.mevent* %16, i32 %17)
  %19 = call i32 (...) @mevent_notify()
  br label %20

20:                                               ; preds = %10, %2
  %21 = load i32, i32* @MEV_DEL_PENDING, align 4
  %22 = load %struct.mevent*, %struct.mevent** %3, align 8
  %23 = getelementptr inbounds %struct.mevent, %struct.mevent* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.mevent*, %struct.mevent** %3, align 8
  %28 = getelementptr inbounds %struct.mevent, %struct.mevent* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %20
  %30 = call i32 (...) @mevent_qunlock()
  ret i32 0
}

declare dso_local i32 @mevent_qlock(...) #1

declare dso_local i32 @LIST_REMOVE(%struct.mevent*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.mevent*, i32) #1

declare dso_local i32 @mevent_notify(...) #1

declare dso_local i32 @mevent_qunlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
