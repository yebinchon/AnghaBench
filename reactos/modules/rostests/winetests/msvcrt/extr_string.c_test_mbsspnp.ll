; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_mbsspnp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_mbsspnp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_mbsspnp.str1 = private unnamed_addr constant [9 x i8] c"cabernet\00", align 1
@__const.test_mbsspnp.str2 = private unnamed_addr constant [7 x i8] c"shiraz\00", align 1
@__const.test_mbsspnp.set = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@__const.test_mbsspnp.full = private unnamed_addr constant [8 x i8] c"abcenrt\00", align 1
@__const.test_mbsspnp.mbstr = private unnamed_addr constant [15 x i8] c" 2019\94N6\8C\8E29\93\FA\00", align 1
@__const.test_mbsspnp.mbset1 = private unnamed_addr constant [14 x i8] c"0123456789 \94N\00", align 1
@__const.test_mbsspnp.mbset2 = private unnamed_addr constant [6 x i8] c" \94N\8C\8E\00", align 1
@.str = private unnamed_addr constant [33 x i8] c"_mbsspnp returns %c should be e\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"_mbsspnp returns %c should be s\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"_mbsspnp returns %c should be c\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"_mbsspnp returns %p should be NULL\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"_mbsspnp returns %p should be %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_mbsspnp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_mbsspnp() #0 {
  %1 = alloca [9 x i8], align 1
  %2 = alloca [7 x i8], align 1
  %3 = alloca [4 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [8 x i8], align 1
  %6 = alloca [15 x i8], align 1
  %7 = alloca [14 x i8], align 1
  %8 = alloca [6 x i8], align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = bitcast [9 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.test_mbsspnp.str1, i32 0, i32 0), i64 9, i1 false)
  %12 = bitcast [7 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.test_mbsspnp.str2, i32 0, i32 0), i64 7, i1 false)
  %13 = bitcast [4 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.test_mbsspnp.set, i32 0, i32 0), i64 4, i1 false)
  %14 = bitcast [1 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %14, i8 0, i64 1, i1 false)
  %15 = bitcast [8 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.test_mbsspnp.full, i32 0, i32 0), i64 8, i1 false)
  %16 = bitcast [15 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([15 x i8], [15 x i8]* @__const.test_mbsspnp.mbstr, i32 0, i32 0), i64 15, i1 false)
  %17 = bitcast [14 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @__const.test_mbsspnp.mbset1, i32 0, i32 0), i64 14, i1 false)
  %18 = bitcast [6 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.test_mbsspnp.mbset2, i32 0, i32 0), i64 6, i1 false)
  %19 = call i32 (...) @_getmbcp()
  store i32 %19, i32* %10, align 4
  %20 = getelementptr inbounds [9 x i8], [9 x i8]* %1, i64 0, i64 0
  %21 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %22 = call i8* @_mbsspnp(i8* %20, i8* %21)
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 101
  %28 = zext i1 %27 to i32
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i64 0, i64 0
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %36 = call i8* @_mbsspnp(i8* %34, i8* %35)
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 115
  %42 = zext i1 %41 to i32
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = getelementptr inbounds [9 x i8], [9 x i8]* %1, i64 0, i64 0
  %49 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  %50 = call i8* @_mbsspnp(i8* %48, i8* %49)
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp eq i32 %54, 99
  %56 = zext i1 %55 to i32
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = getelementptr inbounds [9 x i8], [9 x i8]* %1, i64 0, i64 0
  %63 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %64 = call i8* @_mbsspnp(i8* %62, i8* %63)
  store i8* %64, i8** %9, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = icmp eq i8* %65, null
  %67 = zext i1 %66 to i32
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  %70 = call i32 @_setmbcp(i32 932)
  %71 = getelementptr inbounds [15 x i8], [15 x i8]* %6, i64 0, i64 0
  %72 = getelementptr inbounds [14 x i8], [14 x i8]* %7, i64 0, i64 0
  %73 = call i8* @_mbsspnp(i8* %71, i8* %72)
  store i8* %73, i8** %9, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr inbounds [15 x i8], [15 x i8]* %6, i64 0, i64 0
  %76 = getelementptr inbounds i8, i8* %75, i64 8
  %77 = icmp eq i8* %74, %76
  %78 = zext i1 %77 to i32
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds [15 x i8], [15 x i8]* %6, i64 0, i64 0
  %81 = getelementptr inbounds i8, i8* %80, i64 8
  %82 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %79, i8* %81)
  %83 = getelementptr inbounds [15 x i8], [15 x i8]* %6, i64 0, i64 0
  %84 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %85 = call i8* @_mbsspnp(i8* %83, i8* %84)
  store i8* %85, i8** %9, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = getelementptr inbounds [15 x i8], [15 x i8]* %6, i64 0, i64 0
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = icmp eq i8* %86, %88
  %90 = zext i1 %89 to i32
  %91 = load i8*, i8** %9, align 8
  %92 = getelementptr inbounds [15 x i8], [15 x i8]* %6, i64 0, i64 0
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %91, i8* %93)
  %95 = getelementptr inbounds [15 x i8], [15 x i8]* %6, i64 0, i64 0
  %96 = getelementptr inbounds i8, i8* %95, i64 8
  %97 = getelementptr inbounds [14 x i8], [14 x i8]* %7, i64 0, i64 0
  %98 = call i8* @_mbsspnp(i8* %96, i8* %97)
  store i8* %98, i8** %9, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = getelementptr inbounds [15 x i8], [15 x i8]* %6, i64 0, i64 0
  %101 = getelementptr inbounds i8, i8* %100, i64 8
  %102 = icmp eq i8* %99, %101
  %103 = zext i1 %102 to i32
  %104 = load i8*, i8** %9, align 8
  %105 = getelementptr inbounds [15 x i8], [15 x i8]* %6, i64 0, i64 0
  %106 = getelementptr inbounds i8, i8* %105, i64 8
  %107 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %104, i8* %106)
  %108 = getelementptr inbounds [15 x i8], [15 x i8]* %6, i64 0, i64 0
  %109 = getelementptr inbounds i8, i8* %108, i64 8
  %110 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %111 = call i8* @_mbsspnp(i8* %109, i8* %110)
  store i8* %111, i8** %9, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = getelementptr inbounds [15 x i8], [15 x i8]* %6, i64 0, i64 0
  %114 = getelementptr inbounds i8, i8* %113, i64 10
  %115 = icmp eq i8* %112, %114
  %116 = zext i1 %115 to i32
  %117 = load i8*, i8** %9, align 8
  %118 = getelementptr inbounds [15 x i8], [15 x i8]* %6, i64 0, i64 0
  %119 = getelementptr inbounds i8, i8* %118, i64 10
  %120 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %117, i8* %119)
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @_setmbcp(i32 %121)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @_getmbcp(...) #2

declare dso_local i8* @_mbsspnp(i8*, i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @_setmbcp(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
