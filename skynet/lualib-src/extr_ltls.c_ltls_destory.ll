; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_ltls.c_ltls_destory.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_ltls.c_ltls_destory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLS_IS_INIT = common dso_local global i64 0, align 8
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @ltls_destory, i8* null }]

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ltls_destory() #0 {
  %1 = load i64, i64* @TLS_IS_INIT, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %11

3:                                                ; preds = %0
  %4 = call i32 (...) @ENGINE_cleanup()
  %5 = call i32 @CONF_modules_unload(i32 1)
  %6 = call i32 (...) @ERR_free_strings()
  %7 = call i32 (...) @EVP_cleanup()
  %8 = call i32 (...) @SSL_COMP_get_compression_methods()
  %9 = call i32 @sk_SSL_COMP_free(i32 %8)
  %10 = call i32 (...) @CRYPTO_cleanup_all_ex_data()
  br label %11

11:                                               ; preds = %3, %0
  ret void
}

declare dso_local i32 @ENGINE_cleanup(...) #1

declare dso_local i32 @CONF_modules_unload(i32) #1

declare dso_local i32 @ERR_free_strings(...) #1

declare dso_local i32 @EVP_cleanup(...) #1

declare dso_local i32 @sk_SSL_COMP_free(i32) #1

declare dso_local i32 @SSL_COMP_get_compression_methods(...) #1

declare dso_local i32 @CRYPTO_cleanup_all_ex_data(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
