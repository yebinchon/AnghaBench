; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mlang/extr_mlang.c_test_rfc1766.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mlang/extr_mlang.c_test_rfc1766.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@LANG_NEUTRAL = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"IMultiLanguage2_EnumRfc1766 error %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"couldn't fetch 1 RFC1766INFO structure\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Expected S_OK, got %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Expected matching locale names\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_rfc1766 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_rfc1766(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @LANG_NEUTRAL, align 4
  %10 = call i64 @IMultiLanguage2_EnumRfc1766(i32* %8, i32 %9, i32** %3)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @S_OK, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* %6, align 8
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %15)
  br label %17

17:                                               ; preds = %1, %24
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @IEnumRfc1766_Next(i32* %18, i32 1, %struct.TYPE_3__* %4, i32* %5)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @S_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %48

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 1
  %27 = zext i1 %26 to i32
  %28 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32*, i32** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @IMultiLanguage2_GetRfc1766FromLcid(i32* %29, i32 %31, i32* %7)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @S_OK, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %6, align 8
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %37)
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32* @strstrW(i32 %40, i32 %41)
  %43 = icmp ne i32* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @SysFreeString(i32 %46)
  br label %17

48:                                               ; preds = %23
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @IEnumRfc1766_Release(i32* %49)
  ret void
}

declare dso_local i64 @IMultiLanguage2_EnumRfc1766(i32*, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IEnumRfc1766_Next(i32*, i32, %struct.TYPE_3__*, i32*) #1

declare dso_local i64 @IMultiLanguage2_GetRfc1766FromLcid(i32*, i32, i32*) #1

declare dso_local i32* @strstrW(i32, i32) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @IEnumRfc1766_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
