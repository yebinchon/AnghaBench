; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_dir.c_zfs_match_find.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_dir.c_zfs_match_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i64 }

@B_FALSE = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@ED_CASE_CONFLICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, i8*, i32, i64, i32*, %struct.TYPE_9__*, i32*)* @zfs_match_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_match_find(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i8* %2, i32 %3, i64 %4, i32* %5, %struct.TYPE_9__* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %15, align 8
  store i32* %7, i32** %16, align 8
  %21 = load i64, i64* @B_FALSE, align 8
  store i64 %21, i64* %17, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %8
  store i64 0, i64* %19, align 8
  store i8* null, i8** %20, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %28 = icmp ne %struct.TYPE_9__* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %20, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %19, align 8
  br label %36

36:                                               ; preds = %29, %26
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %11, align 8
  %44 = load i32*, i32** %16, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i8*, i8** %20, align 8
  %47 = load i64, i64* %19, align 8
  %48 = call i32 @zap_lookup_norm(i32 %39, i32 %42, i8* %43, i32 8, i32 1, i32* %44, i32 %45, i8* %46, i64 %47, i64* %17)
  store i32 %48, i32* %18, align 4
  br label %59

49:                                               ; preds = %8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %11, align 8
  %57 = load i32*, i32** %16, align 8
  %58 = call i32 @zap_lookup(i32 %52, i32 %55, i8* %56, i32 8, i32 1, i32* %57)
  store i32 %58, i32* %18, align 4
  br label %59

59:                                               ; preds = %49, %36
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* @EOVERFLOW, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 0, i32* %18, align 4
  br label %64

64:                                               ; preds = %63, %59
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %64
  %70 = load i32, i32* %18, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %69
  %73 = load i32*, i32** %14, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i64, i64* %17, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* @ED_CASE_CONFLICT, align 4
  br label %81

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80, %78
  %82 = phi i32 [ %79, %78 ], [ 0, %80 ]
  %83 = load i32*, i32** %14, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %72, %69, %64
  %85 = load i32*, i32** %16, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ZFS_DIRENT_OBJ(i32 %86)
  %88 = load i32*, i32** %16, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* %18, align 4
  ret i32 %89
}

declare dso_local i32 @zap_lookup_norm(i32, i32, i8*, i32, i32, i32*, i32, i8*, i64, i64*) #1

declare dso_local i32 @zap_lookup(i32, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @ZFS_DIRENT_OBJ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
