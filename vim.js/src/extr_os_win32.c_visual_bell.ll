; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_win32.c_visual_bell.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_win32.c_visual_bell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@g_attrCurrent = common dso_local global i32 0, align 4
@Rows = common dso_local global i32 0, align 4
@Columns = common dso_local global i32 0, align 4
@g_hConOut = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @visual_bell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @visual_bell() #0 {
  %1 = alloca %struct.TYPE_5__, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = bitcast %struct.TYPE_5__* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 8, i1 false)
  %6 = load i32, i32* @g_attrCurrent, align 4
  %7 = xor i32 %6, -1
  %8 = and i32 %7, 255
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* @Rows, align 4
  %10 = load i32, i32* @Columns, align 4
  %11 = mul nsw i32 %9, %10
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = call i32 @alloc(i32 %14)
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  br label %49

21:                                               ; preds = %0
  %22 = load i32, i32* @g_hConOut, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @Rows, align 4
  %25 = load i32, i32* @Columns, align 4
  %26 = mul nsw i32 %24, %25
  %27 = bitcast %struct.TYPE_5__* %1 to i64*
  %28 = load i64, i64* %27, align 4
  %29 = call i32 @ReadConsoleOutputAttribute(i32 %22, i32* %23, i32 %26, i64 %28, i32* %3)
  %30 = load i32, i32* @g_hConOut, align 4
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @Rows, align 4
  %33 = load i32, i32* @Columns, align 4
  %34 = mul nsw i32 %32, %33
  %35 = bitcast %struct.TYPE_5__* %1 to i64*
  %36 = load i64, i64* %35, align 4
  %37 = call i32 @FillConsoleOutputAttribute(i32 %30, i32 %31, i32 %34, i64 %36, i32* %3)
  %38 = call i32 @Sleep(i32 15)
  %39 = load i32, i32* @g_hConOut, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* @Rows, align 4
  %42 = load i32, i32* @Columns, align 4
  %43 = mul nsw i32 %41, %42
  %44 = bitcast %struct.TYPE_5__* %1 to i64*
  %45 = load i64, i64* %44, align 4
  %46 = call i32 @WriteConsoleOutputAttribute(i32 %39, i32* %40, i32 %43, i64 %45, i32* %3)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @vim_free(i32* %47)
  br label %49

49:                                               ; preds = %21, %20
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @alloc(i32) #2

declare dso_local i32 @ReadConsoleOutputAttribute(i32, i32*, i32, i64, i32*) #2

declare dso_local i32 @FillConsoleOutputAttribute(i32, i32, i32, i64, i32*) #2

declare dso_local i32 @Sleep(i32) #2

declare dso_local i32 @WriteConsoleOutputAttribute(i32, i32*, i32, i64, i32*) #2

declare dso_local i32 @vim_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
