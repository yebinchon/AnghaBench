; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-async.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-async.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.name = private unnamed_addr constant [36 x i8] c"/tmp/test-asynchronous_close.XXXXXX\00", align 16
@async_func = common dso_local global i32 0, align 4
@F_GETFD = common dso_local global i32 0, align 4
@test_async = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [36 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = bitcast [36 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 getelementptr inbounds ([36 x i8], [36 x i8]* @__const.main.name, i32 0, i32 0), i64 36, i1 false)
  %9 = getelementptr inbounds [36 x i8], [36 x i8]* %7, i64 0, i64 0
  %10 = call i32 @mkostemp_safe(i8* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert_se(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @asynchronous_close(i32 %15)
  %17 = load i32, i32* @async_func, align 4
  %18 = call i64 @asynchronous_job(i32 %17, i32* null)
  %19 = icmp sge i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert_se(i32 %20)
  %22 = call i64 @asynchronous_sync(i32* null)
  %23 = icmp sge i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert_se(i32 %24)
  %26 = call i32 @sleep(i32 1)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @F_GETFD, align 4
  %29 = call i32 @fcntl(i32 %27, i32 %28)
  %30 = icmp eq i32 %29, -1
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert_se(i32 %31)
  %33 = load i32, i32* @test_async, align 4
  %34 = call i32 @assert_se(i32 %33)
  %35 = getelementptr inbounds [36 x i8], [36 x i8]* %7, i64 0, i64 0
  %36 = call i32 @unlink(i8* %35)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mkostemp_safe(i8*) #2

declare dso_local i32 @assert_se(i32) #2

declare dso_local i32 @asynchronous_close(i32) #2

declare dso_local i64 @asynchronous_job(i32, i32*) #2

declare dso_local i64 @asynchronous_sync(i32*) #2

declare dso_local i32 @sleep(i32) #2

declare dso_local i32 @fcntl(i32, i32) #2

declare dso_local i32 @unlink(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
