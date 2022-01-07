; ModuleID = '/home/carl/AnghaBench/vlc/src/media_source/extr_test.c_callback_ctx_destroy_reports.c'
source_filename = "/home/carl/AnghaBench/vlc/src/media_source/extr_test.c_callback_ctx_destroy_reports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callback_ctx = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.callback_ctx*)* @callback_ctx_destroy_reports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @callback_ctx_destroy_reports(%struct.callback_ctx* %0) #0 {
  %2 = alloca %struct.callback_ctx*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.callback_ctx* %0, %struct.callback_ctx** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %22, %1
  %6 = load i64, i64* %3, align 8
  %7 = load %struct.callback_ctx*, %struct.callback_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %6, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %5
  %13 = load %struct.callback_ctx*, %struct.callback_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @input_item_Release(i32 %20)
  br label %22

22:                                               ; preds = %12
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %3, align 8
  br label %5

25:                                               ; preds = %5
  store i64 0, i64* %4, align 8
  br label %26

26:                                               ; preds = %43, %25
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.callback_ctx*, %struct.callback_ctx** %2, align 8
  %29 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %27, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = load %struct.callback_ctx*, %struct.callback_ctx** %2, align 8
  %35 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @input_item_Release(i32 %41)
  br label %43

43:                                               ; preds = %33
  %44 = load i64, i64* %4, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %4, align 8
  br label %26

46:                                               ; preds = %26
  ret void
}

declare dso_local i32 @input_item_Release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
