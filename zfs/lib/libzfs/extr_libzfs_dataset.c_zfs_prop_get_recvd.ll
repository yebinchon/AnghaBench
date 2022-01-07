; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_prop_get_recvd.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_prop_get_recvd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }

@ZPROP_INVAL = common dso_local global i64 0, align 8
@ZPROP_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_prop_get_recvd(%struct.TYPE_7__* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = call i64 @get_recvd_props_ioctl(%struct.TYPE_7__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 -1, i32* %6, align 4
  br label %76

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %5
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @zfs_name_to_prop(i8* %28)
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* @ZPROP_INVAL, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %27
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @nvlist_exists(i32* %36, i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  store i32 -1, i32* %6, align 4
  br label %76

41:                                               ; preds = %33
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = call i32 @zfs_set_recvd_props_mode(%struct.TYPE_7__* %42, i32* %14)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @zfs_prop_get(%struct.TYPE_7__* %44, i64 %45, i8* %46, i64 %47, i32* null, i32* null, i32 0, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = call i32 @zfs_unset_recvd_props_mode(%struct.TYPE_7__* %50, i32* %14)
  br label %71

52:                                               ; preds = %27
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = call i64 @nvlist_lookup_nvlist(i32* %55, i8* %56, i32** %15)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 -1, i32* %6, align 4
  br label %76

60:                                               ; preds = %52
  %61 = load i32*, i32** %15, align 8
  %62 = load i32, i32* @ZPROP_VALUE, align 4
  %63 = call i64 @nvlist_lookup_string(i32* %61, i32 %62, i8** %16)
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @verify(i32 %65)
  %67 = load i8*, i8** %9, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @strlcpy(i8* %67, i8* %68, i64 %69)
  br label %71

71:                                               ; preds = %60, %41
  %72 = load i32, i32* %13, align 4
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 0, i32 -1
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %71, %59, %40, %25
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i64 @get_recvd_props_ioctl(%struct.TYPE_7__*) #1

declare dso_local i64 @zfs_name_to_prop(i8*) #1

declare dso_local i32 @nvlist_exists(i32*, i8*) #1

declare dso_local i32 @zfs_set_recvd_props_mode(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @zfs_prop_get(%struct.TYPE_7__*, i64, i8*, i64, i32*, i32*, i32, i32) #1

declare dso_local i32 @zfs_unset_recvd_props_mode(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i8*, i32**) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
