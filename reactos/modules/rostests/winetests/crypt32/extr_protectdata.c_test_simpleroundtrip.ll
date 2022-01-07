; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_protectdata.c_test_simpleroundtrip.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_protectdata.c_test_simpleroundtrip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64 }

@.str = private unnamed_addr constant [15 x i8] c"can't protect\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"CryptProtectData failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"can't unprotect; last error %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"output wrong length %d for input '%s', wanted %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"output wrong contents for input '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_simpleroundtrip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_simpleroundtrip(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1 x i64], align 8
  store i8* %0, i8** %2, align 8
  %8 = getelementptr inbounds [1 x i64], [1 x i64]* %7, i64 0, i64 0
  store i64 0, i64* %8, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i8* %9, i8** %10, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = call i64 @strlen(i8* %11)
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i64 %12, i64* %13, align 8
  %14 = getelementptr inbounds [1 x i64], [1 x i64]* %7, i64 0, i64 0
  %15 = call i32 @pCryptProtectData(%struct.TYPE_6__* %3, i64* %14, i32* null, i32* null, i32* null, i32 0, %struct.TYPE_6__* %4)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @broken(i32 %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %18, %1
  %26 = phi i1 [ true, %1 ], [ %24, %18 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = call i32 @win_skip(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %69

33:                                               ; preds = %25
  %34 = call i32 @pCryptUnprotectData(%struct.TYPE_6__* %4, i32* null, i32* null, i32* null, i32* null, i32 0, %struct.TYPE_6__* %5)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i8* (...) @GetLastError()
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i8*, i8** %2, align 8
  %43 = call i64 @strlen(i8* %42)
  %44 = icmp eq i64 %41, %43
  %45 = zext i1 %44 to i32
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i8*, i8** %2, align 8
  %49 = load i8*, i8** %2, align 8
  %50 = call i32 @lstrlenA(i8* %49)
  %51 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %47, i8* %48, i32 %50)
  %52 = load i8*, i8** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @memcmp(i8* %52, i8* %54, i64 %56)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = load i8*, i8** %2, align 8
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %61)
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @LocalFree(i8* %64)
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @LocalFree(i8* %67)
  br label %69

69:                                               ; preds = %33, %31
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @pCryptProtectData(%struct.TYPE_6__*, i64*, i32*, i32*, i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @pCryptUnprotectData(%struct.TYPE_6__*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i8* @GetLastError(...) #1

declare dso_local i32 @lstrlenA(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @LocalFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
