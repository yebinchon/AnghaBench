; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_wctomb.c_wcstombs_dbcs_slow.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_wctomb.c_wcstombs_dbcs_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbcs_table = type { i16*, i16* }

@WC_COMPOSITECHECK = common dso_local global i32 0, align 4
@WC_DEFAULTCHAR = common dso_local global i32 0, align 4
@WC_DISCARDNS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dbcs_table*, i32, i32*, i32, i8*, i32, i8*, i32*)* @wcstombs_dbcs_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcstombs_dbcs_slow(%struct.dbcs_table* %0, i32 %1, i32* %2, i32 %3, i8* %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.dbcs_table*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i16*, align 8
  %19 = alloca i16*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i16, align 2
  %25 = alloca i32, align 4
  store %struct.dbcs_table* %0, %struct.dbcs_table** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %26 = load %struct.dbcs_table*, %struct.dbcs_table** %10, align 8
  %27 = getelementptr inbounds %struct.dbcs_table, %struct.dbcs_table* %26, i32 0, i32 0
  %28 = load i16*, i16** %27, align 8
  store i16* %28, i16** %18, align 8
  %29 = load %struct.dbcs_table*, %struct.dbcs_table** %10, align 8
  %30 = getelementptr inbounds %struct.dbcs_table, %struct.dbcs_table* %29, i32 0, i32 1
  %31 = load i16*, i16** %30, align 8
  store i16* %31, i16** %19, align 8
  %32 = load %struct.dbcs_table*, %struct.dbcs_table** %10, align 8
  %33 = load i8*, i8** %16, align 8
  %34 = call i32 @get_defchar_dbcs(%struct.dbcs_table* %32, i8* %33)
  store i32 %34, i32* %20, align 4
  %35 = load i32*, i32** %17, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %8
  store i32* %23, i32** %17, align 8
  br label %38

38:                                               ; preds = %37, %8
  %39 = load i32*, i32** %17, align 8
  store i32 0, i32* %39, align 4
  %40 = load i32, i32* %15, align 4
  store i32 %40, i32* %22, align 4
  br label %41

41:                                               ; preds = %162, %38
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %22, align 4
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi i1 [ false, %41 ], [ %46, %44 ]
  br i1 %48, label %49, label %169

49:                                               ; preds = %47
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %25, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @WC_COMPOSITECHECK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %113

56:                                               ; preds = %49
  %57 = load i32, i32* %13, align 4
  %58 = icmp ugt i32 %57, 1
  br i1 %58, label %59, label %113

59:                                               ; preds = %56
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @wine_compose(i32* %60)
  store i32 %61, i32* %21, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %113

63:                                               ; preds = %59
  %64 = load i16*, i16** %18, align 8
  %65 = load i16*, i16** %19, align 8
  %66 = load i32, i32* %21, align 4
  %67 = ashr i32 %66, 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i16, i16* %65, i64 %68
  %70 = load i16, i16* %69, align 2
  %71 = zext i16 %70 to i32
  %72 = load i32, i32* %21, align 4
  %73 = and i32 %72, 255
  %74 = add nsw i32 %71, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i16, i16* %64, i64 %75
  %77 = load i16, i16* %76, align 2
  store i16 %77, i16* %24, align 2
  %78 = load %struct.dbcs_table*, %struct.dbcs_table** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %21, align 4
  %81 = load i16, i16* %24, align 2
  %82 = call i64 @is_valid_dbcs_mapping(%struct.dbcs_table* %78, i32 %79, i32 %80, i16 zeroext %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %63
  %85 = load i32*, i32** %12, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %12, align 8
  %87 = load i32, i32* %13, align 4
  %88 = add i32 %87, -1
  store i32 %88, i32* %13, align 4
  br label %139

89:                                               ; preds = %63
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @WC_DEFAULTCHAR, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load i32, i32* %20, align 4
  %96 = trunc i32 %95 to i16
  store i16 %96, i16* %24, align 2
  %97 = load i32*, i32** %17, align 8
  store i32 1, i32* %97, align 4
  %98 = load i32*, i32** %12, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %12, align 8
  %100 = load i32, i32* %13, align 4
  %101 = add i32 %100, -1
  store i32 %101, i32* %13, align 4
  br label %139

102:                                              ; preds = %89
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @WC_DISCARDNS, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load i32*, i32** %12, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %12, align 8
  %110 = load i32, i32* %13, align 4
  %111 = add i32 %110, -1
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %107, %102
  br label %113

113:                                              ; preds = %112, %59, %56, %49
  %114 = load i16*, i16** %18, align 8
  %115 = load i16*, i16** %19, align 8
  %116 = load i32, i32* %25, align 4
  %117 = ashr i32 %116, 8
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i16, i16* %115, i64 %118
  %120 = load i16, i16* %119, align 2
  %121 = zext i16 %120 to i32
  %122 = load i32, i32* %25, align 4
  %123 = and i32 %122, 255
  %124 = add nsw i32 %121, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i16, i16* %114, i64 %125
  %127 = load i16, i16* %126, align 2
  store i16 %127, i16* %24, align 2
  %128 = load %struct.dbcs_table*, %struct.dbcs_table** %10, align 8
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %25, align 4
  %131 = load i16, i16* %24, align 2
  %132 = call i64 @is_valid_dbcs_mapping(%struct.dbcs_table* %128, i32 %129, i32 %130, i16 zeroext %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %113
  %135 = load i32, i32* %20, align 4
  %136 = trunc i32 %135 to i16
  store i16 %136, i16* %24, align 2
  %137 = load i32*, i32** %17, align 8
  store i32 1, i32* %137, align 4
  br label %138

138:                                              ; preds = %134, %113
  br label %139

139:                                              ; preds = %138, %94, %84
  %140 = load i16, i16* %24, align 2
  %141 = zext i16 %140 to i32
  %142 = and i32 %141, 65280
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %139
  %145 = load i32, i32* %22, align 4
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  br label %169

148:                                              ; preds = %144
  %149 = load i32, i32* %22, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %22, align 4
  %151 = load i16, i16* %24, align 2
  %152 = zext i16 %151 to i32
  %153 = ashr i32 %152, 8
  %154 = trunc i32 %153 to i8
  %155 = load i8*, i8** %14, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %14, align 8
  store i8 %154, i8* %155, align 1
  br label %157

157:                                              ; preds = %148, %139
  %158 = load i16, i16* %24, align 2
  %159 = trunc i16 %158 to i8
  %160 = load i8*, i8** %14, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %14, align 8
  store i8 %159, i8* %160, align 1
  br label %162

162:                                              ; preds = %157
  %163 = load i32, i32* %22, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %22, align 4
  %165 = load i32, i32* %13, align 4
  %166 = add i32 %165, -1
  store i32 %166, i32* %13, align 4
  %167 = load i32*, i32** %12, align 8
  %168 = getelementptr inbounds i32, i32* %167, i32 1
  store i32* %168, i32** %12, align 8
  br label %41

169:                                              ; preds = %147, %47
  %170 = load i32, i32* %13, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  store i32 -1, i32* %9, align 4
  br label %177

173:                                              ; preds = %169
  %174 = load i32, i32* %15, align 4
  %175 = load i32, i32* %22, align 4
  %176 = sub i32 %174, %175
  store i32 %176, i32* %9, align 4
  br label %177

177:                                              ; preds = %173, %172
  %178 = load i32, i32* %9, align 4
  ret i32 %178
}

declare dso_local i32 @get_defchar_dbcs(%struct.dbcs_table*, i8*) #1

declare dso_local i32 @wine_compose(i32*) #1

declare dso_local i64 @is_valid_dbcs_mapping(%struct.dbcs_table*, i32, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
