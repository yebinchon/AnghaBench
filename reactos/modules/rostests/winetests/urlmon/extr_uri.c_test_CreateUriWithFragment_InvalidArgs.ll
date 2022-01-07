; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_uri.c_test_CreateUriWithFragment_InvalidArgs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_uri.c_test_CreateUriWithFragment_InvalidArgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_CreateUriWithFragment_InvalidArgs.fragmentW = private unnamed_addr constant [10 x i8] c"#fragment\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Error: CreateUriWithFragment returned 0x%08x, expected 0x%08x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Error: Expected uri to be NULL, but was %p instead.\0A\00", align 1
@http_urlW = common dso_local global i32* null, align 8
@http_url_fragW = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CreateUriWithFragment_InvalidArgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CreateUriWithFragment_InvalidArgs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [10 x i8], align 1
  store i32* inttoptr (i64 3735928559 to i32*), i32** %2, align 8
  %4 = bitcast [10 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.test_CreateUriWithFragment_InvalidArgs.fragmentW, i32 0, i32 0), i64 10, i1 false)
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %6 = call i32 @pCreateUriWithFragment(i32* null, i8* %5, i32 0, i32 0, i32** %2)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @E_INVALIDARG, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i32*
  %14 = load i32, i32* @E_INVALIDARG, align 4
  %15 = call i32 (i32, i8*, i32*, ...) @ok(i32 %10, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32* %13, i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = icmp eq i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 (i32, i8*, i32*, ...) @ok(i32 %18, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32* %19)
  %21 = load i32*, i32** @http_urlW, align 8
  %22 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %23 = call i32 @pCreateUriWithFragment(i32* %21, i8* %22, i32 0, i32 0, i32** null)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @E_INVALIDARG, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i32*
  %31 = load i32, i32* @E_INVALIDARG, align 4
  %32 = call i32 (i32, i8*, i32*, ...) @ok(i32 %27, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32* %30, i32 %31)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %2, align 8
  %33 = load i32*, i32** @http_url_fragW, align 8
  %34 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %35 = call i32 @pCreateUriWithFragment(i32* %33, i8* %34, i32 0, i32 0, i32** %2)
  store i32 %35, i32* %1, align 4
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* @E_INVALIDARG, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i32*
  %43 = load i32, i32* @E_INVALIDARG, align 4
  %44 = call i32 (i32, i8*, i32*, ...) @ok(i32 %39, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32* %42, i32 %43)
  %45 = load i32*, i32** %2, align 8
  %46 = icmp eq i32* %45, null
  %47 = zext i1 %46 to i32
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 (i32, i8*, i32*, ...) @ok(i32 %47, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32* %48)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pCreateUriWithFragment(i32*, i8*, i32, i32, i32**) #2

declare dso_local i32 @ok(i32, i8*, i32*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
