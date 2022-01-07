; ModuleID = '/home/carl/AnghaBench/vlc/src/test/extr_interrupt.c_main.c'
source_filename = "/home/carl/AnghaBench/vlc/src/test/extr_interrupt.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sem = common dso_local global i32 0, align 4
@PF_LOCAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@fds = common dso_local global i32* null, align 8
@test_thread_simple = common dso_local global i32 0, align 4
@VLC_THREAD_PRIORITY_LOW = common dso_local global i32 0, align 4
@test_thread_cleanup = common dso_local global i32 0, align 4
@test_thread_cancel = common dso_local global i32 0, align 4
@unreachable_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2 x i8*], align 16
  store i32 0, i32* %1, align 4
  %5 = call i32 @alarm(i32 2)
  %6 = call i32* (...) @vlc_interrupt_create()
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @vlc_interrupt_destroy(i32* %11)
  %13 = call i32 @vlc_sem_init(i32* @sem, i32 0)
  %14 = call i32* (...) @vlc_interrupt_create()
  store i32* %14, i32** %2, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* @PF_LOCAL, align 4
  %20 = load i32, i32* @SOCK_STREAM, align 4
  %21 = load i32*, i32** @fds, align 8
  %22 = call i64 @vlc_socketpair(i32 %19, i32 %20, i32 0, i32* %21, i32 0)
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @test_context_simple(i32* %26)
  %28 = load i32, i32* @test_thread_simple, align 4
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @VLC_THREAD_PRIORITY_LOW, align 4
  %31 = call i32 @vlc_clone(i32* %3, i32 %28, i32* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @vlc_interrupt_raise(i32* %36)
  %38 = call i32 @vlc_sem_post(i32* @sem)
  %39 = call i32 @vlc_sem_post(i32* @sem)
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @vlc_join(i32 %40, i32* null)
  %42 = load i32, i32* @test_thread_cleanup, align 4
  %43 = load i32*, i32** %2, align 8
  %44 = load i32, i32* @VLC_THREAD_PRIORITY_LOW, align 4
  %45 = call i32 @vlc_clone(i32* %3, i32 %42, i32* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @vlc_join(i32 %50, i32* null)
  %52 = load i32, i32* @test_thread_cancel, align 4
  %53 = load i32*, i32** %2, align 8
  %54 = load i32, i32* @VLC_THREAD_PRIORITY_LOW, align 4
  %55 = call i32 @vlc_clone(i32* %3, i32 %52, i32* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @vlc_cancel(i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @vlc_join(i32 %62, i32* null)
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @vlc_interrupt_destroy(i32* %64)
  %66 = call i32 @vlc_sem_post(i32* @sem)
  %67 = call i64 @vlc_sem_wait_i11e(i32* @sem)
  %68 = icmp eq i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = call i64 @vlc_mwait_i11e(i32 1)
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = call i64 @vlc_poll_i11e(i32* null, i32 0, i32 1)
  %76 = icmp eq i64 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load i32, i32* @unreachable_callback, align 4
  %80 = call i32 @vlc_interrupt_register(i32 %79, i32* null)
  %81 = call i32 (...) @vlc_interrupt_unregister()
  %82 = load i32*, i32** %2, align 8
  %83 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %84 = call i32 @vlc_interrupt_forward_start(i32* %82, i8** %83)
  %85 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %86 = call i64 @vlc_interrupt_forward_stop(i8** %85)
  %87 = icmp eq i64 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load i32*, i32** @fds, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @vlc_close(i32 %92)
  %94 = load i32*, i32** @fds, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @vlc_close(i32 %96)
  %98 = call i32 @vlc_sem_destroy(i32* @sem)
  ret i32 0
}

declare dso_local i32 @alarm(i32) #1

declare dso_local i32* @vlc_interrupt_create(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_interrupt_destroy(i32*) #1

declare dso_local i32 @vlc_sem_init(i32*, i32) #1

declare dso_local i64 @vlc_socketpair(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @test_context_simple(i32*) #1

declare dso_local i32 @vlc_clone(i32*, i32, i32*, i32) #1

declare dso_local i32 @vlc_interrupt_raise(i32*) #1

declare dso_local i32 @vlc_sem_post(i32*) #1

declare dso_local i32 @vlc_join(i32, i32*) #1

declare dso_local i32 @vlc_cancel(i32) #1

declare dso_local i64 @vlc_sem_wait_i11e(i32*) #1

declare dso_local i64 @vlc_mwait_i11e(i32) #1

declare dso_local i64 @vlc_poll_i11e(i32*, i32, i32) #1

declare dso_local i32 @vlc_interrupt_register(i32, i32*) #1

declare dso_local i32 @vlc_interrupt_unregister(...) #1

declare dso_local i32 @vlc_interrupt_forward_start(i32*, i8**) #1

declare dso_local i64 @vlc_interrupt_forward_stop(i8**) #1

declare dso_local i32 @vlc_close(i32) #1

declare dso_local i32 @vlc_sem_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
