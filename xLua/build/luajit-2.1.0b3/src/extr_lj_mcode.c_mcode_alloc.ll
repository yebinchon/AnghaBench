; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_mcode.c_mcode_alloc.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_mcode.c_mcode_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@lj_vm_exit_handler = common dso_local global i64 0, align 8
@LJ_TARGET_JUMPRANGE = common dso_local global i32 0, align 4
@MCPROT_GEN = common dso_local global i32 0, align 4
@LJ_TRERR_MCODEAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_7__*, i64)* @mcode_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mcode_alloc(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* @lj_vm_exit_handler, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = ptrtoint i8* %12 to i64
  %14 = and i64 %13, -65536
  store i64 %14, i64* %6, align 8
  %15 = load i32, i32* @LJ_TARGET_JUMPRANGE, align 4
  %16 = sub nsw i32 %15, 1
  %17 = shl i32 1, %16
  %18 = sub i32 %17, 2097152
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %7, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = sub i64 %27, %28
  br label %31

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %30, %24
  %32 = phi i64 [ %29, %24 ], [ 0, %30 ]
  store i64 %32, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %101, %31
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @LJ_TARGET_JUMPRANGE, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %104

37:                                               ; preds = %33
  %38 = load i64, i64* %8, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = call i64 @mcode_validptr(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %78

42:                                               ; preds = %37
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i32, i32* @MCPROT_GEN, align 4
  %47 = call i8* @mcode_alloc_at(%struct.TYPE_7__* %43, i64 %44, i64 %45, i32 %46)
  store i8* %47, i8** %10, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i64 @mcode_validptr(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %42
  %52 = load i8*, i8** %10, align 8
  %53 = ptrtoint i8* %52 to i64
  %54 = load i64, i64* %5, align 8
  %55 = add i64 %53, %54
  %56 = load i64, i64* %6, align 8
  %57 = sub i64 %55, %56
  %58 = load i64, i64* %7, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %67, label %60

60:                                               ; preds = %51
  %61 = load i64, i64* %6, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = ptrtoint i8* %62 to i64
  %64 = sub i64 %61, %63
  %65 = load i64, i64* %7, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %60, %51
  %68 = load i8*, i8** %10, align 8
  store i8* %68, i8** %3, align 8
  br label %108

69:                                               ; preds = %60, %42
  %70 = load i8*, i8** %10, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @mcode_free(%struct.TYPE_7__* %73, i8* %74, i64 %75)
  br label %77

77:                                               ; preds = %72, %69
  br label %78

78:                                               ; preds = %77, %37
  br label %79

79:                                               ; preds = %86, %78
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %81 = load i32, i32* @LJ_TARGET_JUMPRANGE, align 4
  %82 = sub nsw i32 %81, 16
  %83 = call i32 @LJ_PRNG_BITS(%struct.TYPE_7__* %80, i32 %82)
  %84 = shl i32 %83, 16
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %8, align 8
  br label %86

86:                                               ; preds = %79
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %5, align 8
  %89 = add i64 %87, %88
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* %7, align 8
  %92 = add i64 %90, %91
  %93 = icmp ult i64 %89, %92
  %94 = xor i1 %93, true
  br i1 %94, label %79, label %95

95:                                               ; preds = %86
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* %8, align 8
  %98 = add i64 %96, %97
  %99 = load i64, i64* %7, align 8
  %100 = sub i64 %98, %99
  store i64 %100, i64* %8, align 8
  br label %101

101:                                              ; preds = %95
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %33

104:                                              ; preds = %33
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %106 = load i32, i32* @LJ_TRERR_MCODEAL, align 4
  %107 = call i32 @lj_trace_err(%struct.TYPE_7__* %105, i32 %106)
  store i8* null, i8** %3, align 8
  br label %108

108:                                              ; preds = %104, %67
  %109 = load i8*, i8** %3, align 8
  ret i8* %109
}

declare dso_local i64 @mcode_validptr(i8*) #1

declare dso_local i8* @mcode_alloc_at(%struct.TYPE_7__*, i64, i64, i32) #1

declare dso_local i32 @mcode_free(%struct.TYPE_7__*, i8*, i64) #1

declare dso_local i32 @LJ_PRNG_BITS(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @lj_trace_err(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
