; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660_fs.c__fs_stat_root.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660_fs.c__fs_stat_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@ISO_EXTENSION_ALL = common dso_local global i32 0, align 4
@ISO_EXTENSION_JOLIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Could not read ISO-9660 Superblock.\00", align 1
@yep = common dso_local global i32 0, align 4
@nope = common dso_local global i32 0, align 4
@dunno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*)* @_fs_stat_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_fs_stat_root(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = icmp ne %struct.TYPE_11__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %54

12:                                               ; preds = %1
  %13 = load i32, i32* @ISO_EXTENSION_ALL, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %5, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %12
  %23 = load i32, i32* @ISO_EXTENSION_JOLIET, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %12
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @iso9660_fs_read_superblock(%struct.TYPE_11__* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = call i32 @cdio_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %54

34:                                               ; preds = %27
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = call i32 @cdio_get_discmode(%struct.TYPE_11__* %35)
  switch i32 %36, label %41 [
    i32 128, label %37
    i32 129, label %39
  ]

37:                                               ; preds = %34
  %38 = load i32, i32* @yep, align 4
  store i32 %38, i32* %8, align 4
  br label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @nope, align 4
  store i32 %40, i32* %8, align 4
  br label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @dunno, align 4
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %41, %39, %37
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  store i32* %46, i32** %6, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32* @_iso9660_dir_to_statbuf(i32* %47, i32* null, i32 %48, i64 %51)
  store i32* %52, i32** %7, align 8
  %53 = load i32*, i32** %7, align 8
  store i32* %53, i32** %2, align 8
  br label %54

54:                                               ; preds = %43, %32, %11
  %55 = load i32*, i32** %2, align 8
  ret i32* %55
}

declare dso_local i32 @iso9660_fs_read_superblock(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @cdio_warn(i8*) #1

declare dso_local i32 @cdio_get_discmode(%struct.TYPE_11__*) #1

declare dso_local i32* @_iso9660_dir_to_statbuf(i32*, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
