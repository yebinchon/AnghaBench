; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_prov_tabs.c_kcf_prov_tab_rem_provider.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_prov_tabs.c_kcf_prov_tab_rem_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prov_tab = common dso_local global i32** null, align 8
@prov_tab_num = common dso_local global i64 0, align 8
@prov_tab_mutex = common dso_local global i32 0, align 4
@KCF_MAX_PROVIDERS = common dso_local global i64 0, align 8
@CRYPTO_INVALID_PROVIDER_ID = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kcf_prov_tab_rem_provider(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i32**, i32*** @prov_tab, align 8
  %6 = icmp ne i32** %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @ASSERT(i32 %7)
  %9 = load i64, i64* @prov_tab_num, align 8
  %10 = icmp sge i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  %13 = call i32 @mutex_enter(i32* @prov_tab_mutex)
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @KCF_MAX_PROVIDERS, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load i32**, i32*** @prov_tab, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds i32*, i32** %18, i64 %19
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %4, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %1
  %24 = call i32 @mutex_exit(i32* @prov_tab_mutex)
  %25 = load i32, i32* @CRYPTO_INVALID_PROVIDER_ID, align 4
  store i32 %25, i32* %2, align 4
  br label %33

26:                                               ; preds = %17
  %27 = call i32 @mutex_exit(i32* @prov_tab_mutex)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @KCF_PROV_REFRELE(i32* %28)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @KCF_PROV_IREFRELE(i32* %30)
  %32 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %26, %23
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @KCF_PROV_REFRELE(i32*) #1

declare dso_local i32 @KCF_PROV_IREFRELE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
