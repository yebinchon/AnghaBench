; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-fileio.c_test_search_and_fopen.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-fileio.c_test_search_and_fopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"/tmp/foo/bar\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@__const.test_search_and_fopen.dirs = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@__const.test_search_and_fopen.name = private unnamed_addr constant [34 x i8] c"/tmp/test-search_and_fopen.XXXXXX\00", align 16
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"/a/file/which/does/not/exist/i/guess\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"afilewhichdoesnotexistiguess\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_search_and_fopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_search_and_fopen() #0 {
  %1 = alloca [3 x i8*], align 16
  %2 = alloca [34 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = bitcast [3 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([3 x i8*]* @__const.test_search_and_fopen.dirs to i8*), i64 24, i1 false)
  %7 = bitcast [34 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 getelementptr inbounds ([34 x i8], [34 x i8]* @__const.test_search_and_fopen.name, i32 0, i32 0), i64 34, i1 false)
  %8 = getelementptr inbounds [34 x i8], [34 x i8]* %2, i64 0, i64 0
  %9 = call i32 @mkostemp_safe(i8* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp sge i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert_se(i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @close(i32 %14)
  %16 = getelementptr inbounds [34 x i8], [34 x i8]* %2, i64 0, i64 0
  %17 = call i8* @basename(i8* %16)
  %18 = getelementptr inbounds [3 x i8*], [3 x i8*]* %1, i64 0, i64 0
  %19 = call i32 @search_and_fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* null, i8** %18, i32** %5)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp sge i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert_se(i32 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @fclose(i32* %24)
  %26 = getelementptr inbounds [34 x i8], [34 x i8]* %2, i64 0, i64 0
  %27 = getelementptr inbounds [3 x i8*], [3 x i8*]* %1, i64 0, i64 0
  %28 = call i32 @search_and_fopen(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* null, i8** %27, i32** %5)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp sge i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert_se(i32 %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @fclose(i32* %33)
  %35 = getelementptr inbounds [34 x i8], [34 x i8]* %2, i64 0, i64 0
  %36 = call i8* @basename(i8* %35)
  %37 = getelementptr inbounds [3 x i8*], [3 x i8*]* %1, i64 0, i64 0
  %38 = call i32 @search_and_fopen(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %37, i32** %5)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp sge i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert_se(i32 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @fclose(i32* %43)
  %45 = getelementptr inbounds [3 x i8*], [3 x i8*]* %1, i64 0, i64 0
  %46 = call i32 @search_and_fopen(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* null, i8** %45, i32** %5)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert_se(i32 %49)
  %51 = getelementptr inbounds [3 x i8*], [3 x i8*]* %1, i64 0, i64 0
  %52 = call i32 @search_and_fopen(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* null, i8** %51, i32** %5)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert_se(i32 %55)
  %57 = getelementptr inbounds [34 x i8], [34 x i8]* %2, i64 0, i64 0
  %58 = call i32 @unlink(i8* %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert_se(i32 %61)
  %63 = getelementptr inbounds [34 x i8], [34 x i8]* %2, i64 0, i64 0
  %64 = call i8* @basename(i8* %63)
  %65 = getelementptr inbounds [3 x i8*], [3 x i8*]* %1, i64 0, i64 0
  %66 = call i32 @search_and_fopen(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* null, i8** %65, i32** %5)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert_se(i32 %69)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mkostemp_safe(i8*) #2

declare dso_local i32 @assert_se(i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @search_and_fopen(i8*, i8*, i8*, i8**, i32**) #2

declare dso_local i8* @basename(i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @unlink(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
