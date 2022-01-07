; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfolder.c_test_SHSimpleIDListFromPath.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfolder.c_test_SHSimpleIDListFromPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_SHSimpleIDListFromPath.adirW = private unnamed_addr constant [13 x i8] c"C:\\sidlfpdir\00", align 1
@__const.test_SHSimpleIDListFromPath.adirA = private unnamed_addr constant [13 x i8] c"C:\\sidlfpdir\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"CreateDirectory failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"RemoveDirectory failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SHSimpleIDListFromPath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SHSimpleIDListFromPath() #0 {
  %1 = alloca [13 x i8], align 1
  %2 = alloca [13 x i8], align 1
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = bitcast [13 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const.test_SHSimpleIDListFromPath.adirW, i32 0, i32 0), i64 13, i1 false)
  %7 = bitcast [13 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const.test_SHSimpleIDListFromPath.adirA, i32 0, i32 0), i64 13, i1 false)
  %8 = call i32 (...) @GetVersion()
  %9 = and i32 %8, -2147483648
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %4, align 8
  store i32* null, i32** %5, align 8
  %14 = getelementptr inbounds [13 x i8], [13 x i8]* %2, i64 0, i64 0
  %15 = call i64 @CreateDirectoryA(i8* %14, i32* null)
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @TRUE, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 (...) @GetLastError()
  %21 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %0
  %25 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %26 = call i32* @SHSimpleIDListFromPath(i8* %25)
  store i32* %26, i32** %5, align 8
  br label %30

27:                                               ; preds = %0
  %28 = getelementptr inbounds [13 x i8], [13 x i8]* %2, i64 0, i64 0
  %29 = call i32* @SHSimpleIDListFromPath(i8* %28)
  store i32* %29, i32** %5, align 8
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %33 = call i32 @verify_pidl(i32* %31, i8* %32)
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @ILFree(i32* %34)
  %36 = getelementptr inbounds [13 x i8], [13 x i8]* %2, i64 0, i64 0
  %37 = call i64 @RemoveDirectoryA(i8* %36)
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* @TRUE, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 (...) @GetLastError()
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i64, i64* %4, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %30
  %47 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %48 = call i32* @SHSimpleIDListFromPath(i8* %47)
  store i32* %48, i32** %5, align 8
  br label %52

49:                                               ; preds = %30
  %50 = getelementptr inbounds [13 x i8], [13 x i8]* %2, i64 0, i64 0
  %51 = call i32* @SHSimpleIDListFromPath(i8* %50)
  store i32* %51, i32** %5, align 8
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %55 = call i32 @verify_pidl(i32* %53, i8* %54)
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @ILFree(i32* %56)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GetVersion(...) #2

declare dso_local i64 @CreateDirectoryA(i8*, i32*) #2

declare dso_local i32 @ok(i32, i8*, i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32* @SHSimpleIDListFromPath(i8*) #2

declare dso_local i32 @verify_pidl(i32*, i8*) #2

declare dso_local i32 @ILFree(i32*) #2

declare dso_local i64 @RemoveDirectoryA(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
