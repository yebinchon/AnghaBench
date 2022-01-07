; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_heap.c_test_aligned.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_heap.c_test_aligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"msvcrt.dll\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"_aligned_free\00", align 1
@p_aligned_free = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"_aligned_malloc\00", align 1
@p_aligned_malloc = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"_aligned_offset_malloc\00", align 1
@p_aligned_offset_malloc = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"_aligned_realloc\00", align 1
@p_aligned_realloc = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"_aligned_offset_realloc\00", align 1
@p_aligned_offset_realloc = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"aligned memory tests skipped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_aligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_aligned() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32* @GetModuleHandleA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %2, i32** %1, align 8
  %3 = load i32*, i32** %1, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %188

6:                                                ; preds = %0
  %7 = load i32*, i32** %1, align 8
  %8 = call i64 @GetProcAddress(i32* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %9 = inttoptr i64 %8 to i8*
  store i8* %9, i8** @p_aligned_free, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = call i64 @GetProcAddress(i32* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** @p_aligned_malloc, align 8
  %13 = load i32*, i32** %1, align 8
  %14 = call i64 @GetProcAddress(i32* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** @p_aligned_offset_malloc, align 8
  %16 = load i32*, i32** %1, align 8
  %17 = call i64 @GetProcAddress(i32* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** @p_aligned_realloc, align 8
  %19 = load i32*, i32** %1, align 8
  %20 = call i64 @GetProcAddress(i32* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** @p_aligned_offset_realloc, align 8
  %22 = load i8*, i8** @p_aligned_free, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %6
  %25 = load i8*, i8** @p_aligned_malloc, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load i8*, i8** @p_aligned_offset_malloc, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i8*, i8** @p_aligned_realloc, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i8*, i8** @p_aligned_offset_realloc, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33, %30, %27, %24, %6
  %37 = call i32 @skip(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %188

38:                                               ; preds = %33
  %39 = call i32 @test_aligned_malloc(i32 256, i32 0)
  %40 = call i32 @test_aligned_malloc(i32 256, i32 1)
  %41 = call i32 @test_aligned_malloc(i32 256, i32 2)
  %42 = call i32 @test_aligned_malloc(i32 256, i32 3)
  %43 = call i32 @test_aligned_malloc(i32 256, i32 4)
  %44 = call i32 @test_aligned_malloc(i32 256, i32 8)
  %45 = call i32 @test_aligned_malloc(i32 256, i32 16)
  %46 = call i32 @test_aligned_malloc(i32 256, i32 32)
  %47 = call i32 @test_aligned_malloc(i32 256, i32 64)
  %48 = call i32 @test_aligned_malloc(i32 256, i32 127)
  %49 = call i32 @test_aligned_malloc(i32 256, i32 128)
  %50 = call i32 @test_aligned_offset_malloc(i32 256, i32 0, i32 0)
  %51 = call i32 @test_aligned_offset_malloc(i32 256, i32 1, i32 0)
  %52 = call i32 @test_aligned_offset_malloc(i32 256, i32 2, i32 0)
  %53 = call i32 @test_aligned_offset_malloc(i32 256, i32 3, i32 0)
  %54 = call i32 @test_aligned_offset_malloc(i32 256, i32 4, i32 0)
  %55 = call i32 @test_aligned_offset_malloc(i32 256, i32 8, i32 0)
  %56 = call i32 @test_aligned_offset_malloc(i32 256, i32 16, i32 0)
  %57 = call i32 @test_aligned_offset_malloc(i32 256, i32 32, i32 0)
  %58 = call i32 @test_aligned_offset_malloc(i32 256, i32 64, i32 0)
  %59 = call i32 @test_aligned_offset_malloc(i32 256, i32 127, i32 0)
  %60 = call i32 @test_aligned_offset_malloc(i32 256, i32 128, i32 0)
  %61 = call i32 @test_aligned_offset_malloc(i32 256, i32 0, i32 4)
  %62 = call i32 @test_aligned_offset_malloc(i32 256, i32 1, i32 4)
  %63 = call i32 @test_aligned_offset_malloc(i32 256, i32 2, i32 4)
  %64 = call i32 @test_aligned_offset_malloc(i32 256, i32 3, i32 4)
  %65 = call i32 @test_aligned_offset_malloc(i32 256, i32 4, i32 4)
  %66 = call i32 @test_aligned_offset_malloc(i32 256, i32 8, i32 4)
  %67 = call i32 @test_aligned_offset_malloc(i32 256, i32 16, i32 4)
  %68 = call i32 @test_aligned_offset_malloc(i32 256, i32 32, i32 4)
  %69 = call i32 @test_aligned_offset_malloc(i32 256, i32 64, i32 4)
  %70 = call i32 @test_aligned_offset_malloc(i32 256, i32 127, i32 4)
  %71 = call i32 @test_aligned_offset_malloc(i32 256, i32 128, i32 4)
  %72 = call i32 @test_aligned_offset_malloc(i32 256, i32 8, i32 7)
  %73 = call i32 @test_aligned_offset_malloc(i32 256, i32 8, i32 9)
  %74 = call i32 @test_aligned_offset_malloc(i32 256, i32 8, i32 16)
  %75 = call i32 @test_aligned_offset_malloc(i32 256, i32 8, i32 17)
  %76 = call i32 @test_aligned_offset_malloc(i32 256, i32 8, i32 254)
  %77 = call i32 @test_aligned_offset_malloc(i32 256, i32 8, i32 255)
  %78 = call i32 @test_aligned_offset_malloc(i32 256, i32 8, i32 256)
  %79 = call i32 @test_aligned_offset_malloc(i32 256, i32 8, i32 512)
  %80 = call i32 @test_aligned_realloc(i32 256, i32 512, i32 0)
  %81 = call i32 @test_aligned_realloc(i32 256, i32 128, i32 0)
  %82 = call i32 @test_aligned_realloc(i32 256, i32 512, i32 4)
  %83 = call i32 @test_aligned_realloc(i32 256, i32 128, i32 4)
  %84 = call i32 @test_aligned_realloc(i32 256, i32 512, i32 8)
  %85 = call i32 @test_aligned_realloc(i32 256, i32 128, i32 8)
  %86 = call i32 @test_aligned_realloc(i32 256, i32 512, i32 16)
  %87 = call i32 @test_aligned_realloc(i32 256, i32 128, i32 16)
  %88 = call i32 @test_aligned_realloc(i32 256, i32 512, i32 32)
  %89 = call i32 @test_aligned_realloc(i32 256, i32 128, i32 32)
  %90 = call i32 @test_aligned_realloc(i32 256, i32 512, i32 64)
  %91 = call i32 @test_aligned_realloc(i32 256, i32 128, i32 64)
  %92 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 0, i32 0)
  %93 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 0, i32 0)
  %94 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 4, i32 0)
  %95 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 4, i32 0)
  %96 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 8, i32 0)
  %97 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 8, i32 0)
  %98 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 16, i32 0)
  %99 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 16, i32 0)
  %100 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 32, i32 0)
  %101 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 32, i32 0)
  %102 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 64, i32 0)
  %103 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 64, i32 0)
  %104 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 0, i32 4)
  %105 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 0, i32 4)
  %106 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 4, i32 4)
  %107 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 4, i32 4)
  %108 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 8, i32 4)
  %109 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 8, i32 4)
  %110 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 16, i32 4)
  %111 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 16, i32 4)
  %112 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 32, i32 4)
  %113 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 32, i32 4)
  %114 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 64, i32 4)
  %115 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 64, i32 4)
  %116 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 0, i32 8)
  %117 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 0, i32 8)
  %118 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 4, i32 8)
  %119 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 4, i32 8)
  %120 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 8, i32 8)
  %121 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 8, i32 8)
  %122 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 16, i32 8)
  %123 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 16, i32 8)
  %124 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 32, i32 8)
  %125 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 32, i32 8)
  %126 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 64, i32 8)
  %127 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 64, i32 8)
  %128 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 0, i32 16)
  %129 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 0, i32 16)
  %130 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 4, i32 16)
  %131 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 4, i32 16)
  %132 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 8, i32 16)
  %133 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 8, i32 16)
  %134 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 16, i32 16)
  %135 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 16, i32 16)
  %136 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 32, i32 16)
  %137 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 32, i32 16)
  %138 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 64, i32 16)
  %139 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 64, i32 16)
  %140 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 0, i32 32)
  %141 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 0, i32 32)
  %142 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 4, i32 32)
  %143 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 4, i32 32)
  %144 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 8, i32 32)
  %145 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 8, i32 32)
  %146 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 16, i32 32)
  %147 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 16, i32 32)
  %148 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 32, i32 32)
  %149 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 32, i32 32)
  %150 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 64, i32 32)
  %151 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 64, i32 32)
  %152 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 0, i32 64)
  %153 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 0, i32 64)
  %154 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 4, i32 64)
  %155 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 4, i32 64)
  %156 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 8, i32 64)
  %157 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 8, i32 64)
  %158 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 16, i32 64)
  %159 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 16, i32 64)
  %160 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 32, i32 64)
  %161 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 32, i32 64)
  %162 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 64, i32 64)
  %163 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 64, i32 64)
  %164 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 0, i32 96)
  %165 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 0, i32 96)
  %166 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 4, i32 96)
  %167 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 4, i32 96)
  %168 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 8, i32 96)
  %169 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 8, i32 96)
  %170 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 16, i32 96)
  %171 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 16, i32 96)
  %172 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 32, i32 96)
  %173 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 32, i32 96)
  %174 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 64, i32 96)
  %175 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 64, i32 96)
  %176 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 0, i32 112)
  %177 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 0, i32 112)
  %178 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 4, i32 112)
  %179 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 4, i32 112)
  %180 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 8, i32 112)
  %181 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 8, i32 112)
  %182 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 16, i32 112)
  %183 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 16, i32 112)
  %184 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 32, i32 112)
  %185 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 32, i32 112)
  %186 = call i32 @test_aligned_offset_realloc(i32 256, i32 512, i32 64, i32 112)
  %187 = call i32 @test_aligned_offset_realloc(i32 256, i32 128, i32 64, i32 112)
  br label %188

188:                                              ; preds = %38, %36, %5
  ret void
}

declare dso_local i32* @GetModuleHandleA(i8*) #1

declare dso_local i64 @GetProcAddress(i32*, i8*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @test_aligned_malloc(i32, i32) #1

declare dso_local i32 @test_aligned_offset_malloc(i32, i32, i32) #1

declare dso_local i32 @test_aligned_realloc(i32, i32, i32) #1

declare dso_local i32 @test_aligned_offset_realloc(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
