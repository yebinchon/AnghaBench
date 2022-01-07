; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zhack/extr_zhack.c_zhack_import.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zhack/extr_zhack.c_zhack_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@DMU_OST_ZFS = common dso_local global i32 0, align 4
@space_delta_cb = common dso_local global i32 0, align 4
@g_readonly = common dso_local global i8* null, align 8
@g_importargs = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@g_pool = common dso_local global i32 0, align 4
@libzpool_config_ops = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cannot import '%s'\00", align 1
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZPOOL_PROP_READONLY = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@zfeature_checks_disable = common dso_local global i32 0, align 4
@ZFS_IMPORT_SKIP_MMP = common dso_local global i32 0, align 4
@ZFS_IMPORT_NORMAL = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"can't import '%s': %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @zhack_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zhack_import(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @FREAD, align 4
  br label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @FREAD, align 4
  %14 = load i32, i32* @FWRITE, align 4
  %15 = or i32 %13, %14
  br label %16

16:                                               ; preds = %12, %10
  %17 = phi i32 [ %11, %10 ], [ %15, %12 ]
  %18 = call i32 @kernel_init(i32 %17)
  %19 = load i32, i32* @DMU_OST_ZFS, align 4
  %20 = load i32, i32* @space_delta_cb, align 4
  %21 = call i32 @dmu_objset_register_type(i32 %19, i32 %20)
  %22 = load i8*, i8** %4, align 8
  store i8* %22, i8** @g_readonly, align 8
  %23 = load i8*, i8** %4, align 8
  store i8* %23, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @g_importargs, i32 0, i32 0), align 8
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @strdup(i8* %24)
  store i32 %25, i32* @g_pool, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @zpool_find_config(i32* null, i8* %26, i32** %5, %struct.TYPE_3__* @g_importargs, i32* @libzpool_config_ops)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %16
  %31 = load i32, i32* @FTAG, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 (i32*, i32, i8*, i8*, ...) @fatal(i32* null, i32 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %30, %16
  store i32* null, i32** %6, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %39 = call i64 @nvlist_alloc(i32** %6, i32 %38, i32 0)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @VERIFY(i32 %41)
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @ZPOOL_PROP_READONLY, align 4
  %45 = call i32 @zpool_prop_to_name(i32 %44)
  %46 = call i64 @nvlist_add_uint64(i32* %43, i32 %45, i32 1)
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @VERIFY(i32 %48)
  br label %50

50:                                               ; preds = %37, %34
  %51 = load i32, i32* @B_TRUE, align 4
  store i32 %51, i32* @zfeature_checks_disable, align 4
  %52 = load i8*, i8** %3, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @ZFS_IMPORT_SKIP_MMP, align 4
  br label %61

59:                                               ; preds = %50
  %60 = load i32, i32* @ZFS_IMPORT_NORMAL, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = call i32 @spa_import(i8* %52, i32* %53, i32* %54, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* @B_FALSE, align 4
  store i32 %64, i32* @zfeature_checks_disable, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @EEXIST, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %68, %61
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32, i32* @FTAG, align 4
  %74 = load i8*, i8** %3, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @strerror(i32 %75)
  %77 = call i32 (i32*, i32, i8*, i8*, ...) @fatal(i32* null, i32 %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %74, i32 %76)
  br label %78

78:                                               ; preds = %72, %69
  ret void
}

declare dso_local i32 @kernel_init(i32) #1

declare dso_local i32 @dmu_objset_register_type(i32, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @zpool_find_config(i32*, i8*, i32**, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @fatal(i32*, i32, i8*, i8*, ...) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i32) #1

declare dso_local i32 @zpool_prop_to_name(i32) #1

declare dso_local i32 @spa_import(i8*, i32*, i32*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
