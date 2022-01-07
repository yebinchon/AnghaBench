; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_deadlist.c_dsl_deadlist_free.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_deadlist.c_dsl_deadlist_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@DMU_OT_BPOBJ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_deadlist_free(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @dmu_object_info(i32* %11, i64 %12, %struct.TYPE_7__* %7)
  %14 = call i32 @VERIFY0(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DMU_OT_BPOBJ, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i32*, i32** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @bpobj_free(i32* %20, i64 %21, i32* %22)
  br label %59

24:                                               ; preds = %3
  %25 = load i32*, i32** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @zap_cursor_init(i32* %8, i32* %25, i64 %26)
  br label %28

28:                                               ; preds = %50, %24
  %29 = call i64 @zap_cursor_retrieve(i32* %8, %struct.TYPE_6__* %9)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call %struct.TYPE_8__* @dmu_objset_pool(i32* %35)
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %34, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @bpobj_decr_empty(i32* %41, i32* %42)
  br label %49

44:                                               ; preds = %31
  %45 = load i32*, i32** %4, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @bpobj_free(i32* %45, i64 %46, i32* %47)
  br label %49

49:                                               ; preds = %44, %40
  br label %50

50:                                               ; preds = %49
  %51 = call i32 @zap_cursor_advance(i32* %8)
  br label %28

52:                                               ; preds = %28
  %53 = call i32 @zap_cursor_fini(i32* %8)
  %54 = load i32*, i32** %4, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @dmu_object_free(i32* %54, i64 %55, i32* %56)
  %58 = call i32 @VERIFY0(i32 %57)
  br label %59

59:                                               ; preds = %52, %19
  ret void
}

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_object_info(i32*, i64, %struct.TYPE_7__*) #1

declare dso_local i32 @bpobj_free(i32*, i64, i32*) #1

declare dso_local i32 @zap_cursor_init(i32*, i32*, i64) #1

declare dso_local i64 @zap_cursor_retrieve(i32*, %struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_8__* @dmu_objset_pool(i32*) #1

declare dso_local i32 @bpobj_decr_empty(i32*, i32*) #1

declare dso_local i32 @zap_cursor_advance(i32*) #1

declare dso_local i32 @zap_cursor_fini(i32*) #1

declare dso_local i32 @dmu_object_free(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
