; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_mbtowc.c_mbstowcs_dbcs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_mbtowc.c_mbstowcs_dbcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbcs_table = type { i8*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dbcs_table*, i8*, i32, i32*, i32)* @mbstowcs_dbcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbstowcs_dbcs(%struct.dbcs_table* %0, i8* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dbcs_table*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store %struct.dbcs_table* %0, %struct.dbcs_table** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.dbcs_table*, %struct.dbcs_table** %7, align 8
  %17 = getelementptr inbounds %struct.dbcs_table, %struct.dbcs_table* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %12, align 8
  %19 = load %struct.dbcs_table*, %struct.dbcs_table** %7, align 8
  %20 = getelementptr inbounds %struct.dbcs_table, %struct.dbcs_table* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %13, align 8
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %5
  %25 = load %struct.dbcs_table*, %struct.dbcs_table** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @get_length_dbcs(%struct.dbcs_table* %25, i8* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  br label %101

29:                                               ; preds = %5
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %14, align 4
  br label %31

31:                                               ; preds = %84, %29
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi i1 [ false, %31 ], [ %36, %34 ]
  br i1 %38, label %39, label %93

39:                                               ; preds = %37
  %40 = load i8*, i8** %13, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  %45 = load i8, i8* %44, align 1
  store i8 %45, i8* %15, align 1
  %46 = load i8, i8* %15, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %75

49:                                               ; preds = %39
  %50 = load i32, i32* %9, align 4
  %51 = icmp ugt i32 %50, 1
  br i1 %51, label %52, label %75

52:                                               ; preds = %49
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %52
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = add i32 %61, -1
  store i32 %62, i32* %9, align 4
  %63 = load i32*, i32** %12, align 8
  %64 = load i8, i8* %15, align 1
  %65 = zext i8 %64 to i32
  %66 = shl i32 %65, 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = add nsw i32 %66, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %63, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %10, align 8
  store i32 %73, i32* %74, align 4
  br label %83

75:                                               ; preds = %52, %49, %39
  %76 = load i32*, i32** %12, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %10, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %75, %58
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %14, align 4
  %86 = add i32 %85, -1
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %9, align 4
  %88 = add i32 %87, -1
  store i32 %88, i32* %9, align 4
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %8, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %10, align 8
  br label %31

93:                                               ; preds = %37
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 -1, i32* %6, align 4
  br label %101

97:                                               ; preds = %93
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %14, align 4
  %100 = sub i32 %98, %99
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %97, %96, %24
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @get_length_dbcs(%struct.dbcs_table*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
