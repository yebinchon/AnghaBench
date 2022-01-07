; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-string-util.c_test_delete_trailing_slashes.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-string-util.c_test_delete_trailing_slashes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_delete_trailing_slashes.s1 = private unnamed_addr constant [9 x i8] c"foobar//\00", align 1
@__const.test_delete_trailing_slashes.s2 = private unnamed_addr constant [8 x i8] c"foobar/\00", align 1
@__const.test_delete_trailing_slashes.s3 = private unnamed_addr constant [7 x i8] c"foobar\00", align 1
@.str = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"foobar//\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"foobar\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_delete_trailing_slashes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_delete_trailing_slashes() #0 {
  %1 = alloca [9 x i8], align 1
  %2 = alloca [8 x i8], align 1
  %3 = alloca [7 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = bitcast [9 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.test_delete_trailing_slashes.s1, i32 0, i32 0), i64 9, i1 false)
  %6 = bitcast [8 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.test_delete_trailing_slashes.s2, i32 0, i32 0), i64 8, i1 false)
  %7 = bitcast [7 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.test_delete_trailing_slashes.s3, i32 0, i32 0), i64 7, i1 false)
  %8 = bitcast [1 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %8, i8 0, i64 1, i1 false)
  %9 = getelementptr inbounds [9 x i8], [9 x i8]* %1, i64 0, i64 0
  %10 = call i32 @delete_trailing_chars(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @streq(i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @assert_se(i32 %11)
  %13 = getelementptr inbounds [9 x i8], [9 x i8]* %1, i64 0, i64 0
  %14 = call i32 @delete_trailing_chars(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 @streq(i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %16 = call i32 @assert_se(i32 %15)
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  %18 = call i32 @delete_trailing_chars(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @streq(i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %20 = call i32 @assert_se(i32 %19)
  %21 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  %22 = call i32 @delete_trailing_chars(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 @streq(i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %24 = call i32 @assert_se(i32 %23)
  %25 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  %26 = call i32 @delete_trailing_chars(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %27 = call i32 @streq(i32 %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %28 = call i32 @assert_se(i32 %27)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert_se(i32) #2

declare dso_local i32 @streq(i32, i8*) #2

declare dso_local i32 @delete_trailing_chars(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
