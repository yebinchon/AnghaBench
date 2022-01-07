; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zcp_get.c_get_zap_prop.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zcp_get.c_get_zap_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ZAP_MAXVALUELEN = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@PROP_TYPE_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"temporary properties only supported in kernel mode\00", align 1
@PROP_TYPE_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @get_zap_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_zap_prop(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load i32, i32* @ZAP_MAXVALUELEN, align 4
  %21 = load i32, i32* @KM_SLEEP, align 4
  %22 = call i8* @kmem_alloc(i32 %20, i32 %21)
  store i8* %22, i8** %11, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i8* @zfs_prop_to_name(i32 %23)
  store i8* %24, i8** %13, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @zfs_prop_get_type(i32 %25)
  store i64 %26, i64* %14, align 8
  %27 = load i64, i64* %14, align 8
  %28 = load i64, i64* @PROP_TYPE_STRING, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %3
  %31 = load i32*, i32** %6, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = load i32, i32* @ZAP_MAXVALUELEN, align 4
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @dsl_prop_get_ds(i32* %31, i8* %32, i32 1, i32 %33, i8* %34, i8* %19)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32*, i32** %5, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @lua_pushstring(i32* %39, i8* %40)
  br label %42

42:                                               ; preds = %38, %30
  br label %50

43:                                               ; preds = %3
  %44 = load i32*, i32** %6, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = call i32 @dsl_prop_get_ds(i32* %44, i8* %45, i32 1, i32 1, i8* %12, i8* %19)
  store i32 %46, i32* %8, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = call i32 @luaL_error(i32* %47, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %48)
  store i32 %49, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %62

50:                                               ; preds = %42
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* @ZAP_MAXVALUELEN, align 4
  %53 = call i32 @kmem_free(i8* %51, i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @get_prop_src(i32* %57, i8* %19, i32 %58)
  br label %60

60:                                               ; preds = %56, %50
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %62

62:                                               ; preds = %60, %43
  %63 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %63)
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @kmem_alloc(i32, i32) #2

declare dso_local i8* @zfs_prop_to_name(i32) #2

declare dso_local i64 @zfs_prop_get_type(i32) #2

declare dso_local i32 @dsl_prop_get_ds(i32*, i8*, i32, i32, i8*, i8*) #2

declare dso_local i32 @lua_pushstring(i32*, i8*) #2

declare dso_local i32 @luaL_error(i32*, i8*, i8*) #2

declare dso_local i32 @kmem_free(i8*, i32) #2

declare dso_local i32 @get_prop_src(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
