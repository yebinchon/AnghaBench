; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winspool/extr_info.c_test_EnumPrintProcessors.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winspool/extr_info.c_test_EnumPrintProcessors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"No Printprocessor installed\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"got %u with %u (expected '0' with ERROR_INSUFFICIENT_BUFFER)\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"got %u with %u (expected '!=0')\0A\00", align 1
@empty = common dso_local global i32* null, align 8
@invalid_env = common dso_local global i32* null, align 8
@ERROR_INVALID_ENVIRONMENT = common dso_local global i64 0, align 8
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [89 x i8] c"got %u with %u (expected '0' with ERROR_INVALID_ENVIRONMENT or ERROR_INVALID_PARAMETER)\0A\00", align 1
@RPC_X_NULL_REF_POINTER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [59 x i8] c"got %u with %u (expected '0' with RPC_X_NULL_REF_POINTER)\0A\00", align 1
@ERROR_INVALID_LEVEL = common dso_local global i64 0, align 8
@ERROR_INVALID_USER_BUFFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_EnumPrintProcessors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_EnumPrintProcessors() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 -559038737, i32* %3, align 4
  store i32 -559038737, i32* %5, align 4
  %6 = call i32 @SetLastError(i32 -559038737)
  %7 = call i32 @EnumPrintProcessorsA(i32* null, i32* null, i32 1, i32* null, i32 0, i32* %3, i32* %5)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i64 (...) @GetLastError()
  %10 = call i64 @is_spooler_deactivated(i32 %8, i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  br label %154

13:                                               ; preds = %0
  %14 = load i32, i32* %1, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = call i32 @skip(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %154

21:                                               ; preds = %16, %13
  %22 = load i32, i32* %1, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = call i64 (...) @GetLastError()
  %26 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %1, align 4
  %32 = call i64 (...) @GetLastError()
  %33 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %31, i64 %32)
  %34 = call i32 (...) @GetProcessHeap()
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 4
  %37 = call i32* @HeapAlloc(i32 %34, i32 0, i32 %36)
  store i32* %37, i32** %2, align 8
  %38 = load i32*, i32** %2, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %154

41:                                               ; preds = %28
  %42 = call i32 @SetLastError(i32 -559038737)
  store i32 -559038737, i32* %4, align 4
  %43 = load i32*, i32** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @EnumPrintProcessorsA(i32* null, i32* null, i32 1, i32* %43, i32 %44, i32* %4, i32* %5)
  store i32 %45, i32* %1, align 4
  %46 = load i32, i32* %1, align 4
  %47 = load i32, i32* %1, align 4
  %48 = call i64 (...) @GetLastError()
  %49 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %47, i64 %48)
  %50 = call i32 @SetLastError(i32 -559038737)
  store i32 -559038737, i32* %5, align 4
  store i32 -559038737, i32* %4, align 4
  %51 = load i32*, i32** %2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  %54 = call i32 @EnumPrintProcessorsA(i32* null, i32* null, i32 1, i32* %51, i32 %53, i32* %4, i32* %5)
  store i32 %54, i32* %1, align 4
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* %1, align 4
  %57 = call i64 (...) @GetLastError()
  %58 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %56, i64 %57)
  %59 = call i32 @SetLastError(i32 -559038737)
  store i32 -559038737, i32* %4, align 4
  %60 = load i32*, i32** %2, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sub nsw i32 %61, 1
  %63 = call i32 @EnumPrintProcessorsA(i32* null, i32* null, i32 1, i32* %60, i32 %62, i32* %4, i32* %5)
  store i32 %63, i32* %1, align 4
  %64 = load i32, i32* %1, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %41
  %67 = call i64 (...) @GetLastError()
  %68 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %69 = icmp eq i64 %67, %68
  br label %70

70:                                               ; preds = %66, %41
  %71 = phi i1 [ false, %41 ], [ %69, %66 ]
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %1, align 4
  %74 = call i64 (...) @GetLastError()
  %75 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %73, i64 %74)
  %76 = call i32 @SetLastError(i32 -559038737)
  store i32 -559038737, i32* %4, align 4
  %77 = load i32*, i32** @empty, align 8
  %78 = load i32*, i32** %2, align 8
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @EnumPrintProcessorsA(i32* null, i32* %77, i32 1, i32* %78, i32 %79, i32* %4, i32* %5)
  store i32 %80, i32* %1, align 4
  %81 = load i32, i32* %1, align 4
  %82 = load i32, i32* %1, align 4
  %83 = call i64 (...) @GetLastError()
  %84 = call i32 @ok(i32 %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %82, i64 %83)
  %85 = call i32 @SetLastError(i32 -559038737)
  store i32 -559038737, i32* %4, align 4
  %86 = load i32*, i32** @invalid_env, align 8
  %87 = load i32*, i32** %2, align 8
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @EnumPrintProcessorsA(i32* null, i32* %86, i32 1, i32* %87, i32 %88, i32* %4, i32* %5)
  store i32 %89, i32* %1, align 4
  %90 = load i32, i32* %1, align 4
  %91 = call i64 @broken(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %70
  %94 = call i64 (...) @GetLastError()
  %95 = load i64, i64* @ERROR_INVALID_ENVIRONMENT, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = call i64 (...) @GetLastError()
  %99 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %100 = icmp eq i64 %98, %99
  br label %101

101:                                              ; preds = %97, %93, %70
  %102 = phi i1 [ true, %93 ], [ true, %70 ], [ %100, %97 ]
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* %1, align 4
  %105 = call i64 (...) @GetLastError()
  %106 = call i32 @ok(i32 %103, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.3, i64 0, i64 0), i32 %104, i64 %105)
  %107 = call i32 @SetLastError(i32 -559038737)
  store i32 -559038737, i32* %4, align 4
  store i32 -559038737, i32* %5, align 4
  %108 = load i32*, i32** %2, align 8
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @EnumPrintProcessorsA(i32* null, i32* null, i32 1, i32* %108, i32 %109, i32* null, i32* %5)
  store i32 %110, i32* %1, align 4
  %111 = load i32, i32* %1, align 4
  %112 = call i64 @broken(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %101
  %115 = load i32, i32* %1, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %114
  %118 = call i64 (...) @GetLastError()
  %119 = load i64, i64* @RPC_X_NULL_REF_POINTER, align 8
  %120 = icmp eq i64 %118, %119
  br label %121

121:                                              ; preds = %117, %114
  %122 = phi i1 [ false, %114 ], [ %120, %117 ]
  br label %123

123:                                              ; preds = %121, %101
  %124 = phi i1 [ true, %101 ], [ %122, %121 ]
  %125 = zext i1 %124 to i32
  %126 = load i32, i32* %1, align 4
  %127 = call i64 (...) @GetLastError()
  %128 = call i32 @ok(i32 %125, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %126, i64 %127)
  store i32 -559038737, i32* %4, align 4
  store i32 -559038737, i32* %5, align 4
  %129 = call i32 @SetLastError(i32 -559038737)
  %130 = load i32*, i32** %2, align 8
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @EnumPrintProcessorsA(i32* null, i32* null, i32 1, i32* %130, i32 %131, i32* %4, i32* null)
  store i32 %132, i32* %1, align 4
  %133 = load i32, i32* %1, align 4
  %134 = call i64 @broken(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %145, label %136

136:                                              ; preds = %123
  %137 = load i32, i32* %1, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %136
  %140 = call i64 (...) @GetLastError()
  %141 = load i64, i64* @RPC_X_NULL_REF_POINTER, align 8
  %142 = icmp eq i64 %140, %141
  br label %143

143:                                              ; preds = %139, %136
  %144 = phi i1 [ false, %136 ], [ %142, %139 ]
  br label %145

145:                                              ; preds = %143, %123
  %146 = phi i1 [ true, %123 ], [ %144, %143 ]
  %147 = zext i1 %146 to i32
  %148 = load i32, i32* %1, align 4
  %149 = call i64 (...) @GetLastError()
  %150 = call i32 @ok(i32 %147, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %148, i64 %149)
  %151 = call i32 (...) @GetProcessHeap()
  %152 = load i32*, i32** %2, align 8
  %153 = call i32 @HeapFree(i32 %151, i32 0, i32* %152)
  br label %154

154:                                              ; preds = %145, %40, %19, %12
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @EnumPrintProcessorsA(i32*, i32*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i64 @is_spooler_deactivated(i32, i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, i32, i64) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
