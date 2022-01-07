; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpdr.c_rdpdr_abort_io.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpdr.c_rdpdr_abort_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.async_iorequest* }
%struct.async_iorequest = type { i64, i64, %struct.async_iorequest*, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@True = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdpdr_abort_io(%struct.TYPE_5__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.async_iorequest*, align 8
  %12 = alloca %struct.async_iorequest*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.async_iorequest*, %struct.async_iorequest** %14, align 8
  store %struct.async_iorequest* %15, %struct.async_iorequest** %11, align 8
  store %struct.async_iorequest* null, %struct.async_iorequest** %12, align 8
  br label %16

16:                                               ; preds = %50, %4
  %17 = load %struct.async_iorequest*, %struct.async_iorequest** %11, align 8
  %18 = icmp ne %struct.async_iorequest* %17, null
  br i1 %18, label %19, label %55

19:                                               ; preds = %16
  %20 = load %struct.async_iorequest*, %struct.async_iorequest** %11, align 8
  %21 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %19
  %26 = load i64, i64* %8, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load %struct.async_iorequest*, %struct.async_iorequest** %11, align 8
  %30 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %28, %25
  store i64 0, i64* %10, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = load %struct.async_iorequest*, %struct.async_iorequest** %11, align 8
  %37 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.async_iorequest*, %struct.async_iorequest** %11, align 8
  %40 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @rdpdr_send_completion(%struct.TYPE_5__* %35, i32 %38, i32 %41, i32 %42, i64 %43, i32* bitcast ([1 x i8]* @.str to i32*), i32 1)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = load %struct.async_iorequest*, %struct.async_iorequest** %12, align 8
  %47 = load %struct.async_iorequest*, %struct.async_iorequest** %11, align 8
  %48 = call %struct.async_iorequest* @rdpdr_remove_iorequest(%struct.TYPE_5__* %45, %struct.async_iorequest* %46, %struct.async_iorequest* %47)
  store %struct.async_iorequest* %48, %struct.async_iorequest** %11, align 8
  %49 = load i32, i32* @True, align 4
  store i32 %49, i32* %5, align 4
  br label %57

50:                                               ; preds = %28, %19
  %51 = load %struct.async_iorequest*, %struct.async_iorequest** %11, align 8
  store %struct.async_iorequest* %51, %struct.async_iorequest** %12, align 8
  %52 = load %struct.async_iorequest*, %struct.async_iorequest** %11, align 8
  %53 = getelementptr inbounds %struct.async_iorequest, %struct.async_iorequest* %52, i32 0, i32 2
  %54 = load %struct.async_iorequest*, %struct.async_iorequest** %53, align 8
  store %struct.async_iorequest* %54, %struct.async_iorequest** %11, align 8
  br label %16

55:                                               ; preds = %16
  %56 = load i32, i32* @False, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %55, %34
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @rdpdr_send_completion(%struct.TYPE_5__*, i32, i32, i32, i64, i32*, i32) #1

declare dso_local %struct.async_iorequest* @rdpdr_remove_iorequest(%struct.TYPE_5__*, %struct.async_iorequest*, %struct.async_iorequest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
