; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_process_secondary_order.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_process_secondary_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }

@False = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"secondary order %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_10__*)* @process_secondary_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_secondary_order(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @in_uint16_le(%struct.TYPE_10__* %9, i64 %10)
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @in_uint16_le(%struct.TYPE_10__* %12, i64 %13)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @in_uint8(%struct.TYPE_10__* %15, i32 %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = trunc i64 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = getelementptr inbounds i32, i32* %24, i64 7
  store i32* %25, i32** %8, align 8
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %55 [
    i32 129, label %27
    i32 131, label %31
    i32 133, label %35
    i32 130, label %39
    i32 128, label %43
    i32 132, label %49
  ]

27:                                               ; preds = %2
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = call i32 @process_raw_bmpcache(i32* %28, %struct.TYPE_10__* %29)
  br label %58

31:                                               ; preds = %2
  %32 = load i32*, i32** %3, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = call i32 @process_colcache(i32* %32, %struct.TYPE_10__* %33)
  br label %58

35:                                               ; preds = %2
  %36 = load i32*, i32** %3, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = call i32 @process_bmpcache(i32* %36, %struct.TYPE_10__* %37)
  br label %58

39:                                               ; preds = %2
  %40 = load i32*, i32** %3, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = call i32 @process_fontcache(i32* %40, %struct.TYPE_10__* %41)
  br label %58

43:                                               ; preds = %2
  %44 = load i32*, i32** %3, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i32, i32* @False, align 4
  %48 = call i32 @process_bmpcache2(i32* %44, %struct.TYPE_10__* %45, i64 %46, i32 %47)
  br label %58

49:                                               ; preds = %2
  %50 = load i32*, i32** %3, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i32, i32* @True, align 4
  %54 = call i32 @process_bmpcache2(i32* %50, %struct.TYPE_10__* %51, i64 %52, i32 %53)
  br label %58

55:                                               ; preds = %2
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @unimpl(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %55, %49, %43, %39, %35, %31, %27
  %59 = load i32*, i32** %8, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i32* %59, i32** %61, align 8
  ret void
}

declare dso_local i32 @in_uint16_le(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @in_uint8(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @process_raw_bmpcache(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @process_colcache(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @process_bmpcache(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @process_fontcache(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @process_bmpcache2(i32*, %struct.TYPE_10__*, i64, i32) #1

declare dso_local i32 @unimpl(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
