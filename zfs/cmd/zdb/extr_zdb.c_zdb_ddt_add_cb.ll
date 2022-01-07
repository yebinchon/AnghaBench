; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_zdb_ddt_add_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_zdb_ddt_add_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }

@ZB_DNODE_LEVEL = common dso_local global i64 0, align 8
@dump_opt = common dso_local global i32* null, align 8
@ZB_ROOT_LEVEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"traversing objset %llu, %llu objects, %lu blocks so far\0A\00", align 1
@ZIO_CHECKSUM_OFF = common dso_local global i64 0, align 8
@UMEM_NOFAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, %struct.TYPE_9__*, i32*, i8*)* @zdb_ddt_add_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zdb_ddt_add_cb(i32* %0, i32* %1, i32* %2, %struct.TYPE_9__* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca %struct.TYPE_8__, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %18 = load i8*, i8** %13, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %14, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ZB_DNODE_LEVEL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %6
  %26 = load i32*, i32** %10, align 8
  %27 = call i64 @BP_IS_HOLE(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32*, i32** %10, align 8
  %31 = call i64 @BP_IS_EMBEDDED(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %25, %6
  store i32 0, i32* %7, align 4
  br label %124

34:                                               ; preds = %29
  %35 = load i32*, i32** @dump_opt, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 83
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %56

39:                                               ; preds = %34
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ZB_ROOT_LEVEL, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i32*, i32** %10, align 8
  %51 = call i64 @BP_GET_FILL(i32* %50)
  %52 = trunc i64 %51 to i32
  %53 = load i32*, i32** %14, align 8
  %54 = call i32 @avl_numnodes(i32* %53)
  %55 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52, i32 %54)
  br label %56

56:                                               ; preds = %45, %39, %34
  %57 = load i32*, i32** %10, align 8
  %58 = call i64 @BP_IS_HOLE(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %56
  %61 = load i32*, i32** %10, align 8
  %62 = call i64 @BP_GET_CHECKSUM(i32* %61)
  %63 = load i64, i64* @ZIO_CHECKSUM_OFF, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %74, label %65

65:                                               ; preds = %60
  %66 = load i32*, i32** %10, align 8
  %67 = call i64 @BP_GET_LEVEL(i32* %66)
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @BP_GET_TYPE(i32* %70)
  %72 = call i64 @DMU_OT_IS_METADATA(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69, %65, %60, %56
  store i32 0, i32* %7, align 4
  br label %124

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @ddt_key_fill(i32* %76, i32* %77)
  %79 = load i32*, i32** %14, align 8
  %80 = call %struct.TYPE_8__* @avl_find(i32* %79, %struct.TYPE_8__* %17, i32* %15)
  store %struct.TYPE_8__* %80, %struct.TYPE_8__** %16, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %82 = icmp eq %struct.TYPE_8__* %81, null
  br i1 %82, label %83, label %94

83:                                               ; preds = %75
  %84 = load i32, i32* @UMEM_NOFAIL, align 4
  %85 = call %struct.TYPE_8__* @umem_zalloc(i32 20, i32 %84)
  store %struct.TYPE_8__* %85, %struct.TYPE_8__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  %90 = load i32*, i32** %14, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %92 = load i32, i32* %15, align 4
  %93 = call i32 @avl_insert(i32* %90, %struct.TYPE_8__* %91, i32 %92)
  br label %94

94:                                               ; preds = %83, %75
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load i32*, i32** %10, align 8
  %100 = call i64 @BP_GET_LSIZE(i32* %99)
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %100
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 4
  %107 = load i32*, i32** %10, align 8
  %108 = call i64 @BP_GET_PSIZE(i32* %107)
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %108
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %110, align 4
  %115 = load i32*, i32** %8, align 8
  %116 = load i32*, i32** %10, align 8
  %117 = call i64 @bp_get_dsize_sync(i32* %115, i32* %116)
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %117
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %119, align 4
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %94, %74, %33
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local i64 @BP_IS_HOLE(i32*) #1

declare dso_local i64 @BP_IS_EMBEDDED(i32*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i64 @BP_GET_FILL(i32*) #1

declare dso_local i32 @avl_numnodes(i32*) #1

declare dso_local i64 @BP_GET_CHECKSUM(i32*) #1

declare dso_local i64 @BP_GET_LEVEL(i32*) #1

declare dso_local i64 @DMU_OT_IS_METADATA(i32) #1

declare dso_local i32 @BP_GET_TYPE(i32*) #1

declare dso_local i32 @ddt_key_fill(i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @avl_find(i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local %struct.TYPE_8__* @umem_zalloc(i32, i32) #1

declare dso_local i32 @avl_insert(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @BP_GET_LSIZE(i32*) #1

declare dso_local i64 @BP_GET_PSIZE(i32*) #1

declare dso_local i64 @bp_get_dsize_sync(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
