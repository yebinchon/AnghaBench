; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/extr_kdb_cli.c_CountOnePageUp.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/extr_kdb_cli.c_CountOnePageUp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KdbNumberOfRowsTerminal = common dso_local global i32 0, align 4
@KdbNumberOfColsTerminal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CountOnePageUp(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load i32, i32* @KdbNumberOfRowsTerminal, align 4
  %15 = load i32, i32* @KdbNumberOfColsTerminal, align 4
  %16 = mul nsw i32 %14, %15
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %8, align 8
  %20 = sub nsw i64 %18, %19
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i64, i64* %4, align 8
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %25, %3
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = add nsw i64 %29, %30
  %32 = icmp sle i64 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %8, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i64 @memrchr(i64 %35, i8 signext 10, i32 %37)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = icmp eq i8* null, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = load i64, i64* %9, align 8
  store i64 %43, i64* %7, align 8
  br label %44

44:                                               ; preds = %42, %27
  %45 = load i32, i32* @KdbNumberOfRowsTerminal, align 4
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %12, align 8
  br label %47

47:                                               ; preds = %91, %44
  %48 = load i64, i64* %12, align 8
  %49 = add nsw i64 %48, -1
  store i64 %49, i64* %12, align 8
  %50 = icmp ne i64 %48, 0
  br i1 %50, label %51, label %92

51:                                               ; preds = %47
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %9, align 8
  %55 = sub nsw i64 %53, %54
  %56 = trunc i64 %55 to i32
  %57 = call i64 @memrchr(i64 %52, i8 signext 10, i32 %56)
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %7, align 8
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %11, align 8
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %7, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = icmp eq i8* null, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %51
  %64 = load i64, i64* %10, align 8
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = icmp eq i8* null, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i64, i64* %9, align 8
  store i64 %69, i64* %7, align 8
  br label %70

70:                                               ; preds = %68, %63
  br label %92

71:                                               ; preds = %51
  %72 = load i32, i32* @KdbNumberOfColsTerminal, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %10, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i64, i64* %7, align 8
  %77 = sub nsw i64 %75, %76
  %78 = sub nsw i64 %77, 2
  %79 = load i32, i32* @KdbNumberOfColsTerminal, align 4
  %80 = sext i32 %79 to i64
  %81 = sdiv i64 %78, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp sgt i32 %83, 1
  br i1 %84, label %85, label %91

85:                                               ; preds = %71
  %86 = load i32, i32* %13, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %12, align 8
  %90 = sub nsw i64 %89, %88
  store i64 %90, i64* %12, align 8
  br label %91

91:                                               ; preds = %85, %71
  br label %47

92:                                               ; preds = %70, %47
  %93 = load i64, i64* %7, align 8
  %94 = icmp ne i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @ASSERT(i32 %95)
  %97 = load i64, i64* %7, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %7, align 8
  %99 = load i64, i64* %7, align 8
  ret i64 %99
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @memrchr(i64, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
