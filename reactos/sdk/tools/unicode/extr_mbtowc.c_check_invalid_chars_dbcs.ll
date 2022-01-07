; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_mbtowc.c_check_invalid_chars_dbcs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_mbtowc.c_check_invalid_chars_dbcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbcs_table = type { i32*, i8*, i16*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dbcs_table*, i8*, i32)* @check_invalid_chars_dbcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_invalid_chars_dbcs(%struct.dbcs_table* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.dbcs_table*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i8, align 1
  store %struct.dbcs_table* %0, %struct.dbcs_table** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.dbcs_table*, %struct.dbcs_table** %4, align 8
  %13 = getelementptr inbounds %struct.dbcs_table, %struct.dbcs_table* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load %struct.dbcs_table*, %struct.dbcs_table** %4, align 8
  %16 = getelementptr inbounds %struct.dbcs_table, %struct.dbcs_table* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %8, align 8
  %18 = load %struct.dbcs_table*, %struct.dbcs_table** %4, align 8
  %19 = getelementptr inbounds %struct.dbcs_table, %struct.dbcs_table* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load %struct.dbcs_table*, %struct.dbcs_table** %4, align 8
  %23 = getelementptr inbounds %struct.dbcs_table, %struct.dbcs_table* %22, i32 0, i32 2
  %24 = load i16*, i16** %23, align 8
  %25 = load %struct.dbcs_table*, %struct.dbcs_table** %4, align 8
  %26 = getelementptr inbounds %struct.dbcs_table, %struct.dbcs_table* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = ashr i32 %28, 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, 255
  %35 = add nsw i32 %32, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i16, i16* %24, i64 %36
  %38 = load i16, i16* %37, align 2
  store i16 %38, i16* %10, align 2
  br label %39

39:                                               ; preds = %117, %3
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %122

42:                                               ; preds = %39
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = load i8, i8* %47, align 1
  store i8 %48, i8* %11, align 1
  %49 = load i8, i8* %11, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %51, label %90

51:                                               ; preds = %42
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %122

55:                                               ; preds = %51
  %56 = load i32*, i32** %7, align 8
  %57 = load i8, i8* %11, align 1
  %58 = zext i8 %57 to i32
  %59 = shl i32 %58, 8
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = add nsw i32 %59, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %56, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %55
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = shl i32 %74, 8
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = or i32 %75, %79
  %81 = load i16, i16* %10, align 2
  %82 = zext i16 %81 to i32
  %83 = icmp ne i32 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %70
  br label %122

85:                                               ; preds = %70, %55
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = add i32 %88, -1
  store i32 %89, i32* %6, align 4
  br label %117

90:                                               ; preds = %42
  %91 = load i32*, i32** %7, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %90
  %100 = load i8*, i8** %5, align 8
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = load i16, i16* %10, align 2
  %104 = zext i16 %103 to i32
  %105 = icmp ne i32 %102, %104
  br i1 %105, label %115, label %106

106:                                              ; preds = %99, %90
  %107 = load i32*, i32** %7, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @is_private_use_area_char(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %106, %99
  br label %122

116:                                              ; preds = %106
  br label %117

117:                                              ; preds = %116, %85
  %118 = load i8*, i8** %5, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %5, align 8
  %120 = load i32, i32* %6, align 4
  %121 = add i32 %120, -1
  store i32 %121, i32* %6, align 4
  br label %39

122:                                              ; preds = %115, %84, %54, %39
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i64 @is_private_use_area_char(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
