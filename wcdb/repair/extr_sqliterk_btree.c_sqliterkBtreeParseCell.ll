; ModuleID = '/home/carl/AnghaBench/wcdb/repair/extr_sqliterk_btree.c_sqliterkBtreeParseCell.c'
source_filename = "/home/carl/AnghaBench/wcdb/repair/extr_sqliterk_btree.c_sqliterkBtreeParseCell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITERK_MISUSE = common dso_local global i32 0, align 4
@SQLITERK_OK = common dso_local global i32 0, align 4
@SQLITERK_CANCELLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to parse payload.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32)* @sqliterkBtreeParseCell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqliterkBtreeParseCell(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %4
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %24, %21, %4
  %31 = load i32, i32* @SQLITERK_MISUSE, align 4
  store i32 %31, i32* %5, align 4
  br label %113

32:                                               ; preds = %27
  %33 = load i32*, i32** %7, align 8
  %34 = call i8* @sqliterkPageGetData(i32* %33)
  store i8* %34, i8** %10, align 8
  %35 = load i32, i32* @SQLITERK_OK, align 4
  store i32 %35, i32* %11, align 4
  %36 = call i32 @sqliterkColumnAlloc(i32** %12)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @SQLITERK_OK, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %94

41:                                               ; preds = %32
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %90, %41
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %93

46:                                               ; preds = %42
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @sqliterkColumnClear(i32* %47)
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %14, align 4
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @sqliterkParseVarint(i8* %54, i32 %55, i32* %15, i32* %16)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @SQLITERK_OK, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  br label %94

61:                                               ; preds = %46
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %14, align 4
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @sqliterkParseVarint64(i8* %65, i32 %66, i32* %17, i32* %18)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @SQLITERK_OK, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %94

72:                                               ; preds = %61
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %14, align 4
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* %18, align 4
  %78 = call i32 @sqliterkColumnSetRowId(i32* %76, i32 %77)
  %79 = load i32*, i32** %6, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 @sqliterkBtreeParsePayload(i32* %79, i32* %80, i32 %81, i32 %82, i32* %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @SQLITERK_OK, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %72
  br label %94

89:                                               ; preds = %72
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %42

93:                                               ; preds = %42
  br label %94

94:                                               ; preds = %93, %88, %71, %60, %40
  %95 = load i32*, i32** %12, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32*, i32** %12, align 8
  %99 = call i32 @sqliterkColumnFree(i32* %98)
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* @SQLITERK_OK, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @SQLITERK_CANCELLED, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @sqliterkOSDebug(i32 %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %104, %100
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %111, %30
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i8* @sqliterkPageGetData(i32*) #1

declare dso_local i32 @sqliterkColumnAlloc(i32**) #1

declare dso_local i32 @sqliterkColumnClear(i32*) #1

declare dso_local i32 @sqliterkParseVarint(i8*, i32, i32*, i32*) #1

declare dso_local i32 @sqliterkParseVarint64(i8*, i32, i32*, i32*) #1

declare dso_local i32 @sqliterkColumnSetRowId(i32*, i32) #1

declare dso_local i32 @sqliterkBtreeParsePayload(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @sqliterkColumnFree(i32*) #1

declare dso_local i32 @sqliterkOSDebug(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
