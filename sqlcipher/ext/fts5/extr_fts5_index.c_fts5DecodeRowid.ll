; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5DecodeRowid.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5DecodeRowid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FTS5_DATA_PAGE_B = common dso_local global i32 0, align 4
@FTS5_DATA_HEIGHT_B = common dso_local global i32 0, align 4
@FTS5_DATA_DLI_B = common dso_local global i32 0, align 4
@FTS5_DATA_ID_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*, i32*)* @fts5DecodeRowid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5DecodeRowid(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @FTS5_DATA_PAGE_B, align 4
  %13 = shl i32 1, %12
  %14 = sub nsw i32 %13, 1
  %15 = and i32 %11, %14
  %16 = load i32*, i32** %10, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @FTS5_DATA_PAGE_B, align 4
  %18 = load i32, i32* %6, align 4
  %19 = ashr i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @FTS5_DATA_HEIGHT_B, align 4
  %22 = shl i32 1, %21
  %23 = sub nsw i32 %22, 1
  %24 = and i32 %20, %23
  %25 = load i32*, i32** %9, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @FTS5_DATA_HEIGHT_B, align 4
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 1
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @FTS5_DATA_DLI_B, align 4
  %33 = load i32, i32* %6, align 4
  %34 = ashr i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @FTS5_DATA_ID_B, align 4
  %37 = shl i32 1, %36
  %38 = sub nsw i32 %37, 1
  %39 = and i32 %35, %38
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
