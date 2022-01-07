; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_buf_init.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_buf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32 }

@zfs_arc_average_blocksize = common dso_local global i32 0, align 4
@buf_hash_table = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@KM_NOSLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"arc_buf_hdr_t_full\00", align 1
@HDR_FULL_SIZE = common dso_local global i32 0, align 4
@hdr_full_cons = common dso_local global i32 0, align 4
@hdr_full_dest = common dso_local global i32 0, align 4
@hdr_recl = common dso_local global i32* null, align 8
@hdr_full_cache = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"arc_buf_hdr_t_full_crypt\00", align 1
@HDR_FULL_CRYPT_SIZE = common dso_local global i32 0, align 4
@hdr_full_crypt_cons = common dso_local global i32 0, align 4
@hdr_full_crypt_dest = common dso_local global i32 0, align 4
@hdr_full_crypt_cache = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"arc_buf_hdr_t_l2only\00", align 1
@HDR_L2ONLY_SIZE = common dso_local global i32 0, align 4
@hdr_l2only_cons = common dso_local global i32 0, align 4
@hdr_l2only_dest = common dso_local global i32 0, align 4
@hdr_l2only_cache = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"arc_buf_t\00", align 1
@buf_cons = common dso_local global i32 0, align 4
@buf_dest = common dso_local global i32 0, align 4
@buf_cache = common dso_local global i8* null, align 8
@zfs_crc64_table = common dso_local global i32* null, align 8
@ZFS_CRC64_POLY = common dso_local global i32 0, align 4
@BUF_LOCKS = common dso_local global i32 0, align 4
@MUTEX_DEFAULT = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @buf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buf_init() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32 4096, i32* %2, align 4
  br label %5

5:                                                ; preds = %11, %0
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @zfs_arc_average_blocksize, align 4
  %8 = mul nsw i32 %6, %7
  %9 = call i32 (...) @arc_all_memory()
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = load i32, i32* %2, align 4
  %13 = shl i32 %12, 1
  store i32 %13, i32* %2, align 4
  br label %5

14:                                               ; preds = %5
  br label %15

15:                                               ; preds = %26, %14
  %16 = load i32, i32* %2, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @buf_hash_table, i32 0, i32 0), align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @KM_NOSLEEP, align 4
  %23 = call i32* @kmem_zalloc(i32 %21, i32 %22)
  store i32* %23, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @buf_hash_table, i32 0, i32 2), align 8
  %24 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @buf_hash_table, i32 0, i32 2), align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %15
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ugt i64 %28, 256
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load i32, i32* %2, align 4
  %33 = ashr i32 %32, 1
  store i32 %33, i32* %2, align 4
  br label %15

34:                                               ; preds = %15
  %35 = load i32, i32* @HDR_FULL_SIZE, align 4
  %36 = load i32, i32* @hdr_full_cons, align 4
  %37 = load i32, i32* @hdr_full_dest, align 4
  %38 = load i32*, i32** @hdr_recl, align 8
  %39 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %35, i32 0, i32 %36, i32 %37, i32* %38, i32* null, i32* null, i32 0)
  store i8* %39, i8** @hdr_full_cache, align 8
  %40 = load i32, i32* @HDR_FULL_CRYPT_SIZE, align 4
  %41 = load i32, i32* @hdr_full_crypt_cons, align 4
  %42 = load i32, i32* @hdr_full_crypt_dest, align 4
  %43 = load i32*, i32** @hdr_recl, align 8
  %44 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 0, i32 %41, i32 %42, i32* %43, i32* null, i32* null, i32 0)
  store i8* %44, i8** @hdr_full_crypt_cache, align 8
  %45 = load i32, i32* @HDR_L2ONLY_SIZE, align 4
  %46 = load i32, i32* @hdr_l2only_cons, align 4
  %47 = load i32, i32* @hdr_l2only_dest, align 4
  %48 = load i32*, i32** @hdr_recl, align 8
  %49 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 0, i32 %46, i32 %47, i32* %48, i32* null, i32* null, i32 0)
  store i8* %49, i8** @hdr_l2only_cache, align 8
  %50 = load i32, i32* @buf_cons, align 4
  %51 = load i32, i32* @buf_dest, align 4
  %52 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 4, i32 0, i32 %50, i32 %51, i32* null, i32* null, i32* null, i32 0)
  store i8* %52, i8** @buf_cache, align 8
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %82, %34
  %54 = load i32, i32* %3, align 4
  %55 = icmp slt i32 %54, 256
  br i1 %55, label %56, label %85

56:                                               ; preds = %53
  %57 = load i32*, i32** @zfs_crc64_table, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32* %60, i32** %1, align 8
  %61 = load i32, i32* %3, align 4
  %62 = load i32*, i32** %1, align 8
  store i32 %61, i32* %62, align 4
  store i32 8, i32* %4, align 4
  br label %63

63:                                               ; preds = %78, %56
  %64 = load i32, i32* %4, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = load i32*, i32** %1, align 8
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 1
  %70 = load i32*, i32** %1, align 8
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 1
  %73 = sub nsw i32 0, %72
  %74 = load i32, i32* @ZFS_CRC64_POLY, align 4
  %75 = and i32 %73, %74
  %76 = xor i32 %69, %75
  %77 = load i32*, i32** %1, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %66
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %4, align 4
  br label %63

81:                                               ; preds = %63
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %3, align 4
  br label %53

85:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %98, %85
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @BUF_LOCKS, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %86
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @buf_hash_table, i32 0, i32 1), align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* @MUTEX_DEFAULT, align 4
  %97 = call i32 @mutex_init(i32* %95, i32* null, i32 %96, i32* null)
  br label %98

98:                                               ; preds = %90
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %3, align 4
  br label %86

101:                                              ; preds = %86
  ret void
}

declare dso_local i32 @arc_all_memory(...) #1

declare dso_local i32* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @kmem_cache_create(i8*, i32, i32, i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @mutex_init(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
