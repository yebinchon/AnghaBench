; ModuleID = '/home/carl/AnghaBench/scrcpy/app/tests/extr_test_strutil.c_test_xstrjoin_truncated_in_token.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/tests/extr_test_strutil.c_test_xstrjoin_truncated_in_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"fghi\00", align 1
@__const.test_xstrjoin_truncated_in_token.tokens = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@__const.test_xstrjoin_truncated_in_token.s = private unnamed_addr constant [6 x i8] c"xxxxx\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"abc d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_xstrjoin_truncated_in_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_xstrjoin_truncated_in_token() #0 {
  %1 = alloca [4 x i8*], align 16
  %2 = alloca [6 x i8], align 1
  %3 = alloca i64, align 8
  %4 = bitcast [4 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([4 x i8*]* @__const.test_xstrjoin_truncated_in_token.tokens to i8*), i64 32, i1 false)
  %5 = bitcast [6 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.test_xstrjoin_truncated_in_token.s, i32 0, i32 0), i64 6, i1 false)
  %6 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i64 0, i64 0
  %7 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 0
  %8 = call i64 @xstrjoin(i8* %6, i8** %7, i8 signext 32, i32 6)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = icmp eq i64 %9, 6
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i64 0, i64 5
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i64 0, i64 0
  %20 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @xstrjoin(i8*, i8**, i8 signext, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
