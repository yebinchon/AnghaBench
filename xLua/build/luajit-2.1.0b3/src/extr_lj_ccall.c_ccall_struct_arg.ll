; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_ccall.c_ccall_struct_arg.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_ccall.c_ccall_struct_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@CCALL_MAXSTACK = common dso_local global i64 0, align 8
@CTSIZE_PTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32*, i32*, i32*, i32)* @ccall_struct_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccall_struct_arg(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [2 x i64], align 16
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 1
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  store i64 0, i64* %18, align 16
  %19 = load i32*, i32** %9, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %22 = bitcast i64* %21 to i32*
  %23 = load i32*, i32** %12, align 8
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @CCF_ARG(i32 %24)
  %26 = call i32 @lj_cconv_ct_tv(i32* %19, i32* %20, i32* %22, i32* %23, i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %29 = load i32*, i32** %11, align 8
  %30 = call i64 @ccall_struct_reg(%struct.TYPE_4__* %27, i64* %28, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %65

32:                                               ; preds = %6
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %15, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 2, i32 1
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %16, align 8
  %43 = load i64, i64* %15, align 8
  %44 = load i64, i64* %16, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i64, i64* @CCALL_MAXSTACK, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  store i32 1, i32* %7, align 4
  br label %66

49:                                               ; preds = %32
  %50 = load i64, i64* %15, align 8
  %51 = load i64, i64* %16, align 8
  %52 = add nsw i64 %50, %51
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %15, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %61 = load i64, i64* %16, align 8
  %62 = load i64, i64* @CTSIZE_PTR, align 8
  %63 = mul nsw i64 %61, %62
  %64 = call i32 @memcpy(i32* %59, i64* %60, i64 %63)
  br label %65

65:                                               ; preds = %49, %6
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %65, %48
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @lj_cconv_ct_tv(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @CCF_ARG(i32) #1

declare dso_local i64 @ccall_struct_reg(%struct.TYPE_4__*, i64*, i32*) #1

declare dso_local i32 @memcpy(i32*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
