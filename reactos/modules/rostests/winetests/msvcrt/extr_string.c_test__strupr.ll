; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__strupr.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__strupr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test__strupr.str = private unnamed_addr constant [4 x i8] c"123\00", align 1
@MEM_COMMIT = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"VirtualAlloc failed\0A\00", align 1
@PAGE_READONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"VirtualProtect failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"aBc\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"_strupr returned %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ABC\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"str2 = %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"123\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"mem = %s\0A\00", align 1
@LC_ALL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"english\00", align 1
@MEM_RELEASE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"English locale _strupr tests\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__strupr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__strupr() #0 {
  %1 = alloca [4 x i8], align 1
  %2 = alloca [4 x i8], align 1
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = bitcast [4 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.test__strupr.str, i32 0, i32 0), i64 4, i1 false)
  %7 = load i32, i32* @MEM_COMMIT, align 4
  %8 = load i32, i32* @PAGE_READWRITE, align 4
  %9 = call i8* @VirtualAlloc(i32* null, i32 4, i32 %7, i32 %8)
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %16 = call i32 @memcpy(i8* %14, i8* %15, i32 4)
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* @PAGE_READONLY, align 4
  %19 = call i32 @VirtualProtect(i8* %17, i32 4, i32 %18, i32* %5)
  %20 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %21 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %22 = call i32 @strcpy(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %23 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %24 = call i8* @_strupr(i8* %23)
  store i8* %24, i8** %4, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %27 = icmp eq i8* %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %29)
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %36)
  %38 = load i8*, i8** %3, align 8
  %39 = call i8* @_strupr(i8* %38)
  store i8* %39, i8** %4, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = icmp eq i8* %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* @LC_ALL, align 4
  %54 = call i32 @setlocale(i32 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %0
  %57 = load i8*, i8** %3, align 8
  %58 = load i32, i32* @MEM_RELEASE, align 4
  %59 = call i32 @VirtualFree(i8* %57, i32 4, i32 %58)
  %60 = call i32 @win_skip(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %84

61:                                               ; preds = %0
  %62 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %63 = call i32 @strcpy(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %64 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %65 = call i8* @_strupr(i8* %64)
  store i8* %65, i8** %4, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %68 = icmp eq i8* %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i8*, i8** %4, align 8
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %70)
  %72 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %77)
  %79 = load i32, i32* @LC_ALL, align 4
  %80 = call i32 @setlocale(i32 %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %81 = load i8*, i8** %3, align 8
  %82 = load i32, i32* @MEM_RELEASE, align 4
  %83 = call i32 @VirtualFree(i8* %81, i32 4, i32 %82)
  br label %84

84:                                               ; preds = %61, %56
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @VirtualAlloc(i32*, i32, i32, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @VirtualProtect(i8*, i32, i32, i32*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i8* @_strupr(i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @setlocale(i32, i8*) #2

declare dso_local i32 @VirtualFree(i8*, i32, i32) #2

declare dso_local i32 @win_skip(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
