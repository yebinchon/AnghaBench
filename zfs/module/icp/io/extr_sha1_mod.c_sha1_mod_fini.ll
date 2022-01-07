; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/io/extr_sha1_mod.c_sha1_mod_fini.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/io/extr_sha1_mod.c_sha1_mod_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sha1_prov_handle = common dso_local global i64 0, align 8
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@CE_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"sha1 _fini: crypto_unregister_provider() failed (0x%x)\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@modlinkage = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sha1_mod_fini() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @sha1_prov_handle, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %0
  %6 = load i64, i64* @sha1_prov_handle, align 8
  %7 = call i32 @crypto_unregister_provider(i64 %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load i32, i32* @CE_WARN, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @cmn_err(i32 %11, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @EBUSY, align 4
  store i32 %14, i32* %1, align 4
  br label %18

15:                                               ; preds = %5
  store i64 0, i64* @sha1_prov_handle, align 8
  br label %16

16:                                               ; preds = %15, %0
  %17 = call i32 @mod_remove(i32* @modlinkage)
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %16, %10
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local i32 @crypto_unregister_provider(i64) #1

declare dso_local i32 @cmn_err(i32, i8*, i32) #1

declare dso_local i32 @mod_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
