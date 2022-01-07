; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_base64.c_decodeBase64WithLenFmt.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_base64.c_decodeBase64WithLenFmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [61 x i8] c"base64 \22%s\22 len %d: expected \22%s\22, got \22%s\22 (ret %d, le %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"base64 \22%s\22 len %d: expected fmt %d, used %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"base64 \22%s\22 len %d: expected failure, got \22%s\22 (ret %d, le %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64, i32, i32, i64)* @decodeBase64WithLenFmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decodeBase64WithLenFmt(i32 %0, i32 %1, i64 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [8 x i64], align 16
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %18 = bitcast [8 x i64]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 64, i1 false)
  store i64 63, i64* %14, align 8
  store i64 3735928559, i64* %15, align 8
  %19 = call i32 @SetLastError(i32 -559038737)
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds [8 x i64], [8 x i64]* %13, i64 0, i64 0
  %24 = call i64 @CryptStringToBinaryA(i32 %20, i32 %21, i64 %22, i64* %23, i64* %14, i32* null, i64* %15)
  store i64 %24, i64* %16, align 8
  %25 = load i64, i64* %14, align 8
  %26 = getelementptr inbounds [8 x i64], [8 x i64]* %13, i64 0, i64 %25
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %80

29:                                               ; preds = %6
  %30 = load i64, i64* %16, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = getelementptr inbounds [8 x i64], [8 x i64]* %13, i64 0, i64 0
  %35 = bitcast i64* %34 to i8*
  %36 = call i64 @strcmp(i32 %33, i8* %35)
  %37 = icmp eq i64 %36, 0
  br label %38

38:                                               ; preds = %32, %29
  %39 = phi i1 [ false, %29 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %17, align 8
  %42 = load i64, i64* %17, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %38
  %45 = load i64, i64* %12, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i64, i64* %16, align 8
  %49 = icmp ne i64 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @broken(i32 %51)
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %47, %44
  %55 = phi i1 [ false, %44 ], [ %53, %47 ]
  br label %56

56:                                               ; preds = %54, %38
  %57 = phi i1 [ true, %38 ], [ %55, %54 ]
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %10, align 4
  %62 = getelementptr inbounds [8 x i64], [8 x i64]* %13, i64 0, i64 0
  %63 = bitcast i64* %62 to i8*
  %64 = load i64, i64* %16, align 8
  %65 = call i32 (...) @GetLastError()
  %66 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %58, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60, i32 %61, i8* %63, i64 %64, i32 %65)
  %67 = load i64, i64* %17, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %56
  %70 = load i64, i64* %15, align 8
  %71 = load i64, i64* %9, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %15, align 8
  %78 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %73, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75, i64 %76, i64 %77)
  br label %79

79:                                               ; preds = %69, %56
  br label %97

80:                                               ; preds = %6
  %81 = load i64, i64* %16, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  %84 = call i32 (...) @GetLastError()
  %85 = load i32, i32* %11, align 4
  %86 = icmp eq i32 %84, %85
  br label %87

87:                                               ; preds = %83, %80
  %88 = phi i1 [ false, %80 ], [ %86, %83 ]
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = getelementptr inbounds [8 x i64], [8 x i64]* %13, i64 0, i64 0
  %93 = bitcast i64* %92 to i8*
  %94 = load i64, i64* %16, align 8
  %95 = call i32 (...) @GetLastError()
  %96 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %89, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %91, i8* %93, i64 %94, i32 %95)
  br label %97

97:                                               ; preds = %87, %79
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i64, i64* %9, align 8
  %101 = load i64, i64* %16, align 8
  %102 = getelementptr inbounds [8 x i64], [8 x i64]* %13, i64 0, i64 0
  %103 = load i64, i64* %14, align 8
  %104 = load i64, i64* %15, align 8
  %105 = call i32 @decodeBase64WithLenFmtW(i32 %98, i32 %99, i64 %100, i64 %101, i64* %102, i64 %103, i64 %104)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i64 @CryptStringToBinaryA(i32, i32, i64, i64*, i64*, i32*, i64*) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @ok(i32, i8*, i32, i32, ...) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @decodeBase64WithLenFmtW(i32, i32, i64, i64, i64*, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
