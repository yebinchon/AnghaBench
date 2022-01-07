; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_mbtowc.c_mbstowcs_sbcs_decompose.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_mbtowc.c_mbstowcs_sbcs_decompose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbcs_table = type { i32*, i32* }

@MB_USEGLYPHCHARS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbcs_table*, i32, i8*, i32, i32*, i32)* @mbstowcs_sbcs_decompose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbstowcs_sbcs_decompose(%struct.sbcs_table* %0, i32 %1, i8* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sbcs_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [4 x i32], align 16
  %17 = alloca i32, align 4
  store %struct.sbcs_table* %0, %struct.sbcs_table** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @MB_USEGLYPHCHARS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %6
  %23 = load %struct.sbcs_table*, %struct.sbcs_table** %8, align 8
  %24 = getelementptr inbounds %struct.sbcs_table, %struct.sbcs_table* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  br label %30

26:                                               ; preds = %6
  %27 = load %struct.sbcs_table*, %struct.sbcs_table** %8, align 8
  %28 = getelementptr inbounds %struct.sbcs_table, %struct.sbcs_table* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i32* [ %25, %22 ], [ %29, %26 ]
  store i32* %31, i32** %14, align 8
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %56, label %34

34:                                               ; preds = %30
  store i32 0, i32* %15, align 4
  br label %35

35:                                               ; preds = %49, %34
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %35
  %39 = load i32*, i32** %14, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %46 = call i32 @wine_decompose(i32 %44, i32* %45, i32 4)
  %47 = load i32, i32* %15, align 4
  %48 = add i32 %47, %46
  store i32 %48, i32* %15, align 4
  br label %49

49:                                               ; preds = %38
  %50 = load i32, i32* %11, align 4
  %51 = add i32 %50, -1
  store i32 %51, i32* %11, align 4
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %10, align 8
  br label %35

54:                                               ; preds = %35
  %55 = load i32, i32* %15, align 4
  store i32 %55, i32* %7, align 4
  br label %100

56:                                               ; preds = %30
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %15, align 4
  br label %58

58:                                               ; preds = %87, %56
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %15, align 4
  %63 = icmp ne i32 %62, 0
  br label %64

64:                                               ; preds = %61, %58
  %65 = phi i1 [ false, %58 ], [ %63, %61 ]
  br i1 %65, label %66, label %92

66:                                               ; preds = %64
  %67 = load i32*, i32** %14, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @wine_decompose(i32 %72, i32* %73, i32 %74)
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %66
  br label %92

79:                                               ; preds = %66
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %15, align 4
  %82 = sub i32 %81, %80
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %17, align 4
  %84 = load i32*, i32** %12, align 8
  %85 = zext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %12, align 8
  br label %87

87:                                               ; preds = %79
  %88 = load i32, i32* %11, align 4
  %89 = add i32 %88, -1
  store i32 %89, i32* %11, align 4
  %90 = load i8*, i8** %10, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %10, align 8
  br label %58

92:                                               ; preds = %78, %64
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 -1, i32* %7, align 4
  br label %100

96:                                               ; preds = %92
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %15, align 4
  %99 = sub i32 %97, %98
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %96, %95, %54
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local i32 @wine_decompose(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
