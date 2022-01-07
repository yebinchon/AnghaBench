; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-string-util.c_test_delete_trailing_chars.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-string-util.c_test_delete_trailing_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_delete_trailing_chars.input1 = private unnamed_addr constant [12 x i8] c" \0A \0D k \0A \0D \00", align 1
@__const.test_delete_trailing_chars.input2 = private unnamed_addr constant [26 x i8] c"kkkkthiskkkiskkkaktestkkk\00", align 16
@__const.test_delete_trailing_chars.input3 = private unnamed_addr constant [7 x i8] c"abcdef\00", align 1
@WHITESPACE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c" \0A \0D k\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"kt\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"kkkkthiskkkiskkkaktes\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"abcdef\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"fe\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"abcd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_delete_trailing_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_delete_trailing_chars() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [12 x i8], align 1
  %3 = alloca [26 x i8], align 16
  %4 = alloca [7 x i8], align 1
  %5 = bitcast [12 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.test_delete_trailing_chars.input1, i32 0, i32 0), i64 12, i1 false)
  %6 = bitcast [26 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 getelementptr inbounds ([26 x i8], [26 x i8]* @__const.test_delete_trailing_chars.input2, i32 0, i32 0), i64 26, i1 false)
  %7 = bitcast [7 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.test_delete_trailing_chars.input3, i32 0, i32 0), i64 7, i1 false)
  %8 = getelementptr inbounds [12 x i8], [12 x i8]* %2, i64 0, i64 0
  %9 = load i8*, i8** @WHITESPACE, align 8
  %10 = call i8* @delete_trailing_chars(i8* %8, i8* %9)
  store i8* %10, i8** %1, align 8
  %11 = load i8*, i8** %1, align 8
  %12 = call i32 @streq(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @assert_se(i32 %12)
  %14 = load i8*, i8** %1, align 8
  %15 = getelementptr inbounds [12 x i8], [12 x i8]* %2, i64 0, i64 0
  %16 = icmp eq i8* %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert_se(i32 %17)
  %19 = getelementptr inbounds [26 x i8], [26 x i8]* %3, i64 0, i64 0
  %20 = call i8* @delete_trailing_chars(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %20, i8** %1, align 8
  %21 = load i8*, i8** %1, align 8
  %22 = call i32 @streq(i8* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 @assert_se(i32 %22)
  %24 = load i8*, i8** %1, align 8
  %25 = getelementptr inbounds [26 x i8], [26 x i8]* %3, i64 0, i64 0
  %26 = icmp eq i8* %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert_se(i32 %27)
  %29 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 0
  %30 = load i8*, i8** @WHITESPACE, align 8
  %31 = call i8* @delete_trailing_chars(i8* %29, i8* %30)
  store i8* %31, i8** %1, align 8
  %32 = load i8*, i8** %1, align 8
  %33 = call i32 @streq(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %34 = call i32 @assert_se(i32 %33)
  %35 = load i8*, i8** %1, align 8
  %36 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 0
  %37 = icmp eq i8* %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert_se(i32 %38)
  %40 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 0
  %41 = call i8* @delete_trailing_chars(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i8* %41, i8** %1, align 8
  %42 = load i8*, i8** %1, align 8
  %43 = call i32 @streq(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %44 = call i32 @assert_se(i32 %43)
  %45 = load i8*, i8** %1, align 8
  %46 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 0
  %47 = icmp eq i8* %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert_se(i32 %48)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @delete_trailing_chars(i8*, i8*) #2

declare dso_local i32 @assert_se(i32) #2

declare dso_local i32 @streq(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
