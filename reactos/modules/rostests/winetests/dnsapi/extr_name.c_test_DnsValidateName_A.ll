; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dnsapi/extr_name.c_test_DnsValidateName_A.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dnsapi/extr_name.c_test_DnsValidateName_A.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32*, i32 }

@DnsNameDomain = common dso_local global i32 0, align 4
@ERROR_INVALID_NAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"succeeded unexpectedly\0A\00", align 1
@test_data = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"%d: '%s': got %d, expected %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_DnsValidateName_A to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_DnsValidateName_A() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, i32* @DnsNameDomain, align 4
  %4 = call i64 @DnsValidateName_A(i32* null, i32 %3)
  store i64 %4, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @ERROR_INVALID_NAME, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 (i32, i8*, ...) @ok(i32 %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %67, %0
  %11 = load i32, i32* %1, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @test_data, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %12)
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %70

15:                                               ; preds = %10
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @test_data, align 8
  %17 = load i32, i32* %1, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @test_data, align 8
  %23 = load i32, i32* %1, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @DnsValidateName_A(i32* %21, i32 %27)
  store i64 %28, i64* %2, align 8
  %29 = load i64, i64* %2, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @test_data, align 8
  %31 = load i32, i32* %1, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %29, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %15
  %38 = load i64, i64* %2, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @test_data, align 8
  %40 = load i32, i32* %1, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %38, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @broken(i32 %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %37, %15
  %50 = phi i1 [ true, %15 ], [ %48, %37 ]
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %1, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @test_data, align 8
  %54 = load i32, i32* %1, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %2, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @test_data, align 8
  %61 = load i32, i32* %1, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32* %58, i64 %59, i64 %65)
  br label %67

67:                                               ; preds = %49
  %68 = load i32, i32* %1, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %1, align 4
  br label %10

70:                                               ; preds = %10
  ret void
}

declare dso_local i64 @DnsValidateName_A(i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
