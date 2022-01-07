; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_mevent.c_mevent_update.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_mevent.c_mevent_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mevent = type { i32, i32 }

@MEV_DEL_PENDING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@me_list = common dso_local global i32 0, align 4
@change_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mevent*, i32)* @mevent_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mevent_update(%struct.mevent* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mevent*, align 8
  %5 = alloca i32, align 4
  store %struct.mevent* %0, %struct.mevent** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.mevent*, %struct.mevent** %4, align 8
  %7 = getelementptr inbounds %struct.mevent, %struct.mevent* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MEV_DEL_PENDING, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %3, align 4
  br label %41

13:                                               ; preds = %2
  %14 = load %struct.mevent*, %struct.mevent** %4, align 8
  %15 = getelementptr inbounds %struct.mevent, %struct.mevent* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %41

20:                                               ; preds = %13
  %21 = call i32 (...) @mevent_qlock()
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.mevent*, %struct.mevent** %4, align 8
  %24 = getelementptr inbounds %struct.mevent, %struct.mevent* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.mevent*, %struct.mevent** %4, align 8
  %26 = getelementptr inbounds %struct.mevent, %struct.mevent* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %20
  %30 = load %struct.mevent*, %struct.mevent** %4, align 8
  %31 = getelementptr inbounds %struct.mevent, %struct.mevent* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load %struct.mevent*, %struct.mevent** %4, align 8
  %33 = load i32, i32* @me_list, align 4
  %34 = call i32 @LIST_REMOVE(%struct.mevent* %32, i32 %33)
  %35 = load %struct.mevent*, %struct.mevent** %4, align 8
  %36 = load i32, i32* @me_list, align 4
  %37 = call i32 @LIST_INSERT_HEAD(i32* @change_head, %struct.mevent* %35, i32 %36)
  %38 = call i32 (...) @mevent_notify()
  br label %39

39:                                               ; preds = %29, %20
  %40 = call i32 (...) @mevent_qunlock()
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %19, %11
  %42 = load i32, i32* %3, align 4
  ret i32 %42
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
