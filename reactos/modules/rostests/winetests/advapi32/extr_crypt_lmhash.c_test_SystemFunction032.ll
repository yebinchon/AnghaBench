; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt_lmhash.c_test_SystemFunction032.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt_lmhash.c_test_SystemFunction032.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ustring = type { i8*, i32, i32 }

@__const.test_SystemFunction032.szKey = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@__const.test_SystemFunction032.szData = private unnamed_addr constant [8 x i8] c"bar\00\00\00\00\00", align 1
@__const.test_SystemFunction032.expected = private unnamed_addr constant [4 x i8] c"(\B9\F8\E1", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"function failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"wrong result\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SystemFunction032 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SystemFunction032() #0 {
  %1 = alloca %struct.ustring, align 8
  %2 = alloca %struct.ustring, align 8
  %3 = alloca [4 x i8], align 1
  %4 = alloca [8 x i8], align 1
  %5 = alloca [4 x i8], align 1
  %6 = alloca i32, align 4
  %7 = bitcast [4 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.test_SystemFunction032.szKey, i32 0, i32 0), i64 4, i1 false)
  %8 = bitcast [8 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.test_SystemFunction032.szData, i32 0, i32 0), i64 8, i1 false)
  %9 = bitcast [4 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.test_SystemFunction032.expected, i32 0, i32 0), i64 4, i1 false)
  %10 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %11 = getelementptr inbounds %struct.ustring, %struct.ustring* %1, i32 0, i32 0
  store i8* %10, i8** %11, align 8
  %12 = getelementptr inbounds %struct.ustring, %struct.ustring* %1, i32 0, i32 1
  store i32 4, i32* %12, align 8
  %13 = getelementptr inbounds %struct.ustring, %struct.ustring* %1, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds %struct.ustring, %struct.ustring* %1, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %17 = getelementptr inbounds %struct.ustring, %struct.ustring* %2, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = getelementptr inbounds %struct.ustring, %struct.ustring* %2, i32 0, i32 1
  store i32 4, i32* %18, align 8
  %19 = getelementptr inbounds %struct.ustring, %struct.ustring* %2, i32 0, i32 2
  store i32 8, i32* %19, align 4
  %20 = call i32 @pSystemFunction032(%struct.ustring* %2, %struct.ustring* %1)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @STATUS_SUCCESS, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %27 = getelementptr inbounds %struct.ustring, %struct.ustring* %2, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds %struct.ustring, %struct.ustring* %2, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @memcmp(i8* %26, i8* %28, i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pSystemFunction032(%struct.ustring*, %struct.ustring*) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i32 @memcmp(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
