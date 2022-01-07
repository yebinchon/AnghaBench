; ModuleID = '/home/carl/AnghaBench/vlc/src/linux/extr_cpu.c_vlc_CPU_init.c'
source_filename = "/home/carl/AnghaBench/vlc/src/linux/extr_cpu.c_vlc_CPU_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"/proc/cpuinfo\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"rte\00", align 1
@CPU_FLAGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"mmx\00", align 1
@VLC_CPU_MMX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"sse\00", align 1
@VLC_CPU_SSE = common dso_local global i32 0, align 4
@VLC_CPU_MMXEXT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"mmxext\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"sse2\00", align 1
@VLC_CPU_SSE2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"pni\00", align 1
@VLC_CPU_SSE3 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"ssse3\00", align 1
@VLC_CPU_SSSE3 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"sse4_1\00", align 1
@VLC_CPU_SSE4_1 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"sse4_2\00", align 1
@VLC_CPU_SSE4_2 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"sse4a\00", align 1
@VLC_CPU_SSE4A = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"avx\00", align 1
@VLC_CPU_AVX = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"avx2\00", align 1
@VLC_CPU_AVX2 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"3dnow\00", align 1
@VLC_CPU_3dNOW = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [4 x i8] c"xop\00", align 1
@VLC_CPU_XOP = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"fma4\00", align 1
@VLC_CPU_FMA4 = common dso_local global i32 0, align 4
@cpu_flags = common dso_local global i32 0, align 4
@VLC_CPU_ALTIVEC = common dso_local global i32 0, align 4
@VLC_CPU_ARM_NEON = common dso_local global i32 0, align 4
@VLC_CPU_ARM_SVE = common dso_local global i32 0, align 4
@VLC_CPU_ARMv6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vlc_CPU_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_CPU_init() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = call i32* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32* %8, i32** %1, align 8
  %9 = load i32*, i32** %1, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %159

12:                                               ; preds = %0
  store i8* null, i8** %2, align 8
  store i64 0, i64* %3, align 8
  store i32 -1, i32* %4, align 4
  br label %13

13:                                               ; preds = %145, %25, %12
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @getline(i8** %2, i64* %3, i32* %14)
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %149

17:                                               ; preds = %13
  %18 = load i8*, i8** %2, align 8
  store i8* %18, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %19 = load i8*, i8** %2, align 8
  %20 = load i32, i32* @CPU_FLAGS, align 4
  %21 = load i32, i32* @CPU_FLAGS, align 4
  %22 = call i32 @strlen(i32 %21)
  %23 = call i64 @strncmp(i8* %19, i32 %20, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %13

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %144, %26
  %28 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %28, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %145

30:                                               ; preds = %27
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @VLC_CPU_MMX, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @VLC_CPU_SSE, align 4
  %44 = load i32, i32* @VLC_CPU_MMXEXT, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %42, %38
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @VLC_CPU_MMXEXT, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @VLC_CPU_SSE2, align 4
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %60, %56
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* @VLC_CPU_SSE3, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* @VLC_CPU_SSSE3, align 4
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %76, %72
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* @VLC_CPU_SSE4_1, align 4
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %84, %80
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* @VLC_CPU_SSE4_2, align 4
  %94 = load i32, i32* %7, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %92, %88
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @strcmp(i8* %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* @VLC_CPU_SSE4A, align 4
  %102 = load i32, i32* %7, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %100, %96
  %105 = load i8*, i8** %6, align 8
  %106 = call i32 @strcmp(i8* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* @VLC_CPU_AVX, align 4
  %110 = load i32, i32* %7, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %108, %104
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 @strcmp(i8* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* @VLC_CPU_AVX2, align 4
  %118 = load i32, i32* %7, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %116, %112
  %121 = load i8*, i8** %6, align 8
  %122 = call i32 @strcmp(i8* %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* @VLC_CPU_3dNOW, align 4
  %126 = load i32, i32* %7, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %124, %120
  %129 = load i8*, i8** %6, align 8
  %130 = call i32 @strcmp(i8* %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %128
  %133 = load i32, i32* @VLC_CPU_XOP, align 4
  %134 = load i32, i32* %7, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %7, align 4
  br label %136

136:                                              ; preds = %132, %128
  %137 = load i8*, i8** %6, align 8
  %138 = call i32 @strcmp(i8* %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = load i32, i32* @VLC_CPU_FMA4, align 4
  %142 = load i32, i32* %7, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %140, %136
  br label %27

145:                                              ; preds = %27
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* %4, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %4, align 4
  br label %13

149:                                              ; preds = %13
  %150 = load i32*, i32** %1, align 8
  %151 = call i32 @fclose(i32* %150)
  %152 = load i8*, i8** %2, align 8
  %153 = call i32 @free(i8* %152)
  %154 = load i32, i32* %4, align 4
  %155 = icmp eq i32 %154, -1
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  store i32 0, i32* %4, align 4
  br label %157

157:                                              ; preds = %156, %149
  %158 = load i32, i32* %4, align 4
  store i32 %158, i32* @cpu_flags, align 4
  br label %159

159:                                              ; preds = %157, %11
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
