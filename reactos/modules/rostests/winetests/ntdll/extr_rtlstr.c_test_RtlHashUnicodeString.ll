; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlHashUnicodeString.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlHashUnicodeString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_unicodestring_test = type { i8*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }

@test_RtlHashUnicodeString.strW = internal constant [7 x i8] c"Test\001\00", align 1
@FALSE = common dso_local global i32 0, align 4
@HASH_STRING_ALGORITHM_X65599 = common dso_local global i32 0, align 4
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"got status 0x%08x\0A\00", align 1
@HASH_STRING_ALGORITHM_INVALID = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@hash_test = common dso_local global %struct.hash_unicodestring_test* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"got status 0x%08x for %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"got wrong hash 0x%08x, expected 0x%08x, for %s, mode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlHashUnicodeString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlHashUnicodeString() #0 {
  %1 = alloca %struct.hash_unicodestring_test*, align 8
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @FALSE, align 4
  %6 = load i32, i32* @HASH_STRING_ALGORITHM_X65599, align 4
  %7 = call i32 @pRtlHashUnicodeString(%struct.TYPE_4__* null, i32 %5, i32 %6, i32* %4)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* %3, align 4
  %13 = call i32 (i32, i8*, i32, ...) @ok(i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = call i32 @RtlInitUnicodeString(%struct.TYPE_4__* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @test_RtlHashUnicodeString.strW, i64 0, i64 0))
  %15 = load i32, i32* @FALSE, align 4
  %16 = load i32, i32* @HASH_STRING_ALGORITHM_X65599, align 4
  %17 = call i32 @pRtlHashUnicodeString(%struct.TYPE_4__* %2, i32 %15, i32 %16, i32* null)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %3, align 4
  %23 = call i32 (i32, i8*, i32, ...) @ok(i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @FALSE, align 4
  %25 = load i32, i32* @HASH_STRING_ALGORITHM_INVALID, align 4
  %26 = call i32 @pRtlHashUnicodeString(%struct.TYPE_4__* %2, i32 %24, i32 %25, i32* %4)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %3, align 4
  %32 = call i32 (i32, i8*, i32, ...) @ok(i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i64 ptrtoint ([7 x i8]* @test_RtlHashUnicodeString.strW to i64), i64* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 6, i32* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i32 7, i32* %35, align 4
  %36 = load i32, i32* @FALSE, align 4
  %37 = load i32, i32* @HASH_STRING_ALGORITHM_X65599, align 4
  %38 = call i32 @pRtlHashUnicodeString(%struct.TYPE_4__* %2, i32 %36, i32 %37, i32* %4)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @STATUS_SUCCESS, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %3, align 4
  %44 = call i32 (i32, i8*, i32, ...) @ok(i32 %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, 847261827
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %4, align 4
  %49 = call i32 (i32, i8*, i32, ...) @ok(i32 %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.hash_unicodestring_test*, %struct.hash_unicodestring_test** @hash_test, align 8
  store %struct.hash_unicodestring_test* %50, %struct.hash_unicodestring_test** %1, align 8
  br label %51

51:                                               ; preds = %57, %0
  %52 = load %struct.hash_unicodestring_test*, %struct.hash_unicodestring_test** %1, align 8
  %53 = getelementptr inbounds %struct.hash_unicodestring_test, %struct.hash_unicodestring_test* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %57, label %97

57:                                               ; preds = %51
  %58 = load %struct.hash_unicodestring_test*, %struct.hash_unicodestring_test** %1, align 8
  %59 = getelementptr inbounds %struct.hash_unicodestring_test, %struct.hash_unicodestring_test* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @RtlInitUnicodeString(%struct.TYPE_4__* %2, i8* %60)
  store i32 0, i32* %4, align 4
  %62 = load %struct.hash_unicodestring_test*, %struct.hash_unicodestring_test** %1, align 8
  %63 = getelementptr inbounds %struct.hash_unicodestring_test, %struct.hash_unicodestring_test* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @HASH_STRING_ALGORITHM_X65599, align 4
  %66 = call i32 @pRtlHashUnicodeString(%struct.TYPE_4__* %2, i32 %64, i32 %65, i32* %4)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @STATUS_SUCCESS, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %3, align 4
  %72 = load %struct.hash_unicodestring_test*, %struct.hash_unicodestring_test** %1, align 8
  %73 = getelementptr inbounds %struct.hash_unicodestring_test, %struct.hash_unicodestring_test* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @wine_dbgstr_w(i8* %74)
  %76 = call i32 (i32, i8*, i32, ...) @ok(i32 %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %75)
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.hash_unicodestring_test*, %struct.hash_unicodestring_test** %1, align 8
  %79 = getelementptr inbounds %struct.hash_unicodestring_test, %struct.hash_unicodestring_test* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %77, %80
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.hash_unicodestring_test*, %struct.hash_unicodestring_test** %1, align 8
  %85 = getelementptr inbounds %struct.hash_unicodestring_test, %struct.hash_unicodestring_test* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.hash_unicodestring_test*, %struct.hash_unicodestring_test** %1, align 8
  %88 = getelementptr inbounds %struct.hash_unicodestring_test, %struct.hash_unicodestring_test* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @wine_dbgstr_w(i8* %89)
  %91 = load %struct.hash_unicodestring_test*, %struct.hash_unicodestring_test** %1, align 8
  %92 = getelementptr inbounds %struct.hash_unicodestring_test, %struct.hash_unicodestring_test* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i32, i8*, i32, ...) @ok(i32 %82, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %83, i32 %86, i32 %90, i32 %93)
  %95 = load %struct.hash_unicodestring_test*, %struct.hash_unicodestring_test** %1, align 8
  %96 = getelementptr inbounds %struct.hash_unicodestring_test, %struct.hash_unicodestring_test* %95, i32 1
  store %struct.hash_unicodestring_test* %96, %struct.hash_unicodestring_test** %1, align 8
  br label %51

97:                                               ; preds = %51
  ret void
}

declare dso_local i32 @pRtlHashUnicodeString(%struct.TYPE_4__*, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @RtlInitUnicodeString(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @wine_dbgstr_w(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
