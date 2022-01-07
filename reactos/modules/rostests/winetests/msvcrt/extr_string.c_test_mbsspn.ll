; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_mbsspn.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_mbsspn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_mbsspn.str1 = private unnamed_addr constant [9 x i8] c"cabernet\00", align 1
@__const.test_mbsspn.str2 = private unnamed_addr constant [7 x i8] c"shiraz\00", align 1
@__const.test_mbsspn.set = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@__const.test_mbsspn.mbstr = private unnamed_addr constant [15 x i8] c" 2019\94N6\8C\8E29\93\FA\00", align 1
@__const.test_mbsspn.mbset1 = private unnamed_addr constant [14 x i8] c"0123456789 \94N\00", align 1
@__const.test_mbsspn.mbset2 = private unnamed_addr constant [6 x i8] c" \94N\8C\8E\00", align 1
@__const.test_mbsspn.mbset3 = private unnamed_addr constant [2 x i8] c"\8E\00", align 1
@.str = private unnamed_addr constant [32 x i8] c"_mbsspn returns %d should be 3\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"_mbsspn returns %d should be 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"_mbsspn returns %d should be 8\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"_mbsspn returns %d should be 1\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"_mbsspn returns %d should be 2\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"_mbsspn returns %d should be 14\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_mbsspn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_mbsspn() #0 {
  %1 = alloca [9 x i8], align 1
  %2 = alloca [7 x i8], align 1
  %3 = alloca [4 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [15 x i8], align 1
  %6 = alloca [14 x i8], align 1
  %7 = alloca [6 x i8], align 1
  %8 = alloca [2 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = bitcast [9 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.test_mbsspn.str1, i32 0, i32 0), i64 9, i1 false)
  %12 = bitcast [7 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.test_mbsspn.str2, i32 0, i32 0), i64 7, i1 false)
  %13 = bitcast [4 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.test_mbsspn.set, i32 0, i32 0), i64 4, i1 false)
  %14 = bitcast [1 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %14, i8 0, i64 1, i1 false)
  %15 = bitcast [15 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([15 x i8], [15 x i8]* @__const.test_mbsspn.mbstr, i32 0, i32 0), i64 15, i1 false)
  %16 = bitcast [14 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @__const.test_mbsspn.mbset1, i32 0, i32 0), i64 14, i1 false)
  %17 = bitcast [6 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.test_mbsspn.mbset2, i32 0, i32 0), i64 6, i1 false)
  %18 = bitcast [2 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.test_mbsspn.mbset3, i32 0, i32 0), i64 2, i1 false)
  %19 = call i32 (...) @_getmbcp()
  store i32 %19, i32* %10, align 4
  %20 = getelementptr inbounds [9 x i8], [9 x i8]* %1, i64 0, i64 0
  %21 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %22 = call i32 @_mbsspn(i8* %20, i8* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 3
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i64 0, i64 0
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %30 = call i32 @_mbsspn(i8* %28, i8* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = getelementptr inbounds [9 x i8], [9 x i8]* %1, i64 0, i64 0
  %37 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  %38 = call i32 @_mbsspn(i8* %36, i8* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = call i32 @_setmbcp(i32 932)
  %45 = getelementptr inbounds [15 x i8], [15 x i8]* %5, i64 0, i64 0
  %46 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 0
  %47 = call i32 @_mbsspn(i8* %45, i8* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 8
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = getelementptr inbounds [15 x i8], [15 x i8]* %5, i64 0, i64 0
  %54 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %55 = call i32 @_mbsspn(i8* %53, i8* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 1
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @ok(i32 %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = getelementptr inbounds [15 x i8], [15 x i8]* %5, i64 0, i64 0
  %62 = getelementptr inbounds i8, i8* %61, i64 8
  %63 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 0
  %64 = call i32 @_mbsspn(i8* %62, i8* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @ok(i32 %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = getelementptr inbounds [15 x i8], [15 x i8]* %5, i64 0, i64 0
  %71 = getelementptr inbounds i8, i8* %70, i64 8
  %72 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %73 = call i32 @_mbsspn(i8* %71, i8* %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp eq i32 %74, 2
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  %79 = getelementptr inbounds [15 x i8], [15 x i8]* %5, i64 0, i64 0
  %80 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %81 = call i32 @_mbsspn(i8* %79, i8* %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp eq i32 %82, 14
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @ok(i32 %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @_setmbcp(i32 %87)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @_getmbcp(...) #2

declare dso_local i32 @_mbsspn(i8*, i8*) #2

declare dso_local i32 @ok(i32, i8*, i32) #2

declare dso_local i32 @_setmbcp(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
