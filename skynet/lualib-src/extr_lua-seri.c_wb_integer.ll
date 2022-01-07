; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_wb_integer.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_wb_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_block = type { i32 }

@TYPE_NUMBER = common dso_local global i32 0, align 4
@TYPE_NUMBER_ZERO = common dso_local global i32 0, align 4
@TYPE_NUMBER_QWORD = common dso_local global i32 0, align 4
@TYPE_NUMBER_DWORD = common dso_local global i32 0, align 4
@TYPE_NUMBER_BYTE = common dso_local global i32 0, align 4
@TYPE_NUMBER_WORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.write_block*, i32)* @wb_integer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wb_integer(%struct.write_block* %0, i32 %1) #0 {
  %3 = alloca %struct.write_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.write_block* %0, %struct.write_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load i32, i32* @TYPE_NUMBER, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @TYPE_NUMBER_ZERO, align 4
  %23 = call i32 @COMBINE_TYPE(i32 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.write_block*, %struct.write_block** %3, align 8
  %25 = call i32 @wb_push(%struct.write_block* %24, i32* %6, i32 1)
  br label %88

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @TYPE_NUMBER_QWORD, align 4
  %33 = call i32 @COMBINE_TYPE(i32 %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %8, align 4
  %35 = load %struct.write_block*, %struct.write_block** %3, align 8
  %36 = call i32 @wb_push(%struct.write_block* %35, i32* %7, i32 1)
  %37 = load %struct.write_block*, %struct.write_block** %3, align 8
  %38 = call i32 @wb_push(%struct.write_block* %37, i32* %8, i32 4)
  br label %87

39:                                               ; preds = %26
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @TYPE_NUMBER_DWORD, align 4
  %46 = call i32 @COMBINE_TYPE(i32 %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.write_block*, %struct.write_block** %3, align 8
  %48 = call i32 @wb_push(%struct.write_block* %47, i32* %10, i32 1)
  %49 = load %struct.write_block*, %struct.write_block** %3, align 8
  %50 = call i32 @wb_push(%struct.write_block* %49, i32* %9, i32 4)
  br label %86

51:                                               ; preds = %39
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 256
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @TYPE_NUMBER_BYTE, align 4
  %57 = call i32 @COMBINE_TYPE(i32 %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load %struct.write_block*, %struct.write_block** %3, align 8
  %59 = call i32 @wb_push(%struct.write_block* %58, i32* %11, i32 1)
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %12, align 4
  %61 = load %struct.write_block*, %struct.write_block** %3, align 8
  %62 = call i32 @wb_push(%struct.write_block* %61, i32* %12, i32 4)
  br label %85

63:                                               ; preds = %51
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 65536
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @TYPE_NUMBER_WORD, align 4
  %69 = call i32 @COMBINE_TYPE(i32 %67, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load %struct.write_block*, %struct.write_block** %3, align 8
  %71 = call i32 @wb_push(%struct.write_block* %70, i32* %13, i32 1)
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %14, align 4
  %73 = load %struct.write_block*, %struct.write_block** %3, align 8
  %74 = call i32 @wb_push(%struct.write_block* %73, i32* %14, i32 4)
  br label %84

75:                                               ; preds = %63
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @TYPE_NUMBER_DWORD, align 4
  %78 = call i32 @COMBINE_TYPE(i32 %76, i32 %77)
  store i32 %78, i32* %15, align 4
  %79 = load %struct.write_block*, %struct.write_block** %3, align 8
  %80 = call i32 @wb_push(%struct.write_block* %79, i32* %15, i32 1)
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %16, align 4
  %82 = load %struct.write_block*, %struct.write_block** %3, align 8
  %83 = call i32 @wb_push(%struct.write_block* %82, i32* %16, i32 4)
  br label %84

84:                                               ; preds = %75, %66
  br label %85

85:                                               ; preds = %84, %54
  br label %86

86:                                               ; preds = %85, %42
  br label %87

87:                                               ; preds = %86, %30
  br label %88

88:                                               ; preds = %87, %20
  ret void
}

declare dso_local i32 @COMBINE_TYPE(i32, i32) #1

declare dso_local i32 @wb_push(%struct.write_block*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
