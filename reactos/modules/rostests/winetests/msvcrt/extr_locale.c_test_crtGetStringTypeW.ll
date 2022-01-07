; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_locale.c_test_crtGetStringTypeW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_locale.c_test_crtGetStringTypeW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_crtGetStringTypeW.str0 = internal constant [2 x i8] c"0\00", align 1
@test_crtGetStringTypeW.strA = internal constant [2 x i8] c"A\00", align 1
@test_crtGetStringTypeW.str_space = internal constant [2 x i8] c" \00", align 1
@test_crtGetStringTypeW.str_null = internal constant [2 x i8] zeroinitializer, align 1
@test_crtGetStringTypeW.str_rand = internal constant [2 x i8] c"\D2\00", align 1
@pmemcpy_s = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Too old version of msvcrt.dll\0A\00", align 1
@CT_CTYPE1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%d) ret_crt = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%d) out_crt = %x, expected %x\0A\00", align 1
@CT_CTYPE2 = common dso_local global i32 0, align 4
@CT_CTYPE3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"ret == TRUE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_crtGetStringTypeW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_crtGetStringTypeW() #0 {
  %1 = alloca [5 x i8*], align 16
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = bitcast [5 x i8*]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 40, i1 false)
  %8 = bitcast i8* %7 to [5 x i8*]*
  %9 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_crtGetStringTypeW.str0, i32 0, i32 0), i8** %9, align 16
  %10 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_crtGetStringTypeW.strA, i32 0, i32 0), i8** %10, align 8
  %11 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i32 0, i32 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_crtGetStringTypeW.str_space, i32 0, i32 0), i8** %11, align 16
  %12 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i32 0, i32 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_crtGetStringTypeW.str_null, i32 0, i32 0), i8** %12, align 8
  %13 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i32 0, i32 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_crtGetStringTypeW.str_rand, i32 0, i32 0), i8** %13, align 16
  %14 = load i32, i32* @pmemcpy_s, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %0
  %17 = call i32 @win_skip(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %127

18:                                               ; preds = %0
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %115, %18
  %20 = load i32, i32* %6, align 4
  %21 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 0
  %22 = call i32 @ARRAY_SIZE(i8** %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %118

24:                                               ; preds = %19
  %25 = load i32, i32* @CT_CTYPE1, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @p__crtGetStringTypeW(i32 0, i32 %25, i8* %29, i32 1, i64* %2)
  store i64 %30, i64* %4, align 8
  %31 = load i32, i32* @CT_CTYPE1, align 4
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @GetStringTypeW(i32 %31, i8* %35, i32 1, i64* %3)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %6, align 4
  %42 = load i64, i64* %4, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %43)
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* %2, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %6, align 4
  %50 = load i64, i64* %2, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i64, i64* %3, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %51, i32 %53)
  %55 = load i32, i32* @CT_CTYPE2, align 4
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @p__crtGetStringTypeW(i32 0, i32 %55, i8* %59, i32 1, i64* %2)
  store i64 %60, i64* %4, align 8
  %61 = load i32, i32* @CT_CTYPE2, align 4
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @GetStringTypeW(i32 %61, i8* %65, i32 1, i64* %3)
  store i64 %66, i64* %5, align 8
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* %4, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %6, align 4
  %72 = load i64, i64* %4, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %73)
  %75 = load i64, i64* %3, align 8
  %76 = load i64, i64* %2, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %6, align 4
  %80 = load i64, i64* %2, align 8
  %81 = trunc i64 %80 to i32
  %82 = load i64, i64* %3, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %81, i32 %83)
  %85 = load i32, i32* @CT_CTYPE3, align 4
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @p__crtGetStringTypeW(i32 0, i32 %85, i8* %89, i32 1, i64* %2)
  store i64 %90, i64* %4, align 8
  %91 = load i32, i32* @CT_CTYPE3, align 4
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @GetStringTypeW(i32 %91, i8* %95, i32 1, i64* %3)
  store i64 %96, i64* %5, align 8
  %97 = load i64, i64* %5, align 8
  %98 = load i64, i64* %4, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %6, align 4
  %102 = load i64, i64* %4, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %103)
  %105 = load i64, i64* %3, align 8
  %106 = load i64, i64* %2, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i32, i32* %6, align 4
  %110 = load i64, i64* %2, align 8
  %111 = trunc i64 %110 to i32
  %112 = load i64, i64* %3, align 8
  %113 = trunc i64 %112 to i32
  %114 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %109, i32 %111, i32 %113)
  br label %115

115:                                              ; preds = %24
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %19

118:                                              ; preds = %19
  %119 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 0
  %120 = load i8*, i8** %119, align 16
  %121 = call i64 @p__crtGetStringTypeW(i32 0, i32 3, i8* %120, i32 1, i64* %3)
  store i64 %121, i64* %5, align 8
  %122 = load i64, i64* %5, align 8
  %123 = icmp ne i64 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %127

127:                                              ; preds = %118, %16
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local i64 @p__crtGetStringTypeW(i32, i32, i8*, i32, i64*) #2

declare dso_local i64 @GetStringTypeW(i32, i8*, i32, i64*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
