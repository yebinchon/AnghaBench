; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-string-util.c_test_skip_leading_chars.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-string-util.c_test_skip_leading_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_skip_leading_chars.input1 = private unnamed_addr constant [12 x i8] c" \0A \0D k \0A \0D \00", align 1
@__const.test_skip_leading_chars.input2 = private unnamed_addr constant [26 x i8] c"kkkkthiskkkiskkkaktestkkk\00", align 16
@__const.test_skip_leading_chars.input3 = private unnamed_addr constant [7 x i8] c"abcdef\00", align 1
@WHITESPACE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"k \0A \0D \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"thiskkkiskkkaktestkkk\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"tk\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"hiskkkiskkkaktestkkk\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"abcdef\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"bcaef\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_skip_leading_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_skip_leading_chars() #0 {
  %1 = alloca [12 x i8], align 1
  %2 = alloca [26 x i8], align 16
  %3 = alloca [7 x i8], align 1
  %4 = bitcast [12 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.test_skip_leading_chars.input1, i32 0, i32 0), i64 12, i1 false)
  %5 = bitcast [26 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 getelementptr inbounds ([26 x i8], [26 x i8]* @__const.test_skip_leading_chars.input2, i32 0, i32 0), i64 26, i1 false)
  %6 = bitcast [7 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.test_skip_leading_chars.input3, i32 0, i32 0), i64 7, i1 false)
  %7 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %8 = load i8*, i8** @WHITESPACE, align 8
  %9 = call i32 @skip_leading_chars(i8* %7, i8* %8)
  %10 = call i32 @streq(i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @assert_se(i32 %10)
  %12 = getelementptr inbounds [26 x i8], [26 x i8]* %2, i64 0, i64 0
  %13 = call i32 @skip_leading_chars(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @streq(i32 %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 @assert_se(i32 %14)
  %16 = getelementptr inbounds [26 x i8], [26 x i8]* %2, i64 0, i64 0
  %17 = call i32 @skip_leading_chars(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %18 = call i32 @streq(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %19 = call i32 @assert_se(i32 %18)
  %20 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  %21 = load i8*, i8** @WHITESPACE, align 8
  %22 = call i32 @skip_leading_chars(i8* %20, i8* %21)
  %23 = call i32 @streq(i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %24 = call i32 @assert_se(i32 %23)
  %25 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  %26 = call i32 @skip_leading_chars(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %27 = call i32 @streq(i32 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %28 = call i32 @assert_se(i32 %27)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert_se(i32) #2

declare dso_local i32 @streq(i32, i8*) #2

declare dso_local i32 @skip_leading_chars(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
