; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_parse_fs_perm_set.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_parse_fs_perm_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@DATA_TYPE_NVLIST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*)* @parse_fs_perm_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_fs_perm_set(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %55, %2
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32* @nvlist_next_nvpair(i32* %14, i32* %15)
  store i32* %16, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %65

18:                                               ; preds = %13
  store i32* null, i32** %8, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i8* @nvpair_name(i32* %19)
  store i8* %20, i8** %9, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @nvpair_type(i32* %21)
  store i64 %22, i64* %10, align 8
  store i32* null, i32** %11, align 8
  %23 = call %struct.TYPE_9__* @safe_malloc(i32 8)
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %12, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %25 = icmp eq %struct.TYPE_9__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = call i32 (...) @nomem()
  br label %28

28:                                               ; preds = %26, %18
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  store i32* %30, i32** %11, align 8
  %31 = load i64, i64* @DATA_TYPE_NVLIST, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @VERIFY(i32 %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @uu_list_node_init(%struct.TYPE_9__* %36, i32* %38, i32 %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @uu_list_numnodes(i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @fs_perm_init(i32* %47, %struct.TYPE_8__* %48, i8* %49)
  %51 = load i32*, i32** %6, align 8
  %52 = call i64 @nvpair_value_nvlist(i32* %51, i32** %8)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %66

55:                                               ; preds = %28
  %56 = load i32*, i32** %11, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @parse_fs_perm(i32* %56, i32* %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @uu_list_insert(i32 %61, %struct.TYPE_9__* %62, i32 %63)
  br label %13

65:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %54
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i64 @nvpair_type(i32*) #1

declare dso_local %struct.TYPE_9__* @safe_malloc(i32) #1

declare dso_local i32 @nomem(...) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @uu_list_node_init(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @uu_list_numnodes(i32) #1

declare dso_local i32 @fs_perm_init(i32*, %struct.TYPE_8__*, i8*) #1

declare dso_local i64 @nvpair_value_nvlist(i32*, i32**) #1

declare dso_local i32 @parse_fs_perm(i32*, i32*) #1

declare dso_local i32 @uu_list_insert(i32, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
