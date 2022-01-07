; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winspool/extr_info.c_test_DocumentProperties.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winspool/extr_info.c_test_DocumentProperties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@default_printer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"There is no default printer installed\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Unable to open the default printer (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"wrong hprn %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"DEVMODEA required size %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"unexpected DocumentPropertiesA ret value %d\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@DM_OUT_BUFFER = common dso_local global i32 0, align 4
@IDOK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"DocumentPropertiesA ret value %d != expected IDOK\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"ClosePrinter error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_DocumentProperties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_DocumentProperties() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca [1 x i8], align 1
  %6 = bitcast [1 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %6, i8 0, i64 1, i1 false)
  %7 = load i32, i32* @default_printer, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %76

11:                                               ; preds = %0
  store i64 0, i64* %1, align 8
  %12 = load i32, i32* @default_printer, align 4
  %13 = call i32 @OpenPrinterA(i32 %12, i64* %1, i32* null)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @default_printer, align 4
  %18 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  br label %76

19:                                               ; preds = %11
  %20 = load i64, i64* %1, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %1, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = load i64, i64* %1, align 8
  %27 = call i32 @DocumentPropertiesA(i32 0, i64 %26, i8* null, i32* null, i32* null, i32 0)
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp uge i64 %31, 4
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  %36 = call i32 (...) @GetProcessHeap()
  %37 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %38 = load i32, i32* %2, align 4
  %39 = call i32* @HeapAlloc(i32 %36, i32 %37, i32 %38)
  store i32* %39, i32** %4, align 8
  %40 = load i64, i64* %1, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @DM_OUT_BUFFER, align 4
  %44 = call i32 @DocumentPropertiesA(i32 0, i64 %40, i8* null, i32* %41, i32* %42, i32 %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @IDOK, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  %51 = load i64, i64* %1, align 8
  %52 = getelementptr inbounds [1 x i8], [1 x i8]* %5, i64 0, i64 0
  %53 = load i32*, i32** %4, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* @DM_OUT_BUFFER, align 4
  %56 = call i32 @DocumentPropertiesA(i32 0, i64 %51, i8* %52, i32* %53, i32* %54, i32 %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @IDOK, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* @default_printer, align 4
  %66 = call i32 @test_DEVMODEA(i32* %63, i32 %64, i32 %65)
  %67 = call i32 (...) @GetProcessHeap()
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @HeapFree(i32 %67, i32 0, i32* %68)
  %70 = call i32 @SetLastError(i32 -559038737)
  %71 = load i64, i64* %1, align 8
  %72 = call i32 @ClosePrinter(i64 %71)
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* %3, align 4
  %74 = call i32 (...) @GetLastError()
  %75 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %19, %16, %9
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @skip(i8*, ...) #2

declare dso_local i32 @OpenPrinterA(i32, i64*, i32*) #2

declare dso_local i32 @ok(i32, i8*, i32) #2

declare dso_local i32 @DocumentPropertiesA(i32, i64, i8*, i32*, i32*, i32) #2

declare dso_local i32 @trace(i8*, i32) #2

declare dso_local i32* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @test_DEVMODEA(i32*, i32, i32) #2

declare dso_local i32 @HeapFree(i32, i32, i32*) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @ClosePrinter(i64) #2

declare dso_local i32 @GetLastError(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
