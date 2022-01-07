; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_testcpu.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_testcpu.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuflags = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"CPU won't do cpuid (some old i386 or i486)\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"family: %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"stdcpuflags:  0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"std2cpuflags: 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"extcpuflags:  0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"A i586 or better cpu with:\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" mmx\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" 3dnow\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c" 3dnowext\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" sse\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c" sse2\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c" sse3\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"I guess you have some i486\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpuflags, align 4
  store i32 0, i32* %1, align 4
  %4 = call i32 @getcpuflags(%struct.cpuflags* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %97

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.cpuflags, %struct.cpuflags* %3, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 3840
  %12 = ashr i32 %11, 8
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = getelementptr inbounds %struct.cpuflags, %struct.cpuflags* %3, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  %18 = getelementptr inbounds %struct.cpuflags, %struct.cpuflags* %3, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %19)
  %21 = getelementptr inbounds %struct.cpuflags, %struct.cpuflags* %3, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %22)
  %24 = bitcast %struct.cpuflags* %3 to { i64, i64 }*
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 4
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 1
  %28 = load i64, i64* %27, align 4
  %29 = call i64 @cpu_i586(i64 %26, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %94

31:                                               ; preds = %8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %33 = bitcast %struct.cpuflags* %3 to { i64, i64 }*
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 4
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 1
  %37 = load i64, i64* %36, align 4
  %38 = call i64 @cpu_mmx(i64 %35, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %31
  %43 = bitcast %struct.cpuflags* %3 to { i64, i64 }*
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 4
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %43, i32 0, i32 1
  %47 = load i64, i64* %46, align 4
  %48 = call i64 @cpu_3dnow(i64 %45, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %42
  %53 = bitcast %struct.cpuflags* %3 to { i64, i64 }*
  %54 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 4
  %56 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %53, i32 0, i32 1
  %57 = load i64, i64* %56, align 4
  %58 = call i64 @cpu_3dnowext(i64 %55, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %52
  %63 = bitcast %struct.cpuflags* %3 to { i64, i64 }*
  %64 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 4
  %66 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %63, i32 0, i32 1
  %67 = load i64, i64* %66, align 4
  %68 = call i64 @cpu_sse(i64 %65, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %62
  %73 = bitcast %struct.cpuflags* %3 to { i64, i64 }*
  %74 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 4
  %76 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %73, i32 0, i32 1
  %77 = load i64, i64* %76, align 4
  %78 = call i64 @cpu_sse2(i64 %75, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %72
  %83 = bitcast %struct.cpuflags* %3 to { i64, i64 }*
  %84 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 4
  %86 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %83, i32 0, i32 1
  %87 = load i64, i64* %86, align 4
  %88 = call i64 @cpu_sse3(i64 %85, i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %82
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %96

94:                                               ; preds = %8
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %92
  store i32 0, i32* %1, align 4
  br label %97

97:                                               ; preds = %96, %6
  %98 = load i32, i32* %1, align 4
  ret i32 %98
}

declare dso_local i32 @getcpuflags(%struct.cpuflags*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @cpu_i586(i64, i64) #1

declare dso_local i64 @cpu_mmx(i64, i64) #1

declare dso_local i64 @cpu_3dnow(i64, i64) #1

declare dso_local i64 @cpu_3dnowext(i64, i64) #1

declare dso_local i64 @cpu_sse(i64, i64) #1

declare dso_local i64 @cpu_sse2(i64, i64) #1

declare dso_local i64 @cpu_sse3(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
