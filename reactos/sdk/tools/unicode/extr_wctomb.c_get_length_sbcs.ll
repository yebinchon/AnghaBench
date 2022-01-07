; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_wctomb.c_get_length_sbcs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_wctomb.c_get_length_sbcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbcs_table = type { i8*, i16* }

@WC_COMPOSITECHECK = common dso_local global i32 0, align 4
@WC_DEFAULTCHAR = common dso_local global i32 0, align 4
@WC_DISCARDNS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbcs_table*, i32, i32*, i32, i32*)* @get_length_sbcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_length_sbcs(%struct.sbcs_table* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.sbcs_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i16*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  store %struct.sbcs_table* %0, %struct.sbcs_table** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %18 = load %struct.sbcs_table*, %struct.sbcs_table** %6, align 8
  %19 = getelementptr inbounds %struct.sbcs_table, %struct.sbcs_table* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %11, align 8
  %21 = load %struct.sbcs_table*, %struct.sbcs_table** %6, align 8
  %22 = getelementptr inbounds %struct.sbcs_table, %struct.sbcs_table* %21, i32 0, i32 1
  %23 = load i16*, i16** %22, align 8
  store i16* %23, i16** %12, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %5
  store i32* %14, i32** %10, align 8
  br label %27

27:                                               ; preds = %26, %5
  %28 = load i32*, i32** %10, align 8
  store i32 0, i32* %28, align 4
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %123, %27
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %130

32:                                               ; preds = %29
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @WC_COMPOSITECHECK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %94

39:                                               ; preds = %32
  %40 = load i32, i32* %9, align 4
  %41 = icmp ugt i32 %40, 1
  br i1 %41, label %42, label %94

42:                                               ; preds = %39
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @wine_compose(i32* %43)
  store i32 %44, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %94

46:                                               ; preds = %42
  %47 = load i8*, i8** %11, align 8
  %48 = load i16*, i16** %12, align 8
  %49 = load i32, i32* %15, align 4
  %50 = ashr i32 %49, 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i16, i16* %48, i64 %51
  %53 = load i16, i16* %52, align 2
  %54 = zext i16 %53 to i32
  %55 = load i32, i32* %15, align 4
  %56 = and i32 %55, 255
  %57 = add nsw i32 %54, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %47, i64 %58
  %60 = load i8, i8* %59, align 1
  store i8 %60, i8* %17, align 1
  %61 = load %struct.sbcs_table*, %struct.sbcs_table** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i8, i8* %17, align 1
  %65 = call i64 @is_valid_sbcs_mapping(%struct.sbcs_table* %61, i32 %62, i32 %63, i8 zeroext %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %46
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = add i32 %70, -1
  store i32 %71, i32* %9, align 4
  br label %123

72:                                               ; preds = %46
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @WC_DEFAULTCHAR, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32*, i32** %10, align 8
  store i32 1, i32* %78, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = add i32 %81, -1
  store i32 %82, i32* %9, align 4
  br label %123

83:                                               ; preds = %72
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @WC_DISCARDNS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i32*, i32** %8, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %8, align 8
  %91 = load i32, i32* %9, align 4
  %92 = add i32 %91, -1
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %88, %83
  br label %94

94:                                               ; preds = %93, %42, %39, %32
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %122, label %98

98:                                               ; preds = %94
  %99 = load i8*, i8** %11, align 8
  %100 = load i16*, i16** %12, align 8
  %101 = load i32, i32* %16, align 4
  %102 = ashr i32 %101, 8
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i16, i16* %100, i64 %103
  %105 = load i16, i16* %104, align 2
  %106 = zext i16 %105 to i32
  %107 = load i32, i32* %16, align 4
  %108 = and i32 %107, 255
  %109 = add nsw i32 %106, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %99, i64 %110
  %112 = load i8, i8* %111, align 1
  store i8 %112, i8* %17, align 1
  %113 = load %struct.sbcs_table*, %struct.sbcs_table** %6, align 8
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %16, align 4
  %116 = load i8, i8* %17, align 1
  %117 = call i64 @is_valid_sbcs_mapping(%struct.sbcs_table* %113, i32 %114, i32 %115, i8 zeroext %116)
  %118 = icmp ne i64 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = load i32*, i32** %10, align 8
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %98, %94
  br label %123

123:                                              ; preds = %122, %77, %67
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  %126 = load i32*, i32** %8, align 8
  %127 = getelementptr inbounds i32, i32* %126, i32 1
  store i32* %127, i32** %8, align 8
  %128 = load i32, i32* %9, align 4
  %129 = add i32 %128, -1
  store i32 %129, i32* %9, align 4
  br label %29

130:                                              ; preds = %29
  %131 = load i32, i32* %13, align 4
  ret i32 %131
}

declare dso_local i32 @wine_compose(i32*) #1

declare dso_local i64 @is_valid_sbcs_mapping(%struct.sbcs_table*, i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
