; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mpr/extr_wnet.c_use_connection_pre_set_accessnameW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mpr/extr_wnet.c_use_connection_pre_set_accessnameW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.use_connection_context = type { i64*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.use_connection_context*, i32*)* @use_connection_pre_set_accessnameW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @use_connection_pre_set_accessnameW(%struct.use_connection_context* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.use_connection_context*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.use_connection_context* %0, %struct.use_connection_context** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.use_connection_context*, %struct.use_connection_context** %4, align 8
  %8 = getelementptr inbounds %struct.use_connection_context, %struct.use_connection_context* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %50

11:                                               ; preds = %2
  %12 = load %struct.use_connection_context*, %struct.use_connection_context** %4, align 8
  %13 = getelementptr inbounds %struct.use_connection_context, %struct.use_connection_context* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %16, label %50

16:                                               ; preds = %11
  %17 = load %struct.use_connection_context*, %struct.use_connection_context** %4, align 8
  %18 = getelementptr inbounds %struct.use_connection_context, %struct.use_connection_context* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %16
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @lstrlenW(i32* %26)
  store i64 %27, i64* %6, align 8
  br label %35

28:                                               ; preds = %22
  %29 = load %struct.use_connection_context*, %struct.use_connection_context** %4, align 8
  %30 = getelementptr inbounds %struct.use_connection_context, %struct.use_connection_context* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i64 @lstrlenW(i32* %33)
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %28, %25
  %36 = load i64, i64* %6, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %6, align 8
  %38 = load %struct.use_connection_context*, %struct.use_connection_context** %4, align 8
  %39 = getelementptr inbounds %struct.use_connection_context, %struct.use_connection_context* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %37, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.use_connection_context*, %struct.use_connection_context** %4, align 8
  %46 = getelementptr inbounds %struct.use_connection_context, %struct.use_connection_context* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  store i64 %44, i64* %47, align 8
  %48 = load i64, i64* @ERROR_MORE_DATA, align 8
  store i64 %48, i64* %3, align 8
  br label %55

49:                                               ; preds = %35
  br label %53

50:                                               ; preds = %16, %11, %2
  %51 = load %struct.use_connection_context*, %struct.use_connection_context** %4, align 8
  %52 = getelementptr inbounds %struct.use_connection_context, %struct.use_connection_context* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %50, %49
  %54 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %54, i64* %3, align 8
  br label %55

55:                                               ; preds = %53, %43
  %56 = load i64, i64* %3, align 8
  ret i64 %56
}

declare dso_local i64 @lstrlenW(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
