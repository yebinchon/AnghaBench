; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_changelist.c_changelist_rename.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_changelist.c_changelist_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@UU_WALK_ROBUST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @changelist_rename(%struct.TYPE_7__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @UU_WALK_ROBUST, align 4
  %20 = call i32* @uu_avl_walk_start(i32 %18, i32 %19)
  store i32* %20, i32** %8, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 1, i32* %11, align 4
  br label %66

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %38, %37, %23
  %25 = load i32*, i32** %8, align 8
  %26 = call %struct.TYPE_6__* @uu_avl_walk_next(i32* %25)
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %7, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %63

28:                                               ; preds = %24
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @isa_child_of(i8* %33, i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %28
  br label %24

38:                                               ; preds = %28
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = call i32 @remove_mountpoint(%struct.TYPE_8__* %41)
  %43 = load i8*, i8** %6, align 8
  %44 = trunc i64 %13 to i32
  %45 = call i32 @strlcpy(i8* %15, i8* %43, i32 %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @strlen(i8* %51)
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = trunc i64 %13 to i32
  %56 = call i32 @strlcat(i8* %15, i8* %54, i32 %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @strlcpy(i8* %61, i8* %15, i32 8)
  br label %24

63:                                               ; preds = %24
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @uu_avl_walk_end(i32* %64)
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %63, %22
  %67 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %11, align 4
  switch i32 %68, label %70 [
    i32 0, label %69
    i32 1, label %69
  ]

69:                                               ; preds = %66, %66
  ret void

70:                                               ; preds = %66
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @uu_avl_walk_start(i32, i32) #2

declare dso_local %struct.TYPE_6__* @uu_avl_walk_next(i32*) #2

declare dso_local i32 @isa_child_of(i8*, i8*) #2

declare dso_local i32 @remove_mountpoint(%struct.TYPE_8__*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @uu_avl_walk_end(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
