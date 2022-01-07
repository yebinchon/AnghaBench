; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_wctomb.c_wcstombs_sbcs_slow.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_wctomb.c_wcstombs_sbcs_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbcs_table = type { i8*, i16*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@WC_COMPOSITECHECK = common dso_local global i32 0, align 4
@WC_DEFAULTCHAR = common dso_local global i32 0, align 4
@WC_DISCARDNS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbcs_table*, i32, i32*, i32, i8*, i32, i8*, i32*)* @wcstombs_sbcs_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcstombs_sbcs_slow(%struct.sbcs_table* %0, i32 %1, i32* %2, i32 %3, i8* %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sbcs_table*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i16*, align 8
  %20 = alloca i8, align 1
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.sbcs_table* %0, %struct.sbcs_table** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %25 = load %struct.sbcs_table*, %struct.sbcs_table** %10, align 8
  %26 = getelementptr inbounds %struct.sbcs_table, %struct.sbcs_table* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %18, align 8
  %28 = load %struct.sbcs_table*, %struct.sbcs_table** %10, align 8
  %29 = getelementptr inbounds %struct.sbcs_table, %struct.sbcs_table* %28, i32 0, i32 1
  %30 = load i16*, i16** %29, align 8
  store i16* %30, i16** %19, align 8
  %31 = load i8*, i8** %16, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %8
  %34 = load %struct.sbcs_table*, %struct.sbcs_table** %10, align 8
  %35 = getelementptr inbounds %struct.sbcs_table, %struct.sbcs_table* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 255
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %20, align 1
  br label %43

40:                                               ; preds = %8
  %41 = load i8*, i8** %16, align 8
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %20, align 1
  br label %43

43:                                               ; preds = %40, %33
  %44 = load i32*, i32** %17, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i32* %22, i32** %17, align 8
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i32*, i32** %17, align 8
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* %15, align 4
  store i32 %49, i32* %21, align 4
  br label %50

50:                                               ; preds = %152, %47
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %21, align 4
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i1 [ false, %50 ], [ %55, %53 ]
  br i1 %57, label %58, label %161

58:                                               ; preds = %56
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %24, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @WC_COMPOSITECHECK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %124

65:                                               ; preds = %58
  %66 = load i32, i32* %13, align 4
  %67 = icmp ugt i32 %66, 1
  br i1 %67, label %68, label %124

68:                                               ; preds = %65
  %69 = load i32*, i32** %12, align 8
  %70 = call i32 @wine_compose(i32* %69)
  store i32 %70, i32* %23, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %124

72:                                               ; preds = %68
  %73 = load i8*, i8** %18, align 8
  %74 = load i16*, i16** %19, align 8
  %75 = load i32, i32* %23, align 4
  %76 = ashr i32 %75, 8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i16, i16* %74, i64 %77
  %79 = load i16, i16* %78, align 2
  %80 = zext i16 %79 to i32
  %81 = load i32, i32* %23, align 4
  %82 = and i32 %81, 255
  %83 = add nsw i32 %80, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %73, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = load i8*, i8** %14, align 8
  store i8 %86, i8* %87, align 1
  %88 = load %struct.sbcs_table*, %struct.sbcs_table** %10, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %23, align 4
  %91 = load i8*, i8** %14, align 8
  %92 = load i8, i8* %91, align 1
  %93 = call i64 @is_valid_sbcs_mapping(%struct.sbcs_table* %88, i32 %89, i32 %90, i8 signext %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %72
  %96 = load i32*, i32** %12, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %12, align 8
  %98 = load i32, i32* %13, align 4
  %99 = add i32 %98, -1
  store i32 %99, i32* %13, align 4
  br label %152

100:                                              ; preds = %72
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* @WC_DEFAULTCHAR, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load i8, i8* %20, align 1
  %107 = load i8*, i8** %14, align 8
  store i8 %106, i8* %107, align 1
  %108 = load i32*, i32** %17, align 8
  store i32 1, i32* %108, align 4
  %109 = load i32*, i32** %12, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %12, align 8
  %111 = load i32, i32* %13, align 4
  %112 = add i32 %111, -1
  store i32 %112, i32* %13, align 4
  br label %152

113:                                              ; preds = %100
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @WC_DISCARDNS, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load i32*, i32** %12, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %12, align 8
  %121 = load i32, i32* %13, align 4
  %122 = add i32 %121, -1
  store i32 %122, i32* %13, align 4
  br label %123

123:                                              ; preds = %118, %113
  br label %124

124:                                              ; preds = %123, %68, %65, %58
  %125 = load i8*, i8** %18, align 8
  %126 = load i16*, i16** %19, align 8
  %127 = load i32, i32* %24, align 4
  %128 = ashr i32 %127, 8
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i16, i16* %126, i64 %129
  %131 = load i16, i16* %130, align 2
  %132 = zext i16 %131 to i32
  %133 = load i32, i32* %24, align 4
  %134 = and i32 %133, 255
  %135 = add nsw i32 %132, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %125, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = load i8*, i8** %14, align 8
  store i8 %138, i8* %139, align 1
  %140 = load %struct.sbcs_table*, %struct.sbcs_table** %10, align 8
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %24, align 4
  %143 = load i8*, i8** %14, align 8
  %144 = load i8, i8* %143, align 1
  %145 = call i64 @is_valid_sbcs_mapping(%struct.sbcs_table* %140, i32 %141, i32 %142, i8 signext %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %124
  %148 = load i8, i8* %20, align 1
  %149 = load i8*, i8** %14, align 8
  store i8 %148, i8* %149, align 1
  %150 = load i32*, i32** %17, align 8
  store i32 1, i32* %150, align 4
  br label %151

151:                                              ; preds = %147, %124
  br label %152

152:                                              ; preds = %151, %105, %95
  %153 = load i8*, i8** %14, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %14, align 8
  %155 = load i32, i32* %21, align 4
  %156 = add i32 %155, -1
  store i32 %156, i32* %21, align 4
  %157 = load i32*, i32** %12, align 8
  %158 = getelementptr inbounds i32, i32* %157, i32 1
  store i32* %158, i32** %12, align 8
  %159 = load i32, i32* %13, align 4
  %160 = add i32 %159, -1
  store i32 %160, i32* %13, align 4
  br label %50

161:                                              ; preds = %56
  %162 = load i32, i32* %13, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  store i32 -1, i32* %9, align 4
  br label %169

165:                                              ; preds = %161
  %166 = load i32, i32* %15, align 4
  %167 = load i32, i32* %21, align 4
  %168 = sub i32 %166, %167
  store i32 %168, i32* %9, align 4
  br label %169

169:                                              ; preds = %165, %164
  %170 = load i32, i32* %9, align 4
  ret i32 %170
}

declare dso_local i32 @wine_compose(i32*) #1

declare dso_local i64 @is_valid_sbcs_mapping(%struct.sbcs_table*, i32, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
