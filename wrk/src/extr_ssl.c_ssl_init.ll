; ModuleID = '/home/carl/AnghaBench/wrk/src/extr_ssl.c_ssl_init.c'
source_filename = "/home/carl/AnghaBench/wrk/src/extr_ssl.c_ssl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_VERIFY_NONE = common dso_local global i32 0, align 4
@SSL_MODE_AUTO_RETRY = common dso_local global i32 0, align 4
@SSL_SESS_CACHE_CLIENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ssl_init() #0 {
  %1 = alloca i32*, align 8
  store i32* null, i32** %1, align 8
  %2 = call i32 (...) @SSL_load_error_strings()
  %3 = call i32 (...) @SSL_library_init()
  %4 = call i32 (...) @OpenSSL_add_all_algorithms()
  %5 = call i32 (...) @SSLv23_client_method()
  %6 = call i32* @SSL_CTX_new(i32 %5)
  store i32* %6, i32** %1, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %0
  %9 = load i32*, i32** %1, align 8
  %10 = load i32, i32* @SSL_VERIFY_NONE, align 4
  %11 = call i32 @SSL_CTX_set_verify(i32* %9, i32 %10, i32* null)
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @SSL_CTX_set_verify_depth(i32* %12, i32 0)
  %14 = load i32*, i32** %1, align 8
  %15 = load i32, i32* @SSL_MODE_AUTO_RETRY, align 4
  %16 = call i32 @SSL_CTX_set_mode(i32* %14, i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = load i32, i32* @SSL_SESS_CACHE_CLIENT, align 4
  %19 = call i32 @SSL_CTX_set_session_cache_mode(i32* %17, i32 %18)
  br label %20

20:                                               ; preds = %8, %0
  %21 = load i32*, i32** %1, align 8
  ret i32* %21
}

declare dso_local i32 @SSL_load_error_strings(...) #1

declare dso_local i32 @SSL_library_init(...) #1

declare dso_local i32 @OpenSSL_add_all_algorithms(...) #1

declare dso_local i32* @SSL_CTX_new(i32) #1

declare dso_local i32 @SSLv23_client_method(...) #1

declare dso_local i32 @SSL_CTX_set_verify(i32*, i32, i32*) #1

declare dso_local i32 @SSL_CTX_set_verify_depth(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_mode(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_session_cache_mode(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
