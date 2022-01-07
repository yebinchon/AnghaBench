; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_upgrade_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_upgrade_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8* }

@B_FALSE = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_VERSION = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@g_zfs = common dso_local global i32 0, align 4
@history_str = common dso_local global i32 0, align 4
@log_history = common dso_local global i8* null, align 8
@SPA_VERSION_FEATURES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @upgrade_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upgrade_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %6, align 8
  %14 = load i8*, i8** @B_FALSE, align 8
  store i8* %14, i8** %9, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32* @zpool_get_config(i32* %15, i32* null)
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* @ZPOOL_CONFIG_VERSION, align 4
  %19 = call i64 @nvlist_lookup_uint64(i32* %17, i32 %18, i64* %8)
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @verify(i32 %21)
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @SPA_VERSION_IS_SUPPORTED(i64 %23)
  %25 = call i32 @assert(i32 %24)
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %2
  %32 = load i8*, i8** @B_FALSE, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @upgrade_version(i32* %35, i64 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %3, align 4
  br label %79

44:                                               ; preds = %31
  %45 = load i8*, i8** @B_TRUE, align 8
  store i8* %45, i8** %9, align 8
  %46 = load i32, i32* @g_zfs, align 4
  %47 = load i32, i32* @history_str, align 4
  %48 = call i32 @zpool_log_history(i32 %46, i32 %47)
  %49 = load i8*, i8** @B_FALSE, align 8
  store i8* %49, i8** @log_history, align 8
  br label %50

50:                                               ; preds = %44, %2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SPA_VERSION_FEATURES, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %50
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @upgrade_enable_all(i32* %57, i32* %11)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %3, align 4
  br label %79

63:                                               ; preds = %56
  %64 = load i32, i32* %11, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i8*, i8** @B_FALSE, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** @B_TRUE, align 8
  store i8* %70, i8** %9, align 8
  br label %71

71:                                               ; preds = %66, %63
  br label %72

72:                                               ; preds = %71, %50
  %73 = load i8*, i8** %9, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = call i8* @gettext(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %77 = call i32 @printf(i8* %76)
  br label %78

78:                                               ; preds = %75, %72
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %61, %42
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32* @zpool_get_config(i32*, i32*) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SPA_VERSION_IS_SUPPORTED(i64) #1

declare dso_local i32 @upgrade_version(i32*, i64) #1

declare dso_local i32 @zpool_log_history(i32, i32) #1

declare dso_local i32 @upgrade_enable_all(i32*, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i8* @gettext(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
