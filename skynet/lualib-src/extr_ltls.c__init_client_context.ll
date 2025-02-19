; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_ltls.c__init_client_context.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_ltls.c__init_client_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_context = type { i32, i32 }
%struct.ssl_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.tls_context*, %struct.ssl_ctx*)* @_init_client_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_init_client_context(i32* %0, %struct.tls_context* %1, %struct.ssl_ctx* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tls_context*, align 8
  %6 = alloca %struct.ssl_ctx*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.tls_context* %1, %struct.tls_context** %5, align 8
  store %struct.ssl_ctx* %2, %struct.ssl_ctx** %6, align 8
  %7 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %8 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %7, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %11 = load %struct.ssl_ctx*, %struct.ssl_ctx** %6, align 8
  %12 = call i32 @_init_bio(i32* %9, %struct.tls_context* %10, %struct.ssl_ctx* %11)
  %13 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %14 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @SSL_set_connect_state(i32 %15)
  ret void
}

declare dso_local i32 @_init_bio(i32*, %struct.tls_context*, %struct.ssl_ctx*) #1

declare dso_local i32 @SSL_set_connect_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
