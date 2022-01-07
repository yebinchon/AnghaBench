; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_wctomb.c_wcstombs_dbcs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_wctomb.c_wcstombs_dbcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbcs_table = type { i16*, i16* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dbcs_table*, i32*, i32, i8*, i32)* @wcstombs_dbcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcstombs_dbcs(%struct.dbcs_table* %0, i32* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dbcs_table*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i16*, align 8
  %13 = alloca i16*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  store %struct.dbcs_table* %0, %struct.dbcs_table** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.dbcs_table*, %struct.dbcs_table** %7, align 8
  %17 = getelementptr inbounds %struct.dbcs_table, %struct.dbcs_table* %16, i32 0, i32 0
  %18 = load i16*, i16** %17, align 8
  store i16* %18, i16** %12, align 8
  %19 = load %struct.dbcs_table*, %struct.dbcs_table** %7, align 8
  %20 = getelementptr inbounds %struct.dbcs_table, %struct.dbcs_table* %19, i32 0, i32 1
  %21 = load i16*, i16** %20, align 8
  store i16* %21, i16** %13, align 8
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %14, align 4
  br label %23

23:                                               ; preds = %70, %5
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  br i1 %30, label %31, label %77

31:                                               ; preds = %29
  %32 = load i16*, i16** %12, align 8
  %33 = load i16*, i16** %13, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i16, i16* %33, i64 %37
  %39 = load i16, i16* %38, align 2
  %40 = zext i16 %39 to i32
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 255
  %44 = add nsw i32 %40, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i16, i16* %32, i64 %45
  %47 = load i16, i16* %46, align 2
  store i16 %47, i16* %15, align 2
  %48 = load i16, i16* %15, align 2
  %49 = zext i16 %48 to i32
  %50 = and i32 %49, 65280
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %31
  %53 = load i32, i32* %14, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %77

56:                                               ; preds = %52
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %14, align 4
  %59 = load i16, i16* %15, align 2
  %60 = zext i16 %59 to i32
  %61 = ashr i32 %60, 8
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %10, align 8
  store i8 %62, i8* %63, align 1
  br label %65

65:                                               ; preds = %56, %31
  %66 = load i16, i16* %15, align 2
  %67 = trunc i16 %66 to i8
  %68 = load i8*, i8** %10, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %10, align 8
  store i8 %67, i8* %68, align 1
  br label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %9, align 4
  %74 = add i32 %73, -1
  store i32 %74, i32* %9, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %8, align 8
  br label %23

77:                                               ; preds = %55, %29
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 -1, i32* %6, align 4
  br label %85

81:                                               ; preds = %77
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %14, align 4
  %84 = sub i32 %82, %83
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %81, %80
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
