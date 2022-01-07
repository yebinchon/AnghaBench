; ModuleID = '/home/carl/AnghaBench/vlc/src/test/extr_interrupt.c_test_context_simple.c'
source_filename = "/home/carl/AnghaBench/vlc/src/test/extr_interrupt.c_test_context_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@interrupt_callback = common dso_local global i32 0, align 4
@sem = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@CLOCK_FREQ = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@fds = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_context_simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_context_simple(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8, align 1
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32* @vlc_interrupt_set(i32* %5)
  %7 = call i32* @vlc_interrupt_set(i32* null)
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = icmp eq i32* %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32* @vlc_interrupt_set(i32* %13)
  store i32* %14, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = icmp eq i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32* @vlc_interrupt_set(i32* %19)
  store i32* %20, i32** %3, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %2, align 8
  %23 = icmp eq i32* %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* @interrupt_callback, align 4
  %27 = call i32 @vlc_interrupt_register(i32 %26, i32* @sem)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @vlc_interrupt_raise(i32* %28)
  %30 = call i32 @vlc_sem_wait(i32* @sem)
  %31 = call i32 (...) @vlc_interrupt_unregister()
  %32 = call i32 @vlc_sem_post(i32* @sem)
  %33 = call i64 @vlc_sem_wait_i11e(i32* @sem)
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @vlc_interrupt_raise(i32* %37)
  %39 = call i64 @vlc_sem_wait_i11e(i32* @sem)
  %40 = load i64, i64* @EINTR, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = call i32 @vlc_sem_post(i32* @sem)
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @vlc_interrupt_raise(i32* %45)
  %47 = call i64 @vlc_sem_wait_i11e(i32* @sem)
  %48 = load i64, i64* @EINTR, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = call i64 @vlc_sem_wait_i11e(i32* @sem)
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @vlc_interrupt_raise(i32* %56)
  %58 = call i32 @vlc_sem_post(i32* @sem)
  %59 = call i64 @vlc_sem_wait_i11e(i32* @sem)
  %60 = load i64, i64* @EINTR, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = call i64 @vlc_sem_wait_i11e(i32* @sem)
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = call i64 @vlc_mwait_i11e(i32 1)
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i32*, i32** %2, align 8
  %73 = call i32 @vlc_interrupt_raise(i32* %72)
  %74 = load i32, i32* @CLOCK_FREQ, align 4
  %75 = mul nsw i32 %74, 10000000
  %76 = call i64 @vlc_mwait_i11e(i32 %75)
  %77 = load i64, i64* @EINTR, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = call i32 @vlc_poll_i11e(i32* null, i32 0, i32 1)
  %82 = icmp eq i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load i32*, i32** %2, align 8
  %86 = call i32 @vlc_interrupt_raise(i32* %85)
  %87 = call i32 @vlc_poll_i11e(i32* null, i32 0, i32 1000000000)
  %88 = icmp eq i32 %87, -1
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load i64, i64* @errno, align 8
  %92 = load i64, i64* @EINTR, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  store i8 12, i8* %4, align 1
  %96 = load i32*, i32** @fds, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @vlc_write_i11e(i32 %98, i8* %4, i32 1)
  %100 = icmp eq i32 %99, 1
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  store i8 0, i8* %4, align 1
  %103 = load i32*, i32** @fds, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @vlc_read_i11e(i32 %105, i8* %4, i32 1)
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %112

108:                                              ; preds = %1
  %109 = load i8, i8* %4, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 12
  br label %112

112:                                              ; preds = %108, %1
  %113 = phi i1 [ false, %1 ], [ %111, %108 ]
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load i32*, i32** %2, align 8
  %117 = call i32 @vlc_interrupt_raise(i32* %116)
  %118 = load i32*, i32** @fds, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @vlc_read_i11e(i32 %120, i8* %4, i32 1)
  %122 = icmp eq i32 %121, -1
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  %125 = load i64, i64* @errno, align 8
  %126 = load i64, i64* @EINTR, align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 @assert(i32 %128)
  store i8 42, i8* %4, align 1
  %130 = load i32*, i32** @fds, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @vlc_sendto_i11e(i32 %132, i8* %4, i32 1, i32 0, i32* null, i32 0)
  %134 = icmp eq i32 %133, 1
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  store i8 0, i8* %4, align 1
  %137 = load i32*, i32** @fds, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @vlc_recvfrom_i11e(i32 %139, i8* %4, i32 1, i32 0, i32* null, i32 0)
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %146

142:                                              ; preds = %112
  %143 = load i8, i8* %4, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 42
  br label %146

146:                                              ; preds = %142, %112
  %147 = phi i1 [ false, %112 ], [ %145, %142 ]
  %148 = zext i1 %147 to i32
  %149 = call i32 @assert(i32 %148)
  %150 = load i32*, i32** %2, align 8
  %151 = call i32 @vlc_interrupt_raise(i32* %150)
  %152 = load i32*, i32** @fds, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @vlc_recvfrom_i11e(i32 %154, i8* %4, i32 1, i32 0, i32* null, i32 0)
  %156 = icmp eq i32 %155, -1
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  %159 = load i64, i64* @errno, align 8
  %160 = load i64, i64* @EINTR, align 8
  %161 = icmp eq i64 %159, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 @assert(i32 %162)
  %164 = load i32*, i32** %2, align 8
  %165 = call i32 @vlc_interrupt_raise(i32* %164)
  %166 = load i32*, i32** @fds, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  %168 = load i32, i32* %167, align 4
  %169 = call i64 @vlc_accept_i11e(i32 %168, i32* null, i32* null, i32 1)
  %170 = icmp slt i64 %169, 0
  %171 = zext i1 %170 to i32
  %172 = call i32 @assert(i32 %171)
  %173 = call i32* @vlc_interrupt_set(i32* null)
  store i32* %173, i32** %3, align 8
  %174 = load i32*, i32** %3, align 8
  %175 = load i32*, i32** %2, align 8
  %176 = icmp eq i32* %174, %175
  %177 = zext i1 %176 to i32
  %178 = call i32 @assert(i32 %177)
  %179 = call i32* @vlc_interrupt_set(i32* null)
  store i32* %179, i32** %3, align 8
  %180 = load i32*, i32** %3, align 8
  %181 = icmp eq i32* %180, null
  %182 = zext i1 %181 to i32
  %183 = call i32 @assert(i32 %182)
  ret void
}

declare dso_local i32* @vlc_interrupt_set(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_interrupt_register(i32, i32*) #1

declare dso_local i32 @vlc_interrupt_raise(i32*) #1

declare dso_local i32 @vlc_sem_wait(i32*) #1

declare dso_local i32 @vlc_interrupt_unregister(...) #1

declare dso_local i32 @vlc_sem_post(i32*) #1

declare dso_local i64 @vlc_sem_wait_i11e(i32*) #1

declare dso_local i64 @vlc_mwait_i11e(i32) #1

declare dso_local i32 @vlc_poll_i11e(i32*, i32, i32) #1

declare dso_local i32 @vlc_write_i11e(i32, i8*, i32) #1

declare dso_local i32 @vlc_read_i11e(i32, i8*, i32) #1

declare dso_local i32 @vlc_sendto_i11e(i32, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @vlc_recvfrom_i11e(i32, i8*, i32, i32, i32*, i32) #1

declare dso_local i64 @vlc_accept_i11e(i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
