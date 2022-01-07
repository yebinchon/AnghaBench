; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt_md4.c_test_md4hashfunc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt_md4.c_test_md4hashfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_md4hashfunc.expected = private unnamed_addr constant [16 x i8] c"H|?^+\0Djy2N\CD\BE\9C\15\16o", align 16
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"wrong error code\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"output wrong\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32 (i32, i8*, i8*)*)* @test_md4hashfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_md4hashfunc(i32 (i32, i8*, i8*)* %0) #0 {
  %2 = alloca i32 (i32, i8*, i8*)*, align 8
  %3 = alloca [16 x i8], align 16
  %4 = alloca [16 x i8], align 16
  %5 = alloca [16 x i8], align 16
  %6 = alloca i32, align 4
  store i32 (i32, i8*, i8*)* %0, i32 (i32, i8*, i8*)** %2, align 8
  %7 = bitcast [16 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.test_md4hashfunc.expected, i32 0, i32 0), i64 16, i1 false)
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %9 = call i32 @memset(i8* %8, i32 0, i32 16)
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %11 = call i32 @memset(i8* %10, i32 0, i32 16)
  %12 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** %2, align 8
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %15 = call i32 %12(i32 0, i8* %13, i8* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @STATUS_SUCCESS, align 4
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %23 = call i32 @memcmp(i8* %21, i8* %22, i32 16)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i32 @memcmp(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
