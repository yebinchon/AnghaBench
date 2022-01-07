; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-ndisc-rs.c_send_ra.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-ndisc-rs.c_send_ra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.send_ra.advertisement = private unnamed_addr constant [104 x i32] [i32 134, i32 0, i32 222, i32 131, i32 64, i32 192, i32 0, i32 180, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 4, i32 64, i32 192, i32 0, i32 0, i32 1, i32 244, i32 0, i32 0, i32 1, i32 184, i32 0, i32 0, i32 0, i32 0, i32 32, i32 1, i32 13, i32 184, i32 222, i32 173, i32 190, i32 239, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 25, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 60, i32 32, i32 1, i32 13, i32 184, i32 222, i32 173, i32 190, i32 239, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 31, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 60, i32 3, i32 108, i32 97, i32 98, i32 5, i32 105, i32 110, i32 116, i32 114, i32 97, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 120, i32 43, i32 203, i32 179, i32 109, i32 83], align 16
@test_fd = common dso_local global i32* null, align 8
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"  sent RA with flag 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @send_ra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_ra(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [104 x i32], align 16
  store i32 %0, i32* %2, align 4
  %4 = bitcast [104 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([104 x i32]* @__const.send_ra.advertisement to i8*), i64 416, i1 false)
  %5 = load i32, i32* %2, align 4
  %6 = getelementptr inbounds [104 x i32], [104 x i32]* %3, i64 0, i64 5
  store i32 %5, i32* %6, align 4
  %7 = load i32*, i32** @test_fd, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds [104 x i32], [104 x i32]* %3, i64 0, i64 0
  %11 = call i32 @write(i32 %9, i32* %10, i32 416)
  %12 = sext i32 %11 to i64
  %13 = icmp eq i64 %12, 416
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert_se(i32 %14)
  %16 = load i64, i64* @verbose, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %18, %1
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert_se(i32) #2

declare dso_local i32 @write(i32, i32*, i32) #2

declare dso_local i32 @printf(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
