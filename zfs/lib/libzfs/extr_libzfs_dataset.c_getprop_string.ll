; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_getprop_string.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_getprop_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i32 }

@ZPROP_VALUE = common dso_local global i32 0, align 4
@ZPROP_SOURCE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i64, i8**)* @getprop_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getprop_string(%struct.TYPE_3__* %0, i64 %1, i8** %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8** %2, i8*** %6, align 8
  %9 = load i8**, i8*** %6, align 8
  store i8* null, i8** %9, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @zfs_prop_to_name(i64 %13)
  %15 = call i64 @nvlist_lookup_nvlist(i32 %12, i32 %14, i32** %7)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* @ZPROP_VALUE, align 4
  %20 = call i8* @fnvlist_lookup_string(i32* %18, i32 %19)
  store i8* %20, i8** %8, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* @ZPROP_SOURCE, align 4
  %23 = load i8**, i8*** %6, align 8
  %24 = call i32 @nvlist_lookup_string(i32* %21, i32 %22, i8** %23)
  br label %46

25:                                               ; preds = %3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @B_TRUE, align 8
  %38 = icmp eq i64 %36, %37
  br label %39

39:                                               ; preds = %30, %25
  %40 = phi i1 [ true, %25 ], [ %38, %30 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @verify(i32 %41)
  %43 = load i64, i64* %5, align 8
  %44 = call i8* @zfs_prop_default_string(i64 %43)
  store i8* %44, i8** %8, align 8
  %45 = load i8**, i8*** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %45, align 8
  br label %46

46:                                               ; preds = %39, %17
  %47 = load i8*, i8** %8, align 8
  ret i8* %47
}

declare dso_local i64 @nvlist_lookup_nvlist(i32, i32, i32**) #1

declare dso_local i32 @zfs_prop_to_name(i64) #1

declare dso_local i8* @fnvlist_lookup_string(i32*, i32) #1

declare dso_local i32 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i8* @zfs_prop_default_string(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
