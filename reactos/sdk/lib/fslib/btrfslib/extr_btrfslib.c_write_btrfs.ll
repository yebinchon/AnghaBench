; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/fslib/btrfslib/extr_btrfslib.c_write_btrfs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/fslib/btrfslib/extr_btrfslib.c_write_btrfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@BTRFS_ROOT_ROOT = common dso_local global i32 0, align 4
@BTRFS_ROOT_CHUNK = common dso_local global i32 0, align 4
@BTRFS_ROOT_EXTENT = common dso_local global i32 0, align 4
@BTRFS_ROOT_DEVTREE = common dso_local global i32 0, align 4
@BTRFS_ROOT_CHECKSUM = common dso_local global i32 0, align 4
@BTRFS_ROOT_FSTREE = common dso_local global i32 0, align 4
@BTRFS_ROOT_DATA_RELOC = common dso_local global i32 0, align 4
@BLOCK_FLAG_SYSTEM = common dso_local global i32 0, align 4
@BLOCK_FLAG_DUPLICATE = common dso_local global i32 0, align 4
@STATUS_INTERNAL_ERROR = common dso_local global i32 0, align 4
@BLOCK_FLAG_METADATA = common dso_local global i32 0, align 4
@BTRFS_INCOMPAT_FLAGS_MIXED_GROUPS = common dso_local global i32 0, align 4
@BLOCK_FLAG_DATA = common dso_local global i32 0, align 4
@TYPE_DEV_ITEM = common dso_local global i32 0, align 4
@BTRFS_INCOMPAT_FLAGS_SKINNY_METADATA = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @write_btrfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_btrfs(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_6__, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %30 = call i64 @time(i32 0)
  %31 = trunc i64 %30 to i32
  %32 = call i32 @srand(i32 %31)
  %33 = call i32 (i32*, ...) @get_uuid(i32* %26)
  %34 = call i32 (i32*, ...) @get_uuid(i32* %27)
  %35 = call i32 @InitializeListHead(i32* %15)
  %36 = call i32 @InitializeListHead(i32* %16)
  %37 = load i32, i32* @BTRFS_ROOT_ROOT, align 4
  %38 = call i32* @add_root(i32* %15, i32 %37)
  store i32* %38, i32** %17, align 8
  %39 = load i32, i32* @BTRFS_ROOT_CHUNK, align 4
  %40 = call i32* @add_root(i32* %15, i32 %39)
  store i32* %40, i32** %18, align 8
  %41 = load i32, i32* @BTRFS_ROOT_EXTENT, align 4
  %42 = call i32* @add_root(i32* %15, i32 %41)
  store i32* %42, i32** %19, align 8
  %43 = load i32, i32* @BTRFS_ROOT_DEVTREE, align 4
  %44 = call i32* @add_root(i32* %15, i32 %43)
  store i32* %44, i32** %20, align 8
  %45 = load i32, i32* @BTRFS_ROOT_CHECKSUM, align 4
  %46 = call i32* @add_root(i32* %15, i32 %45)
  %47 = load i32, i32* @BTRFS_ROOT_FSTREE, align 4
  %48 = call i32* @add_root(i32* %15, i32 %47)
  store i32* %48, i32** %21, align 8
  %49 = load i32, i32* @BTRFS_ROOT_DATA_RELOC, align 4
  %50 = call i32* @add_root(i32* %15, i32 %49)
  store i32* %50, i32** %22, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 (%struct.TYPE_6__*, i32, i32, i32*, i32, ...) @init_device(%struct.TYPE_6__* %25, i32 1, i32 %51, i32* %26, i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @is_ssd(i32 %54)
  store i64 %55, i64* %28, align 8
  %56 = load i32, i32* @BLOCK_FLAG_SYSTEM, align 4
  %57 = load i64, i64* %28, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %6
  br label %62

60:                                               ; preds = %6
  %61 = load i32, i32* @BLOCK_FLAG_DUPLICATE, align 4
  br label %62

62:                                               ; preds = %60, %59
  %63 = phi i32 [ 0, %59 ], [ %61, %60 ]
  %64 = or i32 %56, %63
  %65 = load i32*, i32** %18, align 8
  %66 = load i32*, i32** %20, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32* @add_chunk(i32* %16, i32 %64, i32* %65, %struct.TYPE_6__* %25, i32* %66, i32* %27, i32 %67)
  store i32* %68, i32** %23, align 8
  %69 = load i32*, i32** %23, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %62
  %72 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %72, i32* %7, align 4
  br label %169

73:                                               ; preds = %62
  %74 = load i32, i32* @BLOCK_FLAG_METADATA, align 4
  store i32 %74, i32* %29, align 4
  %75 = load i64, i64* %28, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @BTRFS_INCOMPAT_FLAGS_MIXED_GROUPS, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @BLOCK_FLAG_DUPLICATE, align 4
  %84 = load i32, i32* %29, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %29, align 4
  br label %86

86:                                               ; preds = %82, %77, %73
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @BTRFS_INCOMPAT_FLAGS_MIXED_GROUPS, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i32, i32* @BLOCK_FLAG_DATA, align 4
  %93 = load i32, i32* %29, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %29, align 4
  br label %95

95:                                               ; preds = %91, %86
  %96 = load i32, i32* %29, align 4
  %97 = load i32*, i32** %18, align 8
  %98 = load i32*, i32** %20, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i32* @add_chunk(i32* %16, i32 %96, i32* %97, %struct.TYPE_6__* %25, i32* %98, i32* %27, i32 %99)
  store i32* %100, i32** %24, align 8
  %101 = load i32*, i32** %24, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %95
  %104 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %104, i32* %7, align 4
  br label %169

105:                                              ; preds = %95
  %106 = load i32*, i32** %18, align 8
  %107 = load i32, i32* @TYPE_DEV_ITEM, align 4
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %112 = call i32 @add_item(i32* %106, i32 1, i32 %107, i32 %110, %struct.TYPE_7__* %111, i32 4)
  %113 = load i32*, i32** %17, align 8
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @set_default_subvol(i32* %113, i32 %114)
  %116 = load i32*, i32** %21, align 8
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @init_fs_tree(i32* %116, i32 %117)
  %119 = load i32*, i32** %22, align 8
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @init_fs_tree(i32* %119, i32 %120)
  %122 = load i32*, i32** %23, align 8
  %123 = load i32*, i32** %24, align 8
  %124 = load i32, i32* %12, align 4
  %125 = load i32*, i32** %17, align 8
  %126 = load i32*, i32** %19, align 8
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* @BTRFS_INCOMPAT_FLAGS_SKINNY_METADATA, align 4
  %129 = and i32 %127, %128
  %130 = call i32 @assign_addresses(i32* %15, i32* %122, i32* %123, i32 %124, i32* %125, i32* %126, i32 %129)
  %131 = load i32*, i32** %19, align 8
  %132 = call i32 @add_block_group_items(i32* %16, i32* %131)
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @write_roots(i32 %133, i32* %15, i32 %134, i32* %26, i32* %27)
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = call i32 @NT_SUCCESS(i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %105
  %140 = load i32, i32* %14, align 4
  store i32 %140, i32* %7, align 4
  br label %169

141:                                              ; preds = %105
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @clear_first_megabyte(i32 %142)
  store i32 %143, i32* %14, align 4
  %144 = load i32, i32* %14, align 4
  %145 = call i32 @NT_SUCCESS(i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %141
  %148 = load i32, i32* %14, align 4
  store i32 %148, i32* %7, align 4
  br label %169

149:                                              ; preds = %141
  %150 = load i32, i32* %8, align 4
  %151 = load i32*, i32** %18, align 8
  %152 = load i32*, i32** %17, align 8
  %153 = load i32*, i32** %19, align 8
  %154 = load i32*, i32** %23, align 8
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %13, align 4
  %159 = call i32 @write_superblocks(i32 %150, %struct.TYPE_6__* %25, i32* %151, i32* %152, i32* %153, i32* %154, i32 %155, i32* %26, i32 %156, i32 %157, i32 %158)
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %14, align 4
  %161 = call i32 @NT_SUCCESS(i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %149
  %164 = load i32, i32* %14, align 4
  store i32 %164, i32* %7, align 4
  br label %169

165:                                              ; preds = %149
  %166 = call i32 @free_roots(i32* %15)
  %167 = call i32 @free_chunks(i32* %16)
  %168 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %168, i32* %7, align 4
  br label %169

169:                                              ; preds = %165, %163, %147, %139, %103, %71
  %170 = load i32, i32* %7, align 4
  ret i32 %170
}

declare dso_local i32 @srand(i32) #1

declare dso_local i64 @time(i32) #1

declare dso_local i32 @get_uuid(i32*, ...) #1

declare dso_local i32 @InitializeListHead(i32*) #1

declare dso_local i32* @add_root(i32*, i32) #1

declare dso_local i32 @init_device(%struct.TYPE_6__*, i32, i32, i32*, i32, ...) #1

declare dso_local i64 @is_ssd(i32) #1

declare dso_local i32* @add_chunk(i32*, i32, i32*, %struct.TYPE_6__*, i32*, i32*, i32) #1

declare dso_local i32 @add_item(i32*, i32, i32, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @set_default_subvol(i32*, i32) #1

declare dso_local i32 @init_fs_tree(i32*, i32) #1

declare dso_local i32 @assign_addresses(i32*, i32*, i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @add_block_group_items(i32*, i32*) #1

declare dso_local i32 @write_roots(i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @clear_first_megabyte(i32) #1

declare dso_local i32 @write_superblocks(i32, %struct.TYPE_6__*, i32*, i32*, i32*, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @free_roots(i32*) #1

declare dso_local i32 @free_chunks(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
