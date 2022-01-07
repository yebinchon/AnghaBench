; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_prov_tabs.c_kcf_get_sw_prov.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_prov_tabs.c_kcf_get_sw_prov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@KCF_SUCCESS = common dso_local global i64 0, align 8
@CRYPTO_MECHANISM_INVALID = common dso_local global i32 0, align 4
@CE_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no SW provider for \22%s\22\0A\00", align 1
@CRYPTO_MECH_NOT_SUPPORTED = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kcf_get_sw_prov(i32 %0, i32** %1, %struct.TYPE_6__** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_6__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %6, align 4
  store i32** %1, i32*** %7, align 8
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @kcf_get_mech_entry(i32 %11, %struct.TYPE_6__** %10)
  %13 = load i64, i64* @KCF_SUCCESS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @CRYPTO_MECHANISM_INVALID, align 4
  store i32 %16, i32* %5, align 4
  br label %61

17:                                               ; preds = %4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = call i32 @mutex_enter(i32* %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = icmp eq %struct.TYPE_5__* %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32**, i32*** %7, align 8
  store i32* %30, i32** %31, align 8
  %32 = icmp eq i32* %30, null
  br i1 %32, label %33, label %47

33:                                               ; preds = %25, %17
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* @CE_WARN, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cmn_err(i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %36, %33
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = call i32 @mutex_exit(i32* %44)
  %46 = load i32, i32* @CRYPTO_MECH_NOT_SUPPORTED, align 4
  store i32 %46, i32* %5, align 4
  br label %61

47:                                               ; preds = %25
  %48 = load i32**, i32*** %7, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @KCF_PROV_REFHOLD(i32* %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = call i32 @mutex_exit(i32* %52)
  %54 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %55 = icmp ne %struct.TYPE_6__** %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %58 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %58, align 8
  br label %59

59:                                               ; preds = %56, %47
  %60 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %42, %15
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i64 @kcf_get_mech_entry(i32, %struct.TYPE_6__**) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @cmn_err(i32, i8*, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @KCF_PROV_REFHOLD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
