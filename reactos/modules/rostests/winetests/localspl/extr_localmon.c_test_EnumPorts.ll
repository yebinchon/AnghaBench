; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/localspl/extr_localmon.c_test_EnumPorts.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/localspl/extr_localmon.c_test_EnumPorts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"(%d) returned %d with %u and %d, %d (expected 0, 0)\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [83 x i8] c"(%d) returned %d with %u and %d, %d (expected '0' with ERROR_INSUFFICIENT_BUFFER)\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"(%d) returned %d with %u and %d, %d (expected '!= 0')\0A\00", align 1
@emptyW = common dso_local global i32* null, align 8
@server_does_not_existW = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_EnumPorts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_EnumPorts() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %135, %0
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %138

10:                                               ; preds = %7
  store i32 -559038737, i32* %4, align 4
  store i32 -559038737, i32* %6, align 4
  %11 = call i32 @SetLastError(i32 -559038737)
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @pEnumPorts(i32* null, i32 %12, i32* null, i32 0, i32* %4, i32* %6)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* %2, align 4
  %18 = icmp sgt i32 %17, 2
  br i1 %18, label %19, label %34

19:                                               ; preds = %16, %10
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i1 [ false, %19 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* %1, align 4
  %30 = call i64 (...) @GetLastError()
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i64 %30, i32 %31, i32 %32)
  br label %135

34:                                               ; preds = %16
  %35 = load i32, i32* %1, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = call i64 (...) @GetLastError()
  %39 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %40 = icmp eq i64 %38, %39
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i1 [ false, %34 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* %1, align 4
  %46 = call i64 (...) @GetLastError()
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45, i64 %46, i32 %47, i32 %48)
  %50 = call i32 (...) @GetProcessHeap()
  %51 = load i32, i32* %4, align 4
  %52 = mul nsw i32 %51, 2
  %53 = call i32* @HeapAlloc(i32 %50, i32 0, i32 %52)
  store i32* %53, i32** %3, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %41
  br label %135

57:                                               ; preds = %41
  store i32 -559038737, i32* %5, align 4
  store i32 -559038737, i32* %6, align 4
  %58 = call i32 @SetLastError(i32 -559038737)
  %59 = load i32, i32* %2, align 4
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @pEnumPorts(i32* null, i32 %59, i32* %60, i32 %61, i32* %5, i32* %6)
  store i32 %62, i32* %1, align 4
  %63 = load i32, i32* %1, align 4
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* %1, align 4
  %66 = call i64 (...) @GetLastError()
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %65, i64 %66, i32 %67, i32 %68)
  store i32 -559038737, i32* %5, align 4
  store i32 -559038737, i32* %6, align 4
  %70 = call i32 @SetLastError(i32 -559038737)
  %71 = load i32, i32* %2, align 4
  %72 = load i32*, i32** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  %75 = call i32 @pEnumPorts(i32* null, i32 %71, i32* %72, i32 %74, i32* %5, i32* %6)
  store i32 %75, i32* %1, align 4
  %76 = load i32, i32* %1, align 4
  %77 = load i32, i32* %2, align 4
  %78 = load i32, i32* %1, align 4
  %79 = call i64 (...) @GetLastError()
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %78, i64 %79, i32 %80, i32 %81)
  store i32 -559038737, i32* %5, align 4
  store i32 -559038737, i32* %6, align 4
  %83 = call i32 @SetLastError(i32 -559038737)
  %84 = load i32, i32* %2, align 4
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sub nsw i32 %86, 1
  %88 = call i32 @pEnumPorts(i32* null, i32 %84, i32* %85, i32 %87, i32* %5, i32* %6)
  store i32 %88, i32* %1, align 4
  %89 = load i32, i32* %1, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %57
  %92 = call i64 (...) @GetLastError()
  %93 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %94 = icmp eq i64 %92, %93
  br label %95

95:                                               ; preds = %91, %57
  %96 = phi i1 [ false, %57 ], [ %94, %91 ]
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %2, align 4
  %99 = load i32, i32* %1, align 4
  %100 = call i64 (...) @GetLastError()
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @ok(i32 %97, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %99, i64 %100, i32 %101, i32 %102)
  store i32 -559038737, i32* %5, align 4
  store i32 -559038737, i32* %6, align 4
  %104 = call i32 @SetLastError(i32 -559038737)
  %105 = load i32*, i32** @emptyW, align 8
  %106 = load i32, i32* %2, align 4
  %107 = load i32*, i32** %3, align 8
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, 1
  %110 = call i32 @pEnumPorts(i32* %105, i32 %106, i32* %107, i32 %109, i32* %5, i32* %6)
  store i32 %110, i32* %1, align 4
  %111 = load i32, i32* %1, align 4
  %112 = load i32, i32* %2, align 4
  %113 = load i32, i32* %1, align 4
  %114 = call i64 (...) @GetLastError()
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @ok(i32 %111, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %112, i32 %113, i64 %114, i32 %115, i32 %116)
  store i32 -559038737, i32* %5, align 4
  store i32 -559038737, i32* %6, align 4
  %118 = call i32 @SetLastError(i32 -559038737)
  %119 = load i32*, i32** @server_does_not_existW, align 8
  %120 = load i32, i32* %2, align 4
  %121 = load i32*, i32** %3, align 8
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, 1
  %124 = call i32 @pEnumPorts(i32* %119, i32 %120, i32* %121, i32 %123, i32* %5, i32* %6)
  store i32 %124, i32* %1, align 4
  %125 = load i32, i32* %1, align 4
  %126 = load i32, i32* %2, align 4
  %127 = load i32, i32* %1, align 4
  %128 = call i64 (...) @GetLastError()
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @ok(i32 %125, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %126, i32 %127, i64 %128, i32 %129, i32 %130)
  %132 = call i32 (...) @GetProcessHeap()
  %133 = load i32*, i32** %3, align 8
  %134 = call i32 @HeapFree(i32 %132, i32 0, i32* %133)
  br label %135

135:                                              ; preds = %95, %56, %25
  %136 = load i32, i32* %2, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %2, align 4
  br label %7

138:                                              ; preds = %7
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @pEnumPorts(i32*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, i64, i32, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
