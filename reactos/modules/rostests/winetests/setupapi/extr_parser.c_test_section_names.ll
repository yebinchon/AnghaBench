; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_parser.c_test_section_names.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_parser.c_test_section_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@section_names = common dso_local global %struct.TYPE_3__* null, align 8
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"line %u: open failed err %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"hinf=%p ret=%d err=0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"line %u: section name %s found\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"line %u: bad error code %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"line %u: section name %s not found\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"line %u: bad error %u/%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_section_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_section_names() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %108, %0
  %7 = load i32, i32* %1, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @section_names, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %8)
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %111

11:                                               ; preds = %6
  %12 = call i32 @SetLastError(i32 -559038737)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @section_names, align 8
  %14 = load i32, i32* %1, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @test_file_contents(i32 %18, i32* %2)
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %1, align 4
  %25 = call i32 (...) @GetLastError()
  %26 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %11
  br label %108

31:                                               ; preds = %11
  %32 = load i64, i64* %3, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @section_names, align 8
  %34 = load i32, i32* %1, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @SetupGetLineCountA(i64 %32, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = call i32 (...) @GetLastError()
  store i32 %40, i32* %4, align 4
  %41 = load i64, i64* %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @trace(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %72

47:                                               ; preds = %31
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @section_names, align 8
  %49 = load i32, i32* %1, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %1, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @section_names, align 8
  %59 = load i32, i32* %1, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %1, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %69, i32 %70)
  br label %105

72:                                               ; preds = %31
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @section_names, align 8
  %74 = load i32, i32* %1, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %1, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** @section_names, align 8
  %81 = load i32, i32* %1, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %78, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %79, i32 %85)
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** @section_names, align 8
  %89 = load i32, i32* %1, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %87, %93
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %1, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** @section_names, align 8
  %99 = load i32, i32* %1, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %96, i32 %97, i32 %103)
  br label %105

105:                                              ; preds = %72, %47
  %106 = load i64, i64* %3, align 8
  %107 = call i32 @SetupCloseInfFile(i64 %106)
  br label %108

108:                                              ; preds = %105, %30
  %109 = load i32, i32* %1, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %1, align 4
  br label %6

111:                                              ; preds = %6
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @test_file_contents(i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @SetupGetLineCountA(i64, i32) #1

declare dso_local i32 @trace(i8*, i64, i32, i32) #1

declare dso_local i32 @SetupCloseInfFile(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
