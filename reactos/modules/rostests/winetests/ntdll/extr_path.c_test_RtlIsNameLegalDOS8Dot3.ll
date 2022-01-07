; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_path.c_test_RtlIsNameLegalDOS8Dot3.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_path.c_test_RtlIsNameLegalDOS8Dot3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i8*, i64, i64 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_8__ = type { i8*, i32, i32 }

@test_RtlIsNameLegalDOS8Dot3.tests = internal constant [22 x %struct.test] [%struct.test { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 128, i64 129 }, %struct.test { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 128, i64 128 }, %struct.test { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i64 129, i64 2 }, %struct.test { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i64 129, i64 2 }, %struct.test { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i64 128, i64 129 }, %struct.test { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i64 129, i64 2 }, %struct.test { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i64 128, i64 128 }, %struct.test { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i64 129, i64 2 }, %struct.test { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i64 128, i64 128 }, %struct.test { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i64 128, i64 128 }, %struct.test { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i64 129, i64 2 }, %struct.test { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i64 128, i64 128 }, %struct.test { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i64 129, i64 2 }, %struct.test { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i64 129, i64 2 }, %struct.test { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i64 129, i64 2 }, %struct.test { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i64 129, i64 2 }, %struct.test { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i64 129, i64 2 }, %struct.test { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i64 128, i64 129 }, %struct.test { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i64 128, i64 129 }, %struct.test { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i64 129, i64 2 }, %struct.test { i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.20, i32 0, i32 0), i64 129, i64 2 }, %struct.test zeroinitializer], align 16
@.str = private unnamed_addr constant [9 x i8] c"12345678\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"123 5678\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"12345678.\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"1234 678.\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"12345678.a\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"12345678.a \00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"12345678.a c\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c" 2345678.a \00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"1 345678.abc\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"1      8.a c\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"1 3 5 7 .abc\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"12345678.  c\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"123456789.a\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"12345.abcd\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"12345.ab d\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c".abc\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"12.abc.d\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.20 = private unnamed_addr constant [55 x i8] c"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"Wrong result %d/%d for '%s'\0A\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"Wrong spaces value %d/%d for '%s'\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"Wrong length %d/%d for '%s'\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"Wrong string '%.*s'/'%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlIsNameLegalDOS8Dot3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlIsNameLegalDOS8Dot3() #0 {
  %1 = alloca %struct.test*, align 8
  %2 = alloca %struct.TYPE_7__, align 8
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca [200 x i32], align 16
  %6 = alloca [12 x i8], align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [100 x i8], align 16
  %10 = alloca [13 x i8], align 1
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i32 800, i32* %12, align 8
  %13 = getelementptr inbounds [200 x i32], [200 x i32]* %5, i64 0, i64 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i32* %13, i32** %14, align 8
  store %struct.test* getelementptr inbounds ([22 x %struct.test], [22 x %struct.test]* @test_RtlIsNameLegalDOS8Dot3.tests, i64 0, i64 0), %struct.test** %1, align 8
  br label %15

15:                                               ; preds = %140, %0
  %16 = load %struct.test*, %struct.test** %1, align 8
  %17 = getelementptr inbounds %struct.test, %struct.test* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %143

20:                                               ; preds = %15
  %21 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %22 = load %struct.test*, %struct.test** %1, align 8
  %23 = getelementptr inbounds %struct.test, %struct.test* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strcpy(i8* %21, i8* %24)
  %26 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = load %struct.test*, %struct.test** %1, align 8
  %29 = getelementptr inbounds %struct.test, %struct.test* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = call i32 @pRtlOemStringToUnicodeString(%struct.TYPE_7__* %2, %struct.TYPE_8__* %3, i32 129)
  store i64 2, i64* %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  store i32 12, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  store i32 12, i32* %39, align 8
  %40 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i8* %40, i8** %41, align 8
  %42 = call i64 @pRtlIsNameLegalDOS8Dot3(%struct.TYPE_7__* %2, %struct.TYPE_8__* %4, i64* %8)
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.test*, %struct.test** %1, align 8
  %45 = getelementptr inbounds %struct.test, %struct.test* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.test*, %struct.test** %1, align 8
  %51 = getelementptr inbounds %struct.test, %struct.test* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = load %struct.test*, %struct.test** %1, align 8
  %55 = getelementptr inbounds %struct.test, %struct.test* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i64 %49, i8* %53, i8* %56)
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.test*, %struct.test** %1, align 8
  %60 = getelementptr inbounds %struct.test, %struct.test* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  %63 = zext i1 %62 to i32
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.test*, %struct.test** %1, align 8
  %66 = getelementptr inbounds %struct.test, %struct.test* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.test*, %struct.test** %1, align 8
  %70 = getelementptr inbounds %struct.test, %struct.test* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0), i64 %64, i8* %68, i8* %71)
  %73 = load %struct.test*, %struct.test** %1, align 8
  %74 = getelementptr inbounds %struct.test, %struct.test* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @strlen(i8* %75)
  %77 = icmp sle i32 %76, 12
  br i1 %77, label %78, label %139

78:                                               ; preds = %20
  %79 = getelementptr inbounds [13 x i8], [13 x i8]* %10, i64 0, i64 0
  %80 = load %struct.test*, %struct.test** %1, align 8
  %81 = getelementptr inbounds %struct.test, %struct.test* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @strcpy(i8* %79, i8* %82)
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %99, %78
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [13 x i8], [13 x i8]* %10, i64 0, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = icmp ne i8 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %84
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [13 x i8], [13 x i8]* %10, i64 0, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = call signext i8 @toupper(i8 signext %94)
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [13 x i8], [13 x i8]* %10, i64 0, i64 %97
  store i8 %95, i8* %98, align 1
  br label %99

99:                                               ; preds = %90
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %84

102:                                              ; preds = %84
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.test*, %struct.test** %1, align 8
  %106 = getelementptr inbounds %struct.test, %struct.test* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @strlen(i8* %107)
  %109 = icmp eq i32 %104, %108
  %110 = zext i1 %109 to i32
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = load %struct.test*, %struct.test** %1, align 8
  %115 = getelementptr inbounds %struct.test, %struct.test* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i8* @lstrlenA(i8* %116)
  %118 = load %struct.test*, %struct.test** %1, align 8
  %119 = getelementptr inbounds %struct.test, %struct.test* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @ok(i32 %110, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0), i64 %113, i8* %117, i8* %120)
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = getelementptr inbounds [13 x i8], [13 x i8]* %10, i64 0, i64 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = call i32 @memcmp(i8* %123, i8* %124, i64 %127)
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds [13 x i8], [13 x i8]* %10, i64 0, i64 0
  %138 = call i32 @ok(i32 %131, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0), i64 %134, i8* %136, i8* %137)
  br label %139

139:                                              ; preds = %102, %20
  br label %140

140:                                              ; preds = %139
  %141 = load %struct.test*, %struct.test** %1, align 8
  %142 = getelementptr inbounds %struct.test, %struct.test* %141, i32 1
  store %struct.test* %142, %struct.test** %1, align 8
  br label %15

143:                                              ; preds = %15
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pRtlOemStringToUnicodeString(%struct.TYPE_7__*, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @pRtlIsNameLegalDOS8Dot3(%struct.TYPE_7__*, %struct.TYPE_8__*, i64*) #1

declare dso_local i32 @ok(i32, i8*, i64, i8*, i8*) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i8* @lstrlenA(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
