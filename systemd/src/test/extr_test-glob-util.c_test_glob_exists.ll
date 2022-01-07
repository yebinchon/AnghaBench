; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-glob-util.c_test_glob_exists.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-glob-util.c_test_glob_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_glob_exists.name = private unnamed_addr constant [29 x i8] c"/tmp/test-glob_exists.XXXXXX\00", align 16
@.str = private unnamed_addr constant [23 x i8] c"/tmp/test-glob_exists*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_glob_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_glob_exists() #0 {
  %1 = alloca [29 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = bitcast [29 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 getelementptr inbounds ([29 x i8], [29 x i8]* @__const.test_glob_exists.name, i32 0, i32 0), i64 29, i1 false)
  store i32 -1, i32* %2, align 4
  %5 = getelementptr inbounds [29 x i8], [29 x i8]* %1, i64 0, i64 0
  %6 = call i32 @mkostemp_safe(i8* %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp sge i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert_se(i32 %9)
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @close(i32 %11)
  %13 = call i32 @glob_exists(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, 1
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert_se(i32 %16)
  %18 = getelementptr inbounds [29 x i8], [29 x i8]* %1, i64 0, i64 0
  %19 = call i32 @unlink(i8* %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert_se(i32 %22)
  %24 = call i32 @glob_exists(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert_se(i32 %27)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mkostemp_safe(i8*) #2

declare dso_local i32 @assert_se(i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @glob_exists(i8*) #2

declare dso_local i32 @unlink(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
