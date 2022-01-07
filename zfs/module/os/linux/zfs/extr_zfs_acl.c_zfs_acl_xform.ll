; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_acl_xform.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_acl_xform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i32, i32, i32* }
%struct.TYPE_15__ = type { i32, i32, i8*, i8* }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@ZFS_ACL_VERSION_INITIAL = common dso_local global i64 0, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@zfs_acl_fuid_ops = common dso_local global i32 0, align 4
@ZFS_ACL_VERSION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_acl_xform(i32* %0, %struct.TYPE_16__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i8* null, i8** %13, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ZFS_ACL_VERSION_INITIAL, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = mul i64 24, %25
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @KM_SLEEP, align 4
  %29 = call %struct.TYPE_15__* @kmem_alloc(i32 %27, i32 %28)
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** %7, align 8
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %35, %3
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = call i8* @zfs_acl_next_ace(%struct.TYPE_16__* %31, i8* %32, i32* %12, i32* %11, i8** %10, i8** %9)
  store i8* %33, i8** %13, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %61

35:                                               ; preds = %30
  %36 = load i8*, i8** %10, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 3
  store i8* %36, i8** %41, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  store i8* %42, i8** %47, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  store i32 %48, i32* %53, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  store i32 %54, i32* %60, align 8
  br label %30

61:                                               ; preds = %30
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = trunc i64 %66 to i32
  %68 = call %struct.TYPE_17__* @zfs_acl_node_alloc(i32 %67)
  store %struct.TYPE_17__* %68, %struct.TYPE_17__** %14, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 4
  store i32* @zfs_acl_fuid_ops, i32** %70, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @ZTOZSB(i32* %71)
  %73 = load i32*, i32** %4, align 8
  %74 = call %struct.TYPE_14__* @ZTOI(i32* %73)
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 1
  %87 = load i32*, i32** %6, align 8
  %88 = call i64 @zfs_copy_ace_2_fuid(i32 %72, i32 %76, %struct.TYPE_16__* %77, %struct.TYPE_15__* %78, i32 %81, i32 %84, i32* %86, i32* null, i32* %87)
  %89 = icmp eq i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @VERIFY(i32 %90)
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load i64, i64* @ZFS_ACL_VERSION, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 24
  %106 = trunc i64 %105 to i32
  %107 = call i32 @kmem_free(%struct.TYPE_15__* %100, i32 %106)
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %109 = call i32 @zfs_acl_release_nodes(%struct.TYPE_16__* %108)
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %113 = call i32 @list_insert_head(i32* %111, %struct.TYPE_17__* %112)
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_15__* @kmem_alloc(i32, i32) #1

declare dso_local i8* @zfs_acl_next_ace(%struct.TYPE_16__*, i8*, i32*, i32*, i8**, i8**) #1

declare dso_local %struct.TYPE_17__* @zfs_acl_node_alloc(i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @zfs_copy_ace_2_fuid(i32, i32, %struct.TYPE_16__*, %struct.TYPE_15__*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ZTOZSB(i32*) #1

declare dso_local %struct.TYPE_14__* @ZTOI(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @zfs_acl_release_nodes(%struct.TYPE_16__*) #1

declare dso_local i32 @list_insert_head(i32*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
