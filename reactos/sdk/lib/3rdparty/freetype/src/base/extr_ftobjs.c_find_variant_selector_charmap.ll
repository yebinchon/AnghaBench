; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/base/extr_ftobjs.c_find_variant_selector_charmap.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/base/extr_ftobjs.c_find_variant_selector_charmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__** }

@TT_PLATFORM_APPLE_UNICODE = common dso_local global i64 0, align 8
@TT_APPLE_ID_VARIANT_SELECTOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_7__*)* @find_variant_selector_charmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @find_variant_selector_charmap(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__**, align 8
  %5 = alloca %struct.TYPE_8__**, align 8
  %6 = alloca %struct.TYPE_8__**, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = call i32 @FT_ASSERT(%struct.TYPE_7__* %7)
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  store %struct.TYPE_8__** %11, %struct.TYPE_8__*** %4, align 8
  %12 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %13 = icmp ne %struct.TYPE_8__** %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %58

15:                                               ; preds = %1
  %16 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %16, i64 %20
  store %struct.TYPE_8__** %21, %struct.TYPE_8__*** %5, align 8
  %22 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  store %struct.TYPE_8__** %22, %struct.TYPE_8__*** %6, align 8
  br label %23

23:                                               ; preds = %54, %15
  %24 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %25 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %26 = icmp ult %struct.TYPE_8__** %24, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %23
  %28 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %28, i64 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TT_PLATFORM_APPLE_UNICODE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %27
  %36 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %36, i64 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TT_APPLE_ID_VARIANT_SELECTOR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %35
  %44 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %44, i64 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = call i32 @FT_Get_CMap_Format(%struct.TYPE_8__* %46)
  %48 = icmp eq i32 %47, 14
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %50, i64 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %2, align 8
  br label %58

53:                                               ; preds = %43, %35, %27
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %55, i32 1
  store %struct.TYPE_8__** %56, %struct.TYPE_8__*** %6, align 8
  br label %23

57:                                               ; preds = %23
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %58

58:                                               ; preds = %57, %49, %14
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %59
}

declare dso_local i32 @FT_ASSERT(%struct.TYPE_7__*) #1

declare dso_local i32 @FT_Get_CMap_Format(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
