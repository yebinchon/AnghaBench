; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/i386/extr_i386-dis.c_ckprefix.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/i386/extr_i386-dis.c_ckprefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rex = common dso_local global i32 0, align 4
@prefixes = common dso_local global i64 0, align 8
@used_prefixes = common dso_local global i64 0, align 8
@rex_used = common dso_local global i64 0, align 8
@the_info = common dso_local global i32 0, align 4
@codep = common dso_local global i32* null, align 8
@mode_64bit = common dso_local global i32 0, align 4
@PREFIX_REPZ = common dso_local global i64 0, align 8
@PREFIX_REPNZ = common dso_local global i64 0, align 8
@PREFIX_LOCK = common dso_local global i64 0, align 8
@PREFIX_CS = common dso_local global i64 0, align 8
@PREFIX_SS = common dso_local global i64 0, align 8
@PREFIX_DS = common dso_local global i64 0, align 8
@PREFIX_ES = common dso_local global i64 0, align 8
@PREFIX_FS = common dso_local global i64 0, align 8
@PREFIX_GS = common dso_local global i64 0, align 8
@PREFIX_DATA = common dso_local global i64 0, align 8
@PREFIX_ADDR = common dso_local global i64 0, align 8
@PREFIX_FWAIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ckprefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ckprefix() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* @rex, align 4
  store i64 0, i64* @prefixes, align 8
  store i64 0, i64* @used_prefixes, align 8
  store i64 0, i64* @rex_used, align 8
  br label %2

2:                                                ; preds = %0, %81
  %3 = load i32, i32* @the_info, align 4
  %4 = load i32*, i32** @codep, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 1
  %6 = call i32 @FETCH_DATA(i32 %3, i32* %5)
  store i32 0, i32* %1, align 4
  %7 = load i32*, i32** @codep, align 8
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %72 [
    i32 64, label %9
    i32 65, label %9
    i32 66, label %9
    i32 67, label %9
    i32 68, label %9
    i32 69, label %9
    i32 70, label %9
    i32 71, label %9
    i32 72, label %9
    i32 73, label %9
    i32 74, label %9
    i32 75, label %9
    i32 76, label %9
    i32 77, label %9
    i32 78, label %9
    i32 79, label %9
    i32 243, label %17
    i32 242, label %21
    i32 240, label %25
    i32 46, label %29
    i32 54, label %33
    i32 62, label %37
    i32 38, label %41
    i32 100, label %45
    i32 101, label %49
    i32 102, label %53
    i32 103, label %57
    i32 128, label %61
  ]

9:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %10 = load i32, i32* @mode_64bit, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32*, i32** @codep, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %1, align 4
  br label %16

15:                                               ; preds = %9
  br label %85

16:                                               ; preds = %12
  br label %73

17:                                               ; preds = %2
  %18 = load i64, i64* @PREFIX_REPZ, align 8
  %19 = load i64, i64* @prefixes, align 8
  %20 = or i64 %19, %18
  store i64 %20, i64* @prefixes, align 8
  br label %73

21:                                               ; preds = %2
  %22 = load i64, i64* @PREFIX_REPNZ, align 8
  %23 = load i64, i64* @prefixes, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* @prefixes, align 8
  br label %73

25:                                               ; preds = %2
  %26 = load i64, i64* @PREFIX_LOCK, align 8
  %27 = load i64, i64* @prefixes, align 8
  %28 = or i64 %27, %26
  store i64 %28, i64* @prefixes, align 8
  br label %73

29:                                               ; preds = %2
  %30 = load i64, i64* @PREFIX_CS, align 8
  %31 = load i64, i64* @prefixes, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* @prefixes, align 8
  br label %73

33:                                               ; preds = %2
  %34 = load i64, i64* @PREFIX_SS, align 8
  %35 = load i64, i64* @prefixes, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* @prefixes, align 8
  br label %73

37:                                               ; preds = %2
  %38 = load i64, i64* @PREFIX_DS, align 8
  %39 = load i64, i64* @prefixes, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* @prefixes, align 8
  br label %73

41:                                               ; preds = %2
  %42 = load i64, i64* @PREFIX_ES, align 8
  %43 = load i64, i64* @prefixes, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* @prefixes, align 8
  br label %73

45:                                               ; preds = %2
  %46 = load i64, i64* @PREFIX_FS, align 8
  %47 = load i64, i64* @prefixes, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* @prefixes, align 8
  br label %73

49:                                               ; preds = %2
  %50 = load i64, i64* @PREFIX_GS, align 8
  %51 = load i64, i64* @prefixes, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* @prefixes, align 8
  br label %73

53:                                               ; preds = %2
  %54 = load i64, i64* @PREFIX_DATA, align 8
  %55 = load i64, i64* @prefixes, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* @prefixes, align 8
  br label %73

57:                                               ; preds = %2
  %58 = load i64, i64* @PREFIX_ADDR, align 8
  %59 = load i64, i64* @prefixes, align 8
  %60 = or i64 %59, %58
  store i64 %60, i64* @prefixes, align 8
  br label %73

61:                                               ; preds = %2
  %62 = load i64, i64* @prefixes, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i64, i64* @PREFIX_FWAIT, align 8
  %66 = load i64, i64* @prefixes, align 8
  %67 = or i64 %66, %65
  store i64 %67, i64* @prefixes, align 8
  %68 = load i32*, i32** @codep, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** @codep, align 8
  br label %85

70:                                               ; preds = %61
  %71 = load i64, i64* @PREFIX_FWAIT, align 8
  store i64 %71, i64* @prefixes, align 8
  br label %73

72:                                               ; preds = %2
  br label %85

73:                                               ; preds = %70, %57, %53, %49, %45, %41, %37, %33, %29, %25, %21, %17, %16
  %74 = load i32, i32* @rex, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i32, i32* @rex, align 4
  %78 = call i8* @prefix_name(i32 %77, i32 0)
  %79 = call i32 @oappend(i8* %78)
  %80 = call i32 @oappend(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %76, %73
  %82 = load i32, i32* %1, align 4
  store i32 %82, i32* @rex, align 4
  %83 = load i32*, i32** @codep, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** @codep, align 8
  br label %2

85:                                               ; preds = %72, %64, %15
  ret void
}

declare dso_local i32 @FETCH_DATA(i32, i32*) #1

declare dso_local i32 @oappend(i8*) #1

declare dso_local i8* @prefix_name(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
