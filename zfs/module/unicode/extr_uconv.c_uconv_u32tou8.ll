; ModuleID = '/home/carl/AnghaBench/zfs/module/unicode/extr_uconv.c_uconv_u32tou8.c'
source_filename = "/home/carl/AnghaBench/zfs/module/unicode/extr_uconv.c_uconv_u32tou8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EILSEQ = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@UCONV_IGNORE_NULL = common dso_local global i32 0, align 4
@UCONV_IN_ACCEPT_BOM = common dso_local global i32 0, align 4
@UCONV_IN_NAT_ENDIAN = common dso_local global i32 0, align 4
@UCONV_U8_ONE_BYTE = common dso_local global i64 0, align 8
@UCONV_U8_TWO_BYTES = common dso_local global i64 0, align 8
@UCONV_U8_THREE_BYTES = common dso_local global i64 0, align 8
@UCONV_U8_FOUR_BYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uconv_u32tou8(i64* %0, i64* %1, i64* %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i64*, i64** %7, align 8
  %19 = icmp eq i64* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i64*, i64** %8, align 8
  %22 = icmp eq i64* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %5
  %24 = load i32, i32* @EILSEQ, align 4
  store i32 %24, i32* %6, align 4
  br label %231

25:                                               ; preds = %20
  %26 = load i64*, i64** %9, align 8
  %27 = icmp eq i64* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i64*, i64** %10, align 8
  %30 = icmp eq i64* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %25
  %32 = load i32, i32* @E2BIG, align 4
  store i32 %32, i32* %6, align 4
  br label %231

33:                                               ; preds = %28
  %34 = load i32, i32* %11, align 4
  %35 = call i64 @check_endian(i32 %34, i32* %12, i32* %13)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @EBADF, align 4
  store i32 %38, i32* %6, align 4
  br label %231

39:                                               ; preds = %33
  store i64 0, i64* %15, align 8
  store i64 0, i64* %14, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @UCONV_IGNORE_NULL, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @UCONV_IN_ACCEPT_BOM, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %39
  %50 = load i64*, i64** %7, align 8
  %51 = load i64*, i64** %8, align 8
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @check_bom32(i64* %50, i64 %52, i32* %12)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i64, i64* %14, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %14, align 8
  br label %58

58:                                               ; preds = %55, %49, %39
  %59 = load i32, i32* @UCONV_IN_NAT_ENDIAN, align 4
  %60 = load i32, i32* %12, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %223, %58
  %63 = load i64, i64* %14, align 8
  %64 = load i64*, i64** %8, align 8
  %65 = load i64, i64* %64, align 8
  %66 = icmp ult i64 %63, %65
  br i1 %66, label %67, label %226

67:                                               ; preds = %62
  %68 = load i64*, i64** %7, align 8
  %69 = load i64, i64* %14, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32, i32* %17, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %226

77:                                               ; preds = %73, %67
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i64*, i64** %7, align 8
  %82 = load i64, i64* %14, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  br label %91

85:                                               ; preds = %77
  %86 = load i64*, i64** %7, align 8
  %87 = load i64, i64* %14, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @BSWAP_32(i64 %89)
  br label %91

91:                                               ; preds = %85, %80
  %92 = phi i64 [ %84, %80 ], [ %90, %85 ]
  store i64 %92, i64* %16, align 8
  %93 = load i64, i64* %16, align 8
  %94 = load i64, i64* @UCONV_U8_ONE_BYTE, align 8
  %95 = icmp sle i64 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %91
  %97 = load i64, i64* %15, align 8
  %98 = load i64*, i64** %10, align 8
  %99 = load i64, i64* %98, align 8
  %100 = icmp uge i64 %97, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* @E2BIG, align 4
  store i32 %102, i32* %6, align 4
  br label %231

103:                                              ; preds = %96
  %104 = load i64, i64* %16, align 8
  %105 = load i64*, i64** %9, align 8
  %106 = load i64, i64* %15, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %15, align 8
  %108 = getelementptr inbounds i64, i64* %105, i64 %106
  store i64 %104, i64* %108, align 8
  br label %222

109:                                              ; preds = %91
  %110 = load i64, i64* %16, align 8
  %111 = load i64, i64* @UCONV_U8_TWO_BYTES, align 8
  %112 = icmp sle i64 %110, %111
  br i1 %112, label %113, label %137

113:                                              ; preds = %109
  %114 = load i64, i64* %15, align 8
  %115 = add i64 %114, 1
  %116 = load i64*, i64** %10, align 8
  %117 = load i64, i64* %116, align 8
  %118 = icmp uge i64 %115, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load i32, i32* @E2BIG, align 4
  store i32 %120, i32* %6, align 4
  br label %231

121:                                              ; preds = %113
  %122 = load i64, i64* %16, align 8
  %123 = and i64 %122, 1984
  %124 = ashr i64 %123, 6
  %125 = or i64 192, %124
  %126 = load i64*, i64** %9, align 8
  %127 = load i64, i64* %15, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %15, align 8
  %129 = getelementptr inbounds i64, i64* %126, i64 %127
  store i64 %125, i64* %129, align 8
  %130 = load i64, i64* %16, align 8
  %131 = and i64 %130, 63
  %132 = or i64 128, %131
  %133 = load i64*, i64** %9, align 8
  %134 = load i64, i64* %15, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %15, align 8
  %136 = getelementptr inbounds i64, i64* %133, i64 %134
  store i64 %132, i64* %136, align 8
  br label %221

137:                                              ; preds = %109
  %138 = load i64, i64* %16, align 8
  %139 = load i64, i64* @UCONV_U8_THREE_BYTES, align 8
  %140 = icmp sle i64 %138, %139
  br i1 %140, label %141, label %173

141:                                              ; preds = %137
  %142 = load i64, i64* %15, align 8
  %143 = add i64 %142, 2
  %144 = load i64*, i64** %10, align 8
  %145 = load i64, i64* %144, align 8
  %146 = icmp uge i64 %143, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = load i32, i32* @E2BIG, align 4
  store i32 %148, i32* %6, align 4
  br label %231

149:                                              ; preds = %141
  %150 = load i64, i64* %16, align 8
  %151 = and i64 %150, 61440
  %152 = ashr i64 %151, 12
  %153 = or i64 224, %152
  %154 = load i64*, i64** %9, align 8
  %155 = load i64, i64* %15, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %15, align 8
  %157 = getelementptr inbounds i64, i64* %154, i64 %155
  store i64 %153, i64* %157, align 8
  %158 = load i64, i64* %16, align 8
  %159 = and i64 %158, 4032
  %160 = ashr i64 %159, 6
  %161 = or i64 128, %160
  %162 = load i64*, i64** %9, align 8
  %163 = load i64, i64* %15, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %15, align 8
  %165 = getelementptr inbounds i64, i64* %162, i64 %163
  store i64 %161, i64* %165, align 8
  %166 = load i64, i64* %16, align 8
  %167 = and i64 %166, 63
  %168 = or i64 128, %167
  %169 = load i64*, i64** %9, align 8
  %170 = load i64, i64* %15, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* %15, align 8
  %172 = getelementptr inbounds i64, i64* %169, i64 %170
  store i64 %168, i64* %172, align 8
  br label %220

173:                                              ; preds = %137
  %174 = load i64, i64* %16, align 8
  %175 = load i64, i64* @UCONV_U8_FOUR_BYTES, align 8
  %176 = icmp sle i64 %174, %175
  br i1 %176, label %177, label %217

177:                                              ; preds = %173
  %178 = load i64, i64* %15, align 8
  %179 = add i64 %178, 3
  %180 = load i64*, i64** %10, align 8
  %181 = load i64, i64* %180, align 8
  %182 = icmp uge i64 %179, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %177
  %184 = load i32, i32* @E2BIG, align 4
  store i32 %184, i32* %6, align 4
  br label %231

185:                                              ; preds = %177
  %186 = load i64, i64* %16, align 8
  %187 = and i64 %186, 1835008
  %188 = ashr i64 %187, 18
  %189 = or i64 240, %188
  %190 = load i64*, i64** %9, align 8
  %191 = load i64, i64* %15, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %15, align 8
  %193 = getelementptr inbounds i64, i64* %190, i64 %191
  store i64 %189, i64* %193, align 8
  %194 = load i64, i64* %16, align 8
  %195 = and i64 %194, 258048
  %196 = ashr i64 %195, 12
  %197 = or i64 128, %196
  %198 = load i64*, i64** %9, align 8
  %199 = load i64, i64* %15, align 8
  %200 = add i64 %199, 1
  store i64 %200, i64* %15, align 8
  %201 = getelementptr inbounds i64, i64* %198, i64 %199
  store i64 %197, i64* %201, align 8
  %202 = load i64, i64* %16, align 8
  %203 = and i64 %202, 4032
  %204 = ashr i64 %203, 6
  %205 = or i64 128, %204
  %206 = load i64*, i64** %9, align 8
  %207 = load i64, i64* %15, align 8
  %208 = add i64 %207, 1
  store i64 %208, i64* %15, align 8
  %209 = getelementptr inbounds i64, i64* %206, i64 %207
  store i64 %205, i64* %209, align 8
  %210 = load i64, i64* %16, align 8
  %211 = and i64 %210, 63
  %212 = or i64 128, %211
  %213 = load i64*, i64** %9, align 8
  %214 = load i64, i64* %15, align 8
  %215 = add i64 %214, 1
  store i64 %215, i64* %15, align 8
  %216 = getelementptr inbounds i64, i64* %213, i64 %214
  store i64 %212, i64* %216, align 8
  br label %219

217:                                              ; preds = %173
  %218 = load i32, i32* @EILSEQ, align 4
  store i32 %218, i32* %6, align 4
  br label %231

219:                                              ; preds = %185
  br label %220

220:                                              ; preds = %219, %149
  br label %221

221:                                              ; preds = %220, %121
  br label %222

222:                                              ; preds = %221, %103
  br label %223

223:                                              ; preds = %222
  %224 = load i64, i64* %14, align 8
  %225 = add i64 %224, 1
  store i64 %225, i64* %14, align 8
  br label %62

226:                                              ; preds = %76, %62
  %227 = load i64, i64* %14, align 8
  %228 = load i64*, i64** %8, align 8
  store i64 %227, i64* %228, align 8
  %229 = load i64, i64* %15, align 8
  %230 = load i64*, i64** %10, align 8
  store i64 %229, i64* %230, align 8
  store i32 0, i32* %6, align 4
  br label %231

231:                                              ; preds = %226, %217, %183, %147, %119, %101, %37, %31, %23
  %232 = load i32, i32* %6, align 4
  ret i32 %232
}

declare dso_local i64 @check_endian(i32, i32*, i32*) #1

declare dso_local i64 @check_bom32(i64*, i64, i32*) #1

declare dso_local i64 @BSWAP_32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
