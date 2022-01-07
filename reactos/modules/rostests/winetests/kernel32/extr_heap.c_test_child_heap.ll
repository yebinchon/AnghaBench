; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_heap.c_test_child_heap.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_heap.c_test_child_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.heap_layout = type { i32, i32, i32 }

@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"SYSTEM\\CurrentControlSet\\Control\\Session Manager\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"GlobalFlag\00", align 1
@REG_DWORD = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"global flags not set\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"%s: got global flags %08x expected %08x\0A\00", align 1
@HEAP_GROWABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"%s: got heap flags %08x\0A\00", align 1
@FLG_HEAP_PAGE_ALLOCS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"%s: got heap flags 0xeeeeeeee without page alloc\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"%s: got heap flags %08x expected %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"%s: got heap force flags %08x expected %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_child_heap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_child_heap(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.heap_layout*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = call %struct.heap_layout* (...) @GetProcessHeap()
  store %struct.heap_layout* %10, %struct.heap_layout** %3, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @strtoul(i8* %11, i32 0, i32 16)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, -559038737
  br i1 %14, label %15, label %46

15:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %16 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %17 = call i32 @RegOpenKeyA(i32 %16, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32* %6)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %45, label %19

19:                                               ; preds = %15
  store i32 32, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %22 = bitcast i8* %21 to i32*
  %23 = call i32 @RegQueryValueExA(i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* %8, i32* %22, i32* %9)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @REG_DWORD, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %31 = bitcast i8* %30 to i32*
  %32 = load i32, i32* %31, align 16
  store i32 %32, i32* %4, align 4
  br label %41

33:                                               ; preds = %25
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @REG_SZ, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %39 = call i32 @strtoul(i8* %38, i32 0, i32 16)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %37, %33
  br label %41

41:                                               ; preds = %40, %29
  br label %42

42:                                               ; preds = %41, %19
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @RegCloseKey(i32 %43)
  br label %45

45:                                               ; preds = %42, %15
  br label %46

46:                                               ; preds = %45, %1
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = call i32 (...) @pRtlGetNtGlobalFlags()
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = call i32 @win_skip(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %141

54:                                               ; preds = %49, %46
  %55 = call i32 (...) @pRtlGetNtGlobalFlags()
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i8*, i8** %2, align 8
  %60 = call i32 (...) @pRtlGetNtGlobalFlags()
  %61 = load i32, i32* %4, align 4
  %62 = call i32 (i32, i8*, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %59, i32 %60, i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @heap_flags_from_global_flag(i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load %struct.heap_layout*, %struct.heap_layout** %3, align 8
  %66 = getelementptr inbounds %struct.heap_layout, %struct.heap_layout* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @HEAP_GROWABLE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %54
  %72 = load %struct.heap_layout*, %struct.heap_layout** %3, align 8
  %73 = getelementptr inbounds %struct.heap_layout, %struct.heap_layout* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, -1114130
  br i1 %75, label %76, label %90

76:                                               ; preds = %71, %54
  %77 = load %struct.heap_layout*, %struct.heap_layout** %3, align 8
  %78 = getelementptr inbounds %struct.heap_layout, %struct.heap_layout* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @HEAP_GROWABLE, align 4
  %81 = xor i32 %80, -1
  %82 = and i32 %79, %81
  %83 = icmp eq i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = load i8*, i8** %2, align 8
  %86 = load %struct.heap_layout*, %struct.heap_layout** %3, align 8
  %87 = getelementptr inbounds %struct.heap_layout, %struct.heap_layout* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32, i8*, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %85, i32 %88)
  br label %138

90:                                               ; preds = %71
  %91 = load %struct.heap_layout*, %struct.heap_layout** %3, align 8
  %92 = getelementptr inbounds %struct.heap_layout, %struct.heap_layout* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, -286331154
  br i1 %94, label %95, label %106

95:                                               ; preds = %90
  %96 = load %struct.heap_layout*, %struct.heap_layout** %3, align 8
  %97 = getelementptr inbounds %struct.heap_layout, %struct.heap_layout* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, -286331154
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @FLG_HEAP_PAGE_ALLOCS, align 4
  %103 = and i32 %101, %102
  %104 = load i8*, i8** %2, align 8
  %105 = call i32 (i32, i8*, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i8* %104)
  br label %137

106:                                              ; preds = %95, %90
  %107 = load %struct.heap_layout*, %struct.heap_layout** %3, align 8
  %108 = getelementptr inbounds %struct.heap_layout, %struct.heap_layout* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @HEAP_GROWABLE, align 4
  %112 = or i32 %110, %111
  %113 = icmp eq i32 %109, %112
  %114 = zext i1 %113 to i32
  %115 = load i8*, i8** %2, align 8
  %116 = load %struct.heap_layout*, %struct.heap_layout** %3, align 8
  %117 = getelementptr inbounds %struct.heap_layout, %struct.heap_layout* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %5, align 4
  %120 = call i32 (i32, i8*, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %115, i32 %118, i32 %119)
  %121 = load %struct.heap_layout*, %struct.heap_layout** %3, align 8
  %122 = getelementptr inbounds %struct.heap_layout, %struct.heap_layout* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %5, align 4
  %125 = and i32 %124, -402653313
  %126 = icmp eq i32 %123, %125
  %127 = zext i1 %126 to i32
  %128 = load i8*, i8** %2, align 8
  %129 = load %struct.heap_layout*, %struct.heap_layout** %3, align 8
  %130 = getelementptr inbounds %struct.heap_layout, %struct.heap_layout* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %5, align 4
  %133 = call i32 (i32, i8*, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i8* %128, i32 %131, i32 %132)
  %134 = load %struct.heap_layout*, %struct.heap_layout** %3, align 8
  %135 = getelementptr inbounds %struct.heap_layout, %struct.heap_layout* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %106, %100
  br label %138

138:                                              ; preds = %137, %76
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @test_heap_checks(i32 %139)
  br label %141

141:                                              ; preds = %138, %52
  ret void
}

declare dso_local %struct.heap_layout* @GetProcessHeap(...) #1

declare dso_local i32 @strtoul(i8*, i32, i32) #1

declare dso_local i32 @RegOpenKeyA(i32, i8*, i32*) #1

declare dso_local i32 @RegQueryValueExA(i32, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @pRtlGetNtGlobalFlags(...) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, i8*, ...) #1

declare dso_local i32 @heap_flags_from_global_flag(i32) #1

declare dso_local i32 @test_heap_checks(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
