; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_encode.c_test_decodeEnumerated.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_encode.c_test_decodeEnumerated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64* }

@enumeratedTypes = common dso_local global %struct.TYPE_5__* null, align 8
@enums = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"CryptDecodeObjectEx failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Got unexpected size %d for enumerated\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Unexpected value %d, expected %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @test_decodeEnumerated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_decodeEnumerated(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %71, %1
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @enumeratedTypes, align 8
  %11 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* %10)
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %13, label %74

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8
  br label %14

14:                                               ; preds = %67, %13
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @enums, align 8
  %17 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* %16)
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %19, label %70

19:                                               ; preds = %14
  store i64 4, i64* %6, align 8
  %20 = load i64, i64* %2, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @enumeratedTypes, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %22
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @enums, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @enums, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 2
  %37 = bitcast %struct.TYPE_5__* %23 to { i32, i64* }*
  %38 = getelementptr inbounds { i32, i64* }, { i32, i64* }* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds { i32, i64* }, { i32, i64* }* %37, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = call i32 @pCryptDecodeObjectEx(i64 %20, i32 %39, i64* %41, i64* %28, i64 %36, i32 0, i32* null, i32* %7, i64* %6)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 (...) @GetLastError()
  %45 = call i32 (i32, i8*, i32, ...) @ok(i32 %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i64, i64* %6, align 8
  %47 = icmp eq i64 %46, 4
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %6, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 (i32, i8*, i32, ...) @ok(i32 %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @enums, align 8
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %52, %57
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @enums, align 8
  %62 = load i64, i64* %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i32, i8*, i32, ...) @ok(i32 %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %65)
  br label %67

67:                                               ; preds = %19
  %68 = load i64, i64* %4, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %4, align 8
  br label %14

70:                                               ; preds = %14
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %3, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %3, align 8
  br label %8

74:                                               ; preds = %8
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @pCryptDecodeObjectEx(i64, i32, i64*, i64*, i64, i32, i32*, i32*, i64*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
