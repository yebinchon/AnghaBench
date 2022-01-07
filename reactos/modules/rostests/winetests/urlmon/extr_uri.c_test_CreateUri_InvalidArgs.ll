; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_uri.c_test_CreateUri_InvalidArgs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_uri.c_test_CreateUri_InvalidArgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_CreateUri_InvalidArgs.invalidW = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@test_CreateUri_InvalidArgs.emptyW = internal constant [1 x i8] zeroinitializer, align 1
@http_urlW = common dso_local global i8* null, align 8
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Error: CreateUri returned 0x%08x, expected 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Error: Expected the IUri to be NULL, but it was %p instead\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Error: CreateUri returned 0x%08x, expected 0x%08x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CreateUri_InvalidArgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CreateUri_InvalidArgs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [8 x i8], align 1
  store i32* inttoptr (i64 3735928559 to i32*), i32** %2, align 8
  %4 = bitcast [8 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.test_CreateUri_InvalidArgs.invalidW, i32 0, i32 0), i64 8, i1 false)
  %5 = load i8*, i8** @http_urlW, align 8
  %6 = call i32 @pCreateUri(i8* %5, i32 0, i32 0, i32** null)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @E_INVALIDARG, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i32*
  %14 = load i32, i32* @E_INVALIDARG, align 4
  %15 = call i32 (i32, i8*, i32*, ...) @ok(i32 %10, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32* %13, i32 %14)
  %16 = call i32 @pCreateUri(i8* null, i32 0, i32 0, i32** %2)
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @E_INVALIDARG, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32*
  %24 = load i32, i32* @E_INVALIDARG, align 4
  %25 = call i32 (i32, i8*, i32*, ...) @ok(i32 %20, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32* %23, i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = icmp eq i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 (i32, i8*, i32*, ...) @ok(i32 %28, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32* %29)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %2, align 8
  %31 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %32 = call i32 @pCreateUri(i8* %31, i32 0, i32 0, i32** %2)
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* @E_INVALIDARG, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i32*
  %40 = load i32, i32* @E_INVALIDARG, align 4
  %41 = call i32 (i32, i8*, i32*, ...) @ok(i32 %36, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32* %39, i32 %40)
  %42 = load i32*, i32** %2, align 8
  %43 = icmp eq i32* %42, null
  %44 = zext i1 %43 to i32
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 (i32, i8*, i32*, ...) @ok(i32 %44, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32* %45)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %2, align 8
  %47 = call i32 @pCreateUri(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_CreateUri_InvalidArgs.emptyW, i64 0, i64 0), i32 0, i32 0, i32** %2)
  store i32 %47, i32* %1, align 4
  %48 = load i32, i32* %1, align 4
  %49 = load i32, i32* @E_INVALIDARG, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i32*
  %55 = load i32, i32* @E_INVALIDARG, align 4
  %56 = call i32 (i32, i8*, i32*, ...) @ok(i32 %51, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32* %54, i32 %55)
  %57 = load i32*, i32** %2, align 8
  %58 = icmp eq i32* %57, null
  %59 = zext i1 %58 to i32
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 (i32, i8*, i32*, ...) @ok(i32 %59, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32* %60)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pCreateUri(i8*, i32, i32, i32**) #2

declare dso_local i32 @ok(i32, i8*, i32*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
