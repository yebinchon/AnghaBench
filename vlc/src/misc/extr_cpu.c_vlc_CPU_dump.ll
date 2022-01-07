; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_cpu.c_vlc_CPU_dump.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_cpu.c_vlc_CPU_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_memstream = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"MMX \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"MMXEXT \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"SSE \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"SSE2 \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"SSE3 \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"SSSE3 \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"SSE4.1 \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"SSE4.2 \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"SSE4A \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"AVX \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"AVX2 \00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"3DNow! \00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"XOP \00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"FMA4 \00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"CPU has capabilities %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_CPU_dump(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.vlc_memstream, align 4
  store i32* %0, i32** %2, align 8
  %4 = call i32 @vlc_memstream_open(%struct.vlc_memstream* %3)
  %5 = call i64 (...) @vlc_CPU_MMX()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %1
  %10 = call i64 (...) @vlc_CPU_MMXEXT()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %9
  %15 = call i64 (...) @vlc_CPU_SSE()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %14
  %20 = call i64 (...) @vlc_CPU_SSE2()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %19
  %25 = call i64 (...) @vlc_CPU_SSE3()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %24
  %30 = call i64 (...) @vlc_CPU_SSSE3()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29
  %35 = call i64 (...) @vlc_CPU_SSE4_1()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %34
  %40 = call i64 (...) @vlc_CPU_SSE4_2()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %39
  %45 = call i64 (...) @vlc_CPU_SSE4A()
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %44
  %50 = call i64 (...) @vlc_CPU_AVX()
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %49
  %55 = call i64 (...) @vlc_CPU_AVX2()
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %54
  %60 = call i64 (...) @vlc_CPU_3dNOW()
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %59
  %65 = call i64 (...) @vlc_CPU_XOP()
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %64
  %70 = call i64 (...) @vlc_CPU_FMA4()
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %69
  %75 = call i64 @vlc_memstream_close(%struct.vlc_memstream* %3)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i32*, i32** %2, align 8
  %79 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %3, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @msg_Dbg(i32* %78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 %80)
  %82 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %3, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @free(i32 %83)
  br label %85

85:                                               ; preds = %77, %74
  ret void
}

declare dso_local i32 @vlc_memstream_open(%struct.vlc_memstream*) #1

declare dso_local i64 @vlc_CPU_MMX(...) #1

declare dso_local i32 @vlc_memstream_puts(%struct.vlc_memstream*, i8*) #1

declare dso_local i64 @vlc_CPU_MMXEXT(...) #1

declare dso_local i64 @vlc_CPU_SSE(...) #1

declare dso_local i64 @vlc_CPU_SSE2(...) #1

declare dso_local i64 @vlc_CPU_SSE3(...) #1

declare dso_local i64 @vlc_CPU_SSSE3(...) #1

declare dso_local i64 @vlc_CPU_SSE4_1(...) #1

declare dso_local i64 @vlc_CPU_SSE4_2(...) #1

declare dso_local i64 @vlc_CPU_SSE4A(...) #1

declare dso_local i64 @vlc_CPU_AVX(...) #1

declare dso_local i64 @vlc_CPU_AVX2(...) #1

declare dso_local i64 @vlc_CPU_3dNOW(...) #1

declare dso_local i64 @vlc_CPU_XOP(...) #1

declare dso_local i64 @vlc_CPU_FMA4(...) #1

declare dso_local i64 @vlc_memstream_close(%struct.vlc_memstream*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
