; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_rrwlock.c_rrw_exit.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_rrwlock.c_rrw_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32*, %struct.TYPE_7__, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 }

@curthread = common dso_local global i32* null, align 8
@zfs__rrwfastpath__exitmiss = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrw_exit(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = call i32 @mutex_enter(i32* %7)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 4
  %11 = call i64 @zfs_refcount_is_zero(%struct.TYPE_7__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  %16 = call i64 @zfs_refcount_is_zero(%struct.TYPE_7__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br label %23

23:                                               ; preds = %18, %13, %2
  %24 = phi i1 [ true, %13 ], [ true, %2 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %61

31:                                               ; preds = %23
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i64 @rrn_find_and_remove(%struct.TYPE_6__* %32, i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = load i8*, i8** %4, align 8
  %40 = call i64 @zfs_refcount_remove(%struct.TYPE_7__* %38, i8* %39)
  store i64 %40, i64* %5, align 8
  br label %53

41:                                               ; preds = %31
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @ASSERT(i32 %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 4
  %51 = load i8*, i8** %4, align 8
  %52 = call i64 @zfs_refcount_remove(%struct.TYPE_7__* %50, i8* %51)
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %41, %36
  %54 = load i64, i64* %5, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = call i32 @cv_broadcast(i32* %58)
  br label %60

60:                                               ; preds = %56, %53
  br label %87

61:                                               ; preds = %23
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32*, i32** @curthread, align 8
  %66 = icmp eq i32* %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @ASSERT(i32 %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 4
  %71 = call i64 @zfs_refcount_is_zero(%struct.TYPE_7__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %61
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = call i64 @zfs_refcount_is_zero(%struct.TYPE_7__* %75)
  %77 = icmp ne i64 %76, 0
  br label %78

78:                                               ; preds = %73, %61
  %79 = phi i1 [ false, %61 ], [ %77, %73 ]
  %80 = zext i1 %79 to i32
  %81 = call i32 @ASSERT(i32 %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  store i32* null, i32** %83, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = call i32 @cv_broadcast(i32* %85)
  br label %87

87:                                               ; preds = %78, %60
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = call i32 @mutex_exit(i32* %89)
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @zfs_refcount_is_zero(%struct.TYPE_7__*) #1

declare dso_local i64 @rrn_find_and_remove(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @zfs_refcount_remove(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
