; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_wctomb.c_get_length_dbcs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_wctomb.c_get_length_dbcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbcs_table = type { i16*, i16* }

@WC_COMPOSITECHECK = common dso_local global i32 0, align 4
@WC_DEFAULTCHAR = common dso_local global i32 0, align 4
@WC_DISCARDNS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dbcs_table*, i32, i32*, i32, i8*, i32*)* @get_length_dbcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_length_dbcs(%struct.dbcs_table* %0, i32 %1, i32* %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dbcs_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i16*, align 8
  %15 = alloca i16*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i16, align 2
  %21 = alloca i32, align 4
  store %struct.dbcs_table* %0, %struct.dbcs_table** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load %struct.dbcs_table*, %struct.dbcs_table** %8, align 8
  %23 = getelementptr inbounds %struct.dbcs_table, %struct.dbcs_table* %22, i32 0, i32 0
  %24 = load i16*, i16** %23, align 8
  store i16* %24, i16** %14, align 8
  %25 = load %struct.dbcs_table*, %struct.dbcs_table** %8, align 8
  %26 = getelementptr inbounds %struct.dbcs_table, %struct.dbcs_table* %25, i32 0, i32 1
  %27 = load i16*, i16** %26, align 8
  store i16* %27, i16** %15, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %75, label %30

30:                                               ; preds = %6
  %31 = load i32*, i32** %13, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %75, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @WC_COMPOSITECHECK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %75, label %38

38:                                               ; preds = %33
  store i32 0, i32* %18, align 4
  br label %39

39:                                               ; preds = %66, %38
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %39
  %43 = load i16*, i16** %14, align 8
  %44 = load i16*, i16** %15, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i16, i16* %44, i64 %48
  %50 = load i16, i16* %49, align 2
  %51 = zext i16 %50 to i32
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 255
  %55 = add nsw i32 %51, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i16, i16* %43, i64 %56
  %58 = load i16, i16* %57, align 2
  %59 = zext i16 %58 to i32
  %60 = and i32 %59, 65280
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %42
  %63 = load i32, i32* %18, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %18, align 4
  br label %65

65:                                               ; preds = %62, %42
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %11, align 4
  %68 = add i32 %67, -1
  store i32 %68, i32* %11, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %10, align 8
  %71 = load i32, i32* %18, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %18, align 4
  br label %39

73:                                               ; preds = %39
  %74 = load i32, i32* %18, align 4
  store i32 %74, i32* %7, align 4
  br label %207

75:                                               ; preds = %33, %30, %6
  %76 = load %struct.dbcs_table*, %struct.dbcs_table** %8, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = call i32 @get_defchar_dbcs(%struct.dbcs_table* %76, i8* %77)
  store i32 %78, i32* %16, align 4
  %79 = load i32*, i32** %13, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  store i32* %19, i32** %13, align 8
  br label %82

82:                                               ; preds = %81, %75
  %83 = load i32*, i32** %13, align 8
  store i32 0, i32* %83, align 4
  store i32 0, i32* %18, align 4
  br label %84

84:                                               ; preds = %198, %82
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %205

87:                                               ; preds = %84
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %21, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @WC_COMPOSITECHECK, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %164

94:                                               ; preds = %87
  %95 = load i32, i32* %11, align 4
  %96 = icmp ugt i32 %95, 1
  br i1 %96, label %97, label %164

97:                                               ; preds = %94
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @wine_compose(i32* %98)
  store i32 %99, i32* %17, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %164

101:                                              ; preds = %97
  %102 = load i16*, i16** %14, align 8
  %103 = load i16*, i16** %15, align 8
  %104 = load i32, i32* %17, align 4
  %105 = ashr i32 %104, 8
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i16, i16* %103, i64 %106
  %108 = load i16, i16* %107, align 2
  %109 = zext i16 %108 to i32
  %110 = load i32, i32* %17, align 4
  %111 = and i32 %110, 255
  %112 = add nsw i32 %109, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i16, i16* %102, i64 %113
  %115 = load i16, i16* %114, align 2
  store i16 %115, i16* %20, align 2
  %116 = load %struct.dbcs_table*, %struct.dbcs_table** %8, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %17, align 4
  %119 = load i16, i16* %20, align 2
  %120 = call i64 @is_valid_dbcs_mapping(%struct.dbcs_table* %116, i32 %117, i32 %118, i16 zeroext %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %101
  %123 = load i16, i16* %20, align 2
  %124 = zext i16 %123 to i32
  %125 = and i32 %124, 65280
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load i32, i32* %18, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %18, align 4
  br label %130

130:                                              ; preds = %127, %122
  %131 = load i32*, i32** %10, align 8
  %132 = getelementptr inbounds i32, i32* %131, i32 1
  store i32* %132, i32** %10, align 8
  %133 = load i32, i32* %11, align 4
  %134 = add i32 %133, -1
  store i32 %134, i32* %11, align 4
  br label %198

135:                                              ; preds = %101
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @WC_DEFAULTCHAR, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %153

140:                                              ; preds = %135
  %141 = load i32, i32* %16, align 4
  %142 = and i32 %141, 65280
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load i32, i32* %18, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %18, align 4
  br label %147

147:                                              ; preds = %144, %140
  %148 = load i32*, i32** %13, align 8
  store i32 1, i32* %148, align 4
  %149 = load i32*, i32** %10, align 8
  %150 = getelementptr inbounds i32, i32* %149, i32 1
  store i32* %150, i32** %10, align 8
  %151 = load i32, i32* %11, align 4
  %152 = add i32 %151, -1
  store i32 %152, i32* %11, align 4
  br label %198

153:                                              ; preds = %135
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* @WC_DISCARDNS, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load i32*, i32** %10, align 8
  %160 = getelementptr inbounds i32, i32* %159, i32 1
  store i32* %160, i32** %10, align 8
  %161 = load i32, i32* %11, align 4
  %162 = add i32 %161, -1
  store i32 %162, i32* %11, align 4
  br label %163

163:                                              ; preds = %158, %153
  br label %164

164:                                              ; preds = %163, %97, %94, %87
  %165 = load i16*, i16** %14, align 8
  %166 = load i16*, i16** %15, align 8
  %167 = load i32, i32* %21, align 4
  %168 = ashr i32 %167, 8
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i16, i16* %166, i64 %169
  %171 = load i16, i16* %170, align 2
  %172 = zext i16 %171 to i32
  %173 = load i32, i32* %21, align 4
  %174 = and i32 %173, 255
  %175 = add nsw i32 %172, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i16, i16* %165, i64 %176
  %178 = load i16, i16* %177, align 2
  store i16 %178, i16* %20, align 2
  %179 = load %struct.dbcs_table*, %struct.dbcs_table** %8, align 8
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* %21, align 4
  %182 = load i16, i16* %20, align 2
  %183 = call i64 @is_valid_dbcs_mapping(%struct.dbcs_table* %179, i32 %180, i32 %181, i16 zeroext %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %164
  %186 = load i32, i32* %16, align 4
  %187 = trunc i32 %186 to i16
  store i16 %187, i16* %20, align 2
  %188 = load i32*, i32** %13, align 8
  store i32 1, i32* %188, align 4
  br label %189

189:                                              ; preds = %185, %164
  %190 = load i16, i16* %20, align 2
  %191 = zext i16 %190 to i32
  %192 = and i32 %191, 65280
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = load i32, i32* %18, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %18, align 4
  br label %197

197:                                              ; preds = %194, %189
  br label %198

198:                                              ; preds = %197, %147, %130
  %199 = load i32, i32* %18, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %18, align 4
  %201 = load i32, i32* %11, align 4
  %202 = add i32 %201, -1
  store i32 %202, i32* %11, align 4
  %203 = load i32*, i32** %10, align 8
  %204 = getelementptr inbounds i32, i32* %203, i32 1
  store i32* %204, i32** %10, align 8
  br label %84

205:                                              ; preds = %84
  %206 = load i32, i32* %18, align 4
  store i32 %206, i32* %7, align 4
  br label %207

207:                                              ; preds = %205, %73
  %208 = load i32, i32* %7, align 4
  ret i32 %208
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
