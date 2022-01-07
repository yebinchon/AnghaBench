; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_cache.c_cache_save_state.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_cache.c_cache_save_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Saving cache state for bitmap cache %d...\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c" %d stamps written.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cache_save_state(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %56, %1
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %12 = call i64 @NUM_ELEMENTS(%struct.TYPE_8__** %11)
  %13 = icmp ult i64 %7, %12
  br i1 %13, label %14, label %59

14:                                               ; preds = %6
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @IS_PERSISTENT(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %55

18:                                               ; preds = %14
  %19 = load i64, i64* %3, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @DEBUG_RDP5(i8* %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %32, %18
  %30 = load i32, i32* %5, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %29
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = load i64, i64* %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i64, i64* %4, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %4, align 8
  %38 = call i32 @pstcache_touch_bitmap(%struct.TYPE_7__* %33, i64 %34, i32 %35, i64 %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %41, align 8
  %43 = load i64, i64* %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %42, i64 %43
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %5, align 4
  br label %29

51:                                               ; preds = %29
  %52 = load i64, i64* %4, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @DEBUG_RDP5(i8* %53)
  br label %55

55:                                               ; preds = %51, %14
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %3, align 8
  br label %6

59:                                               ; preds = %6
  ret void
}

declare dso_local i64 @NUM_ELEMENTS(%struct.TYPE_8__**) #1

declare dso_local i64 @IS_PERSISTENT(i64) #1

declare dso_local i32 @DEBUG_RDP5(i8*) #1

declare dso_local i32 @pstcache_touch_bitmap(%struct.TYPE_7__*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
