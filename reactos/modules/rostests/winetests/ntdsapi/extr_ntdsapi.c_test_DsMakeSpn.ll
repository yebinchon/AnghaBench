; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdsapi/extr_ntdsapi.c_test_DsMakeSpn.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdsapi/extr_ntdsapi.c_test_DsMakeSpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_DsMakeSpn.wszServiceClass = internal constant [6 x i8] c"class\00", align 1
@test_DsMakeSpn.wszServiceHost = internal constant [5 x i8] c"host\00", align 1
@test_DsMakeSpn.wszInstanceName = internal constant [9 x i8] c"instance\00", align 1
@test_DsMakeSpn.wszReferrer = internal constant [9 x i8] c"referrer\00", align 1
@test_DsMakeSpn.wszSpn1 = internal constant [11 x i8] c"class/host\00", align 1
@test_DsMakeSpn.wszSpn2 = internal constant [20 x i8] c"class/instance/host\00", align 16
@test_DsMakeSpn.wszSpn3 = internal constant [24 x i8] c"class/instance:555/host\00", align 16
@test_DsMakeSpn.wszSpn4 = internal constant [24 x i8] c"class/instance:555/host\00", align 16
@test_DsMakeSpn.wszSpn5 = internal constant [15 x i8] c"class/host:555\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [74 x i8] c"DsMakeSpnW should have failed with ERROR_INVALID_PARAMETER instead of %d\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"DsMakeSpnW should have succeeded instead of failing with %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"DsMakeSpnW returned unexpected SPN %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"DsMakeSpnW should have returned spn_length of %d instead of %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_DsMakeSpn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_DsMakeSpn() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [256 x i8], align 16
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  store i8 0, i8* %4, align 16
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %6 = call i64 @ARRAY_SIZE(i8* %5)
  store i64 %6, i64* %3, align 8
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %8 = call i64 @DsMakeSpnW(i8* null, i8* null, i8* null, i32 0, i8* null, i64* %3, i8* %7)
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %1, align 8
  %14 = call i32 (i32, i8*, i64, ...) @ok(i32 %12, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %16 = call i64 @ARRAY_SIZE(i8* %15)
  store i64 %16, i64* %3, align 8
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %18 = call i64 @DsMakeSpnW(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_DsMakeSpn.wszServiceHost, i64 0, i64 0), i8* null, i32 0, i8* null, i64* %3, i8* %17)
  store i64 %18, i64* %1, align 8
  %19 = load i64, i64* %1, align 8
  %20 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %1, align 8
  %24 = call i32 (i32, i8*, i64, ...) @ok(i32 %22, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %26 = call i64 @ARRAY_SIZE(i8* %25)
  store i64 %26, i64* %3, align 8
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %28 = call i64 @DsMakeSpnW(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_DsMakeSpn.wszServiceClass, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_DsMakeSpn.wszServiceHost, i64 0, i64 0), i8* null, i32 0, i8* null, i64* %3, i8* %27)
  store i64 %28, i64* %1, align 8
  %29 = load i64, i64* %1, align 8
  %30 = load i64, i64* @ERROR_SUCCESS, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %1, align 8
  %34 = call i32 (i32, i8*, i64, ...) @ok(i32 %32, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %36 = call i32 @lstrcmpW(i8* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_DsMakeSpn.wszSpn1, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %41 = call i32 @wine_dbgstr_w(i8* %40)
  %42 = sext i32 %41 to i64
  %43 = call i32 (i32, i8*, i64, ...) @ok(i32 %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  %44 = load i64, i64* %3, align 8
  %45 = call i64 @lstrlenW(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_DsMakeSpn.wszSpn1, i64 0, i64 0))
  %46 = add nsw i64 %45, 1
  %47 = icmp eq i64 %44, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @lstrlenW(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_DsMakeSpn.wszSpn1, i64 0, i64 0))
  %50 = add nsw i64 %49, 1
  %51 = load i64, i64* %3, align 8
  %52 = call i32 (i32, i8*, i64, ...) @ok(i32 %48, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i64 %50, i64 %51)
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %54 = call i64 @ARRAY_SIZE(i8* %53)
  store i64 %54, i64* %3, align 8
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %56 = call i64 @DsMakeSpnW(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_DsMakeSpn.wszServiceClass, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_DsMakeSpn.wszServiceHost, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_DsMakeSpn.wszInstanceName, i64 0, i64 0), i32 0, i8* null, i64* %3, i8* %55)
  store i64 %56, i64* %1, align 8
  %57 = load i64, i64* %1, align 8
  %58 = load i64, i64* @ERROR_SUCCESS, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i64, i64* %1, align 8
  %62 = call i32 (i32, i8*, i64, ...) @ok(i32 %60, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %61)
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %64 = call i32 @lstrcmpW(i8* %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @test_DsMakeSpn.wszSpn2, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %69 = call i32 @wine_dbgstr_w(i8* %68)
  %70 = sext i32 %69 to i64
  %71 = call i32 (i32, i8*, i64, ...) @ok(i32 %67, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %70)
  %72 = load i64, i64* %3, align 8
  %73 = call i64 @lstrlenW(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @test_DsMakeSpn.wszSpn2, i64 0, i64 0))
  %74 = add nsw i64 %73, 1
  %75 = icmp eq i64 %72, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 @lstrlenW(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @test_DsMakeSpn.wszSpn2, i64 0, i64 0))
  %78 = add nsw i64 %77, 1
  %79 = load i64, i64* %3, align 8
  %80 = call i32 (i32, i8*, i64, ...) @ok(i32 %76, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i64 %78, i64 %79)
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %82 = call i64 @ARRAY_SIZE(i8* %81)
  store i64 %82, i64* %3, align 8
  %83 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %84 = call i64 @DsMakeSpnW(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_DsMakeSpn.wszServiceClass, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_DsMakeSpn.wszServiceHost, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_DsMakeSpn.wszInstanceName, i64 0, i64 0), i32 555, i8* null, i64* %3, i8* %83)
  store i64 %84, i64* %1, align 8
  %85 = load i64, i64* %1, align 8
  %86 = load i64, i64* @ERROR_SUCCESS, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i64, i64* %1, align 8
  %90 = call i32 (i32, i8*, i64, ...) @ok(i32 %88, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %89)
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %92 = call i32 @lstrcmpW(i8* %91, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @test_DsMakeSpn.wszSpn3, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %97 = call i32 @wine_dbgstr_w(i8* %96)
  %98 = sext i32 %97 to i64
  %99 = call i32 (i32, i8*, i64, ...) @ok(i32 %95, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %98)
  %100 = load i64, i64* %3, align 8
  %101 = call i64 @lstrlenW(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @test_DsMakeSpn.wszSpn3, i64 0, i64 0))
  %102 = add nsw i64 %101, 1
  %103 = icmp eq i64 %100, %102
  %104 = zext i1 %103 to i32
  %105 = call i64 @lstrlenW(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @test_DsMakeSpn.wszSpn3, i64 0, i64 0))
  %106 = add nsw i64 %105, 1
  %107 = load i64, i64* %3, align 8
  %108 = call i32 (i32, i8*, i64, ...) @ok(i32 %104, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i64 %106, i64 %107)
  %109 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %110 = call i64 @ARRAY_SIZE(i8* %109)
  store i64 %110, i64* %3, align 8
  %111 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %112 = call i64 @DsMakeSpnW(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_DsMakeSpn.wszServiceClass, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_DsMakeSpn.wszServiceHost, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_DsMakeSpn.wszInstanceName, i64 0, i64 0), i32 555, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_DsMakeSpn.wszReferrer, i64 0, i64 0), i64* %3, i8* %111)
  store i64 %112, i64* %1, align 8
  %113 = load i64, i64* %1, align 8
  %114 = load i64, i64* @ERROR_SUCCESS, align 8
  %115 = icmp eq i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = load i64, i64* %1, align 8
  %118 = call i32 (i32, i8*, i64, ...) @ok(i32 %116, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %117)
  %119 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %120 = call i32 @lstrcmpW(i8* %119, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @test_DsMakeSpn.wszSpn4, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %125 = call i32 @wine_dbgstr_w(i8* %124)
  %126 = sext i32 %125 to i64
  %127 = call i32 (i32, i8*, i64, ...) @ok(i32 %123, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %126)
  %128 = load i64, i64* %3, align 8
  %129 = call i64 @lstrlenW(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @test_DsMakeSpn.wszSpn4, i64 0, i64 0))
  %130 = add nsw i64 %129, 1
  %131 = icmp eq i64 %128, %130
  %132 = zext i1 %131 to i32
  %133 = call i64 @lstrlenW(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @test_DsMakeSpn.wszSpn4, i64 0, i64 0))
  %134 = add nsw i64 %133, 1
  %135 = load i64, i64* %3, align 8
  %136 = call i32 (i32, i8*, i64, ...) @ok(i32 %132, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i64 %134, i64 %135)
  %137 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %138 = call i64 @ARRAY_SIZE(i8* %137)
  store i64 %138, i64* %3, align 8
  %139 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %140 = call i64 @DsMakeSpnW(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_DsMakeSpn.wszServiceClass, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_DsMakeSpn.wszServiceHost, i64 0, i64 0), i8* null, i32 555, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_DsMakeSpn.wszReferrer, i64 0, i64 0), i64* %3, i8* %139)
  store i64 %140, i64* %1, align 8
  %141 = load i64, i64* %1, align 8
  %142 = load i64, i64* @ERROR_SUCCESS, align 8
  %143 = icmp eq i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = load i64, i64* %1, align 8
  %146 = call i32 (i32, i8*, i64, ...) @ok(i32 %144, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %145)
  %147 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %148 = call i32 @lstrcmpW(i8* %147, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_DsMakeSpn.wszSpn5, i64 0, i64 0))
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %153 = call i32 @wine_dbgstr_w(i8* %152)
  %154 = sext i32 %153 to i64
  %155 = call i32 (i32, i8*, i64, ...) @ok(i32 %151, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %154)
  %156 = load i64, i64* %3, align 8
  %157 = call i64 @lstrlenW(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_DsMakeSpn.wszSpn5, i64 0, i64 0))
  %158 = add nsw i64 %157, 1
  %159 = icmp eq i64 %156, %158
  %160 = zext i1 %159 to i32
  %161 = call i64 @lstrlenW(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_DsMakeSpn.wszSpn5, i64 0, i64 0))
  %162 = add nsw i64 %161, 1
  %163 = load i64, i64* %3, align 8
  %164 = call i32 (i32, i8*, i64, ...) @ok(i32 %160, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i64 %162, i64 %163)
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i8*) #1

declare dso_local i64 @DsMakeSpnW(i8*, i8*, i8*, i32, i8*, i64*, i8*) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i32 @lstrcmpW(i8*, i8*) #1

declare dso_local i32 @wine_dbgstr_w(i8*) #1

declare dso_local i64 @lstrlenW(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
