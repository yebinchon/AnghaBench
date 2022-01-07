; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_changelist.c_changelist_prefix.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_changelist.c_changelist_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i8*, i64 }

@UU_WALK_ROBUST = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i8* null, align 8
@GLOBAL_ZONEID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @changelist_prefix(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 129
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 128
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %89

17:                                               ; preds = %11, %1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @UU_WALK_ROBUST, align 4
  %22 = call i32* @uu_avl_walk_start(i32 %20, i32 %21)
  store i32* %22, i32** %5, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 -1, i32* %2, align 4
  br label %89

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %78, %46, %33, %25
  %27 = load i32*, i32** %5, align 8
  %28 = call %struct.TYPE_6__* @uu_avl_walk_next(i32* %27)
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %4, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %79

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i8*, i8** @B_FALSE, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  br label %26

37:                                               ; preds = %30
  %38 = call i64 (...) @getzoneid()
  %39 = load i64, i64* @GLOBAL_ZONEID, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %26

47:                                               ; preds = %41, %37
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ZFS_IS_VOLUME(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %78, label %53

53:                                               ; preds = %47
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %76 [
    i32 129, label %57
    i32 128, label %71
  ]

57:                                               ; preds = %53
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @zfs_unmount(i32 %60, i32* null, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  store i32 -1, i32* %6, align 4
  %67 = load i8*, i8** @B_FALSE, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %66, %57
  br label %77

71:                                               ; preds = %53
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @zfs_unshare_smb(i32 %74, i32* null)
  br label %77

76:                                               ; preds = %53
  br label %77

77:                                               ; preds = %76, %71, %70
  br label %78

78:                                               ; preds = %77, %47
  br label %26

79:                                               ; preds = %26
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @uu_avl_walk_end(i32* %80)
  %82 = load i32, i32* %6, align 4
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = call i32 @changelist_postfix(%struct.TYPE_7__* %85)
  br label %87

87:                                               ; preds = %84, %79
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %24, %16
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32* @uu_avl_walk_start(i32, i32) #1

declare dso_local %struct.TYPE_6__* @uu_avl_walk_next(i32*) #1

declare dso_local i64 @getzoneid(...) #1

declare dso_local i32 @ZFS_IS_VOLUME(i32) #1

declare dso_local i32 @zfs_unmount(i32, i32*, i32) #1

declare dso_local i32 @zfs_unshare_smb(i32, i32*) #1

declare dso_local i32 @uu_avl_walk_end(i32*) #1

declare dso_local i32 @changelist_postfix(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
