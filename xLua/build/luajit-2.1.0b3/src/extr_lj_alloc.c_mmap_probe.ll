; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_alloc.c_mmap_probe.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_alloc.c_mmap_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mmap_probe.hint_addr = internal global i64 0, align 8
@mmap_probe.hint_prng = internal global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@LJ_ALLOC_MMAP_PROBE_MAX = common dso_local global i32 0, align 4
@MMAP_PROT = common dso_local global i32 0, align 4
@MMAP_FLAGS_PROBE = common dso_local global i32 0, align 4
@LJ_ALLOC_MBITS = common dso_local global i64 0, align 8
@LJ_ALLOC_MMAP_PROBE_LOWER = common dso_local global i64 0, align 8
@MFAIL = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@LJ_ALLOC_MMAP_PROBE_LINEAR = common dso_local global i32 0, align 4
@LJ_PAGESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @mmap_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mmap_probe(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i32, i32* @errno, align 4
  store i32 %8, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %113, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @LJ_ALLOC_MMAP_PROBE_MAX, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %116

13:                                               ; preds = %9
  %14 = load i64, i64* @mmap_probe.hint_addr, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = load i64, i64* %3, align 8
  %17 = load i32, i32* @MMAP_PROT, align 4
  %18 = load i32, i32* @MMAP_FLAGS_PROBE, align 4
  %19 = call i8* @mmap(i8* %15, i64 %16, i32 %17, i32 %18, i32 -1, i32 0)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = ptrtoint i8* %20 to i64
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @LJ_ALLOC_MBITS, align 8
  %24 = lshr i64 %22, %23
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %13
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @LJ_ALLOC_MMAP_PROBE_LOWER, align 8
  %29 = icmp uge i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %31, %32
  store i64 %33, i64* @mmap_probe.hint_addr, align 8
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* @errno, align 4
  %35 = load i8*, i8** %6, align 8
  store i8* %35, i8** %2, align 8
  br label %119

36:                                               ; preds = %26, %13
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** @MFAIL, align 8
  %39 = icmp ne i8* %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @munmap(i8* %41, i64 %42)
  br label %51

44:                                               ; preds = %36
  %45 = load i32, i32* @errno, align 4
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i8*, i8** @MFAIL, align 8
  store i8* %49, i8** %2, align 8
  br label %119

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %40
  %52 = load i64, i64* @mmap_probe.hint_addr, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @LJ_ALLOC_MMAP_PROBE_LINEAR, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i64, i64* @mmap_probe.hint_addr, align 8
  %60 = add i64 %59, 16777216
  store i64 %60, i64* @mmap_probe.hint_addr, align 8
  %61 = load i64, i64* @mmap_probe.hint_addr, align 8
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %61, %62
  %64 = load i64, i64* @LJ_ALLOC_MBITS, align 8
  %65 = lshr i64 %63, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  store i64 0, i64* @mmap_probe.hint_addr, align 8
  br label %68

68:                                               ; preds = %67, %58
  br label %113

69:                                               ; preds = %54
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @LJ_ALLOC_MMAP_PROBE_LINEAR, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i64 0, i64* @mmap_probe.hint_addr, align 8
  br label %113

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %75, %51
  %77 = load i64, i64* @mmap_probe.hint_prng, align 8
  %78 = icmp eq i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i64 @LJ_UNLIKELY(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = call i64 (...) @mmap_probe_seed()
  store i64 %83, i64* @mmap_probe.hint_prng, align 8
  br label %84

84:                                               ; preds = %82, %76
  %85 = load i64, i64* %7, align 8
  %86 = load i32, i32* @LJ_PAGESIZE, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = xor i64 %88, -1
  %90 = and i64 %85, %89
  %91 = load i64, i64* @mmap_probe.hint_addr, align 8
  %92 = xor i64 %91, %90
  store i64 %92, i64* @mmap_probe.hint_addr, align 8
  br label %93

93:                                               ; preds = %108, %84
  %94 = load i64, i64* @mmap_probe.hint_prng, align 8
  %95 = mul i64 %94, 1103515245
  %96 = add i64 %95, 12345
  store i64 %96, i64* @mmap_probe.hint_prng, align 8
  %97 = load i64, i64* @mmap_probe.hint_prng, align 8
  %98 = load i32, i32* @LJ_PAGESIZE, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 %97, %99
  %101 = load i64, i64* @mmap_probe.hint_addr, align 8
  %102 = xor i64 %101, %100
  store i64 %102, i64* @mmap_probe.hint_addr, align 8
  %103 = load i64, i64* @LJ_ALLOC_MBITS, align 8
  %104 = shl i64 1, %103
  %105 = sub i64 %104, 1
  %106 = load i64, i64* @mmap_probe.hint_addr, align 8
  %107 = and i64 %106, %105
  store i64 %107, i64* @mmap_probe.hint_addr, align 8
  br label %108

108:                                              ; preds = %93
  %109 = load i64, i64* @mmap_probe.hint_addr, align 8
  %110 = load i64, i64* @LJ_ALLOC_MMAP_PROBE_LOWER, align 8
  %111 = icmp ult i64 %109, %110
  br i1 %111, label %93, label %112

112:                                              ; preds = %108
  br label %113

113:                                              ; preds = %112, %73, %68
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %5, align 4
  br label %9

116:                                              ; preds = %9
  %117 = load i32, i32* %4, align 4
  store i32 %117, i32* @errno, align 4
  %118 = load i8*, i8** @MFAIL, align 8
  store i8* %118, i8** %2, align 8
  br label %119

119:                                              ; preds = %116, %48, %30
  %120 = load i8*, i8** %2, align 8
  ret i8* %120
}

declare dso_local i8* @mmap(i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @munmap(i8*, i64) #1

declare dso_local i64 @LJ_UNLIKELY(i32) #1

declare dso_local i64 @mmap_probe_seed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
