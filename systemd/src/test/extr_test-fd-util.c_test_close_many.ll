; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-fd-util.c_test_close_many.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-fd-util.c_test_close_many.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_close_many.name0 = private unnamed_addr constant [28 x i8] c"/tmp/test-close-many.XXXXXX\00", align 16
@__const.test_close_many.name1 = private unnamed_addr constant [28 x i8] c"/tmp/test-close-many.XXXXXX\00", align 16
@__const.test_close_many.name2 = private unnamed_addr constant [28 x i8] c"/tmp/test-close-many.XXXXXX\00", align 16
@F_GETFD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_close_many to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_close_many() #0 {
  %1 = alloca [3 x i32], align 4
  %2 = alloca [28 x i8], align 16
  %3 = alloca [28 x i8], align 16
  %4 = alloca [28 x i8], align 16
  %5 = bitcast [28 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 getelementptr inbounds ([28 x i8], [28 x i8]* @__const.test_close_many.name0, i32 0, i32 0), i64 28, i1 false)
  %6 = bitcast [28 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 getelementptr inbounds ([28 x i8], [28 x i8]* @__const.test_close_many.name1, i32 0, i32 0), i64 28, i1 false)
  %7 = bitcast [28 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 getelementptr inbounds ([28 x i8], [28 x i8]* @__const.test_close_many.name2, i32 0, i32 0), i64 28, i1 false)
  %8 = getelementptr inbounds [28 x i8], [28 x i8]* %2, i64 0, i64 0
  %9 = call i32 @mkostemp_safe(i8* %8)
  %10 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds [28 x i8], [28 x i8]* %3, i64 0, i64 0
  %12 = call i32 @mkostemp_safe(i8* %11)
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 1
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds [28 x i8], [28 x i8]* %4, i64 0, i64 0
  %15 = call i32 @mkostemp_safe(i8* %14)
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 2
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %18 = call i32 @close_many(i32* %17, i32 2)
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @F_GETFD, align 4
  %22 = call i32 @fcntl(i32 %20, i32 %21)
  %23 = icmp eq i32 %22, -1
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert_se(i32 %24)
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @F_GETFD, align 4
  %29 = call i32 @fcntl(i32 %27, i32 %28)
  %30 = icmp eq i32 %29, -1
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert_se(i32 %31)
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @F_GETFD, align 4
  %36 = call i32 @fcntl(i32 %34, i32 %35)
  %37 = icmp sge i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert_se(i32 %38)
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @safe_close(i32 %41)
  %43 = getelementptr inbounds [28 x i8], [28 x i8]* %2, i64 0, i64 0
  %44 = call i32 @unlink(i8* %43)
  %45 = getelementptr inbounds [28 x i8], [28 x i8]* %3, i64 0, i64 0
  %46 = call i32 @unlink(i8* %45)
  %47 = getelementptr inbounds [28 x i8], [28 x i8]* %4, i64 0, i64 0
  %48 = call i32 @unlink(i8* %47)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mkostemp_safe(i8*) #2

declare dso_local i32 @close_many(i32*, i32) #2

declare dso_local i32 @assert_se(i32) #2

declare dso_local i32 @fcntl(i32, i32) #2

declare dso_local i32 @safe_close(i32) #2

declare dso_local i32 @unlink(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
