; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-fd-util.c_test_close_nointr.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-fd-util.c_test_close_nointr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_close_nointr.name = private unnamed_addr constant [35 x i8] c"/tmp/test-test-close_nointr.XXXXXX\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_close_nointr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_close_nointr() #0 {
  %1 = alloca [35 x i8], align 16
  %2 = alloca i32, align 4
  %3 = bitcast [35 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 getelementptr inbounds ([35 x i8], [35 x i8]* @__const.test_close_nointr.name, i32 0, i32 0), i64 35, i1 false)
  %4 = getelementptr inbounds [35 x i8], [35 x i8]* %1, i64 0, i64 0
  %5 = call i32 @mkostemp_safe(i8* %4)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp sge i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert_se(i32 %8)
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @close_nointr(i32 %10)
  %12 = icmp sge i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert_se(i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = call i64 @close_nointr(i32 %15)
  %17 = icmp slt i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert_se(i32 %18)
  %20 = getelementptr inbounds [35 x i8], [35 x i8]* %1, i64 0, i64 0
  %21 = call i32 @unlink(i8* %20)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mkostemp_safe(i8*) #2

declare dso_local i32 @assert_se(i32) #2

declare dso_local i64 @close_nointr(i32) #2

declare dso_local i32 @unlink(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
