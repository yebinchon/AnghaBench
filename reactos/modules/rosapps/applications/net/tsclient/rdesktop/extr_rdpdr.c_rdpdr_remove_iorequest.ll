; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpdr.c_rdpdr_remove_iorequest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpdr.c_rdpdr_remove_iorequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.async_iorequest* }
%struct.async_iorequest = type { %struct.async_iorequest*, %struct.async_iorequest* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.async_iorequest* @rdpdr_remove_iorequest(%struct.TYPE_3__* %0, %struct.async_iorequest* %1, %struct.async_iorequest* %2) #0 {
  %4 = alloca %struct.async_iorequest*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.async_iorequest*, align 8
  %7 = alloca %struct.async_iorequest*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct.async_iorequest* %1, %struct.async_iorequest** %6, align 8
  store %struct.async_iorequest* %2, %struct.async_iorequest** %7, align 8
  %8 = load %struct.async_iorequest*, %struct.async_iorequest** %7, align 8
  %9 = icmp ne %struct.async_iorequest* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store %struct.async_iorequest* null, %struct.async_iorequest** %4, align 8
  br label %45

11:                                               ; preds = %3
  %12 = load %struct.async_iorequest*, %struct.async_iorequest** %7, align 8
  %13 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %12, i32 0, i32 1
  %14 = load %struct.async_iorequest*, %struct.async_iorequest** %13, align 8
  %15 = icmp ne %struct.async_iorequest* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.async_iorequest*, %struct.async_iorequest** %7, align 8
  %18 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %17, i32 0, i32 1
  %19 = load %struct.async_iorequest*, %struct.async_iorequest** %18, align 8
  %20 = call i32 @xfree(%struct.async_iorequest* %19)
  br label %21

21:                                               ; preds = %16, %11
  %22 = load %struct.async_iorequest*, %struct.async_iorequest** %6, align 8
  %23 = icmp ne %struct.async_iorequest* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load %struct.async_iorequest*, %struct.async_iorequest** %7, align 8
  %26 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %25, i32 0, i32 0
  %27 = load %struct.async_iorequest*, %struct.async_iorequest** %26, align 8
  %28 = load %struct.async_iorequest*, %struct.async_iorequest** %6, align 8
  %29 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %28, i32 0, i32 0
  store %struct.async_iorequest* %27, %struct.async_iorequest** %29, align 8
  %30 = load %struct.async_iorequest*, %struct.async_iorequest** %7, align 8
  %31 = call i32 @xfree(%struct.async_iorequest* %30)
  %32 = load %struct.async_iorequest*, %struct.async_iorequest** %6, align 8
  %33 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %32, i32 0, i32 0
  %34 = load %struct.async_iorequest*, %struct.async_iorequest** %33, align 8
  store %struct.async_iorequest* %34, %struct.async_iorequest** %7, align 8
  br label %43

35:                                               ; preds = %21
  %36 = load %struct.async_iorequest*, %struct.async_iorequest** %7, align 8
  %37 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %36, i32 0, i32 0
  %38 = load %struct.async_iorequest*, %struct.async_iorequest** %37, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store %struct.async_iorequest* %38, %struct.async_iorequest** %40, align 8
  %41 = load %struct.async_iorequest*, %struct.async_iorequest** %7, align 8
  %42 = call i32 @xfree(%struct.async_iorequest* %41)
  store %struct.async_iorequest* null, %struct.async_iorequest** %7, align 8
  br label %43

43:                                               ; preds = %35, %24
  %44 = load %struct.async_iorequest*, %struct.async_iorequest** %7, align 8
  store %struct.async_iorequest* %44, %struct.async_iorequest** %4, align 8
  br label %45

45:                                               ; preds = %43, %10
  %46 = load %struct.async_iorequest*, %struct.async_iorequest** %4, align 8
  ret %struct.async_iorequest* %46
}

declare dso_local i32 @xfree(%struct.async_iorequest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
