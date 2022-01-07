; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-socket-util.c_test_in_addr_prefix_next_one.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-socket-util.c_test_in_addr_prefix_next_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.in_addr_union = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, i8*)* @test_in_addr_prefix_next_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_in_addr_prefix_next_one(i32 %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %union.in_addr_union, align 4
  %10 = alloca %union.in_addr_union, align 4
  %11 = alloca %union.in_addr_union, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @in_addr_from_string(i32 %12, i8* %13, %union.in_addr_union* %9)
  %15 = icmp sge i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert_se(i32 %16)
  %18 = bitcast %union.in_addr_union* %11 to i8*
  %19 = bitcast %union.in_addr_union* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @in_addr_prefix_next(i32 %20, %union.in_addr_union* %11, i32 %21)
  %23 = icmp sgt i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = icmp eq i32 %24, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert_se(i32 %31)
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %4
  %36 = load i32, i32* %5, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = call i64 @in_addr_from_string(i32 %36, i8* %37, %union.in_addr_union* %10)
  %39 = icmp sge i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert_se(i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @in_addr_equal(i32 %42, %union.in_addr_union* %11, %union.in_addr_union* %10)
  %44 = icmp sgt i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert_se(i32 %45)
  br label %47

47:                                               ; preds = %35, %4
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @in_addr_from_string(i32, i8*, %union.in_addr_union*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @in_addr_prefix_next(i32, %union.in_addr_union*, i32) #1

declare dso_local i64 @in_addr_equal(i32, %union.in_addr_union*, %union.in_addr_union*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
