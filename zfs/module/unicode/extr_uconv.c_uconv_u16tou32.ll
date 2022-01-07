; ModuleID = '/home/carl/AnghaBench/zfs/module/unicode/extr_uconv.c_uconv_u16tou32.c'
source_filename = "/home/carl/AnghaBench/zfs/module/unicode/extr_uconv.c_uconv_u16tou32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EILSEQ = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@UCONV_IGNORE_NULL = common dso_local global i32 0, align 4
@UCONV_IN_ACCEPT_BOM = common dso_local global i32 0, align 4
@UCONV_IN_NAT_ENDIAN = common dso_local global i32 0, align 4
@UCONV_OUT_NAT_ENDIAN = common dso_local global i32 0, align 4
@UCONV_OUT_EMIT_BOM = common dso_local global i32 0, align 4
@UCONV_BOM_NORMAL = common dso_local global i64 0, align 8
@UCONV_BOM_SWAPPED_32 = common dso_local global i64 0, align 8
@UCONV_U16_HI_MIN = common dso_local global i64 0, align 8
@UCONV_U16_HI_MAX = common dso_local global i64 0, align 8
@UCONV_U16_LO_MIN = common dso_local global i64 0, align 8
@UCONV_U16_LO_MAX = common dso_local global i64 0, align 8
@UCONV_U16_BIT_SHIFT = common dso_local global i64 0, align 8
@UCONV_U16_BIT_MASK = common dso_local global i64 0, align 8
@UCONV_U16_START = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uconv_u16tou32(i64* %0, i64* %1, i64* %2, i64* %3, i32 %4) #0 {
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
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i64*, i64** %7, align 8
  %20 = icmp eq i64* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i64*, i64** %8, align 8
  %23 = icmp eq i64* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %5
  %25 = load i32, i32* @EILSEQ, align 4
  store i32 %25, i32* %6, align 4
  br label %205

26:                                               ; preds = %21
  %27 = load i64*, i64** %9, align 8
  %28 = icmp eq i64* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i64*, i64** %10, align 8
  %31 = icmp eq i64* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %26
  %33 = load i32, i32* @E2BIG, align 4
  store i32 %33, i32* %6, align 4
  br label %205

34:                                               ; preds = %29
  %35 = load i32, i32* %11, align 4
  %36 = call i64 @check_endian(i32 %35, i32* %12, i32* %13)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @EBADF, align 4
  store i32 %39, i32* %6, align 4
  br label %205

40:                                               ; preds = %34
  store i64 0, i64* %15, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %16, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @UCONV_IGNORE_NULL, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @UCONV_IN_ACCEPT_BOM, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %40
  %51 = load i64*, i64** %7, align 8
  %52 = load i64*, i64** %8, align 8
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @check_bom16(i64* %51, i64 %53, i32* %12)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i64, i64* %14, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %14, align 8
  br label %59

59:                                               ; preds = %56, %50, %40
  %60 = load i32, i32* @UCONV_IN_NAT_ENDIAN, align 4
  %61 = load i32, i32* %12, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* @UCONV_OUT_NAT_ENDIAN, align 4
  %64 = load i32, i32* %13, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %13, align 4
  %66 = load i64*, i64** %8, align 8
  %67 = load i64, i64* %66, align 8
  %68 = icmp ugt i64 %67, 0
  br i1 %68, label %69, label %91

69:                                               ; preds = %59
  %70 = load i64*, i64** %10, align 8
  %71 = load i64, i64* %70, align 8
  %72 = icmp ugt i64 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %69
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @UCONV_OUT_EMIT_BOM, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %73
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i64, i64* @UCONV_BOM_NORMAL, align 8
  br label %85

83:                                               ; preds = %78
  %84 = load i64, i64* @UCONV_BOM_SWAPPED_32, align 8
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i64 [ %82, %81 ], [ %84, %83 ]
  %87 = load i64*, i64** %9, align 8
  %88 = load i64, i64* %15, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %15, align 8
  %90 = getelementptr inbounds i64, i64* %87, i64 %88
  store i64 %86, i64* %90, align 8
  br label %91

91:                                               ; preds = %85, %73, %69, %59
  br label %92

92:                                               ; preds = %192, %91
  %93 = load i64, i64* %14, align 8
  %94 = load i64*, i64** %8, align 8
  %95 = load i64, i64* %94, align 8
  %96 = icmp ult i64 %93, %95
  br i1 %96, label %97, label %195

97:                                               ; preds = %92
  %98 = load i64*, i64** %7, align 8
  %99 = load i64, i64* %14, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load i32, i32* %18, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %195

107:                                              ; preds = %103, %97
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i64*, i64** %7, align 8
  %112 = load i64, i64* %14, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  br label %121

115:                                              ; preds = %107
  %116 = load i64*, i64** %7, align 8
  %117 = load i64, i64* %14, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @BSWAP_16(i64 %119)
  br label %121

121:                                              ; preds = %115, %110
  %122 = phi i64 [ %114, %110 ], [ %120, %115 ]
  store i64 %122, i64* %17, align 8
  %123 = load i64, i64* %17, align 8
  %124 = load i64, i64* @UCONV_U16_HI_MIN, align 8
  %125 = icmp sge i64 %123, %124
  br i1 %125, label %126, label %137

126:                                              ; preds = %121
  %127 = load i64, i64* %17, align 8
  %128 = load i64, i64* @UCONV_U16_HI_MAX, align 8
  %129 = icmp sle i64 %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %126
  %131 = load i64, i64* %16, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i32, i32* @EILSEQ, align 4
  store i32 %134, i32* %6, align 4
  br label %205

135:                                              ; preds = %130
  %136 = load i64, i64* %17, align 8
  store i64 %136, i64* %16, align 8
  br label %192

137:                                              ; preds = %126, %121
  %138 = load i64, i64* %17, align 8
  %139 = load i64, i64* @UCONV_U16_LO_MIN, align 8
  %140 = icmp sge i64 %138, %139
  br i1 %140, label %141, label %164

141:                                              ; preds = %137
  %142 = load i64, i64* %17, align 8
  %143 = load i64, i64* @UCONV_U16_LO_MAX, align 8
  %144 = icmp sle i64 %142, %143
  br i1 %144, label %145, label %164

145:                                              ; preds = %141
  %146 = load i64, i64* %16, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %145
  %149 = load i32, i32* @EILSEQ, align 4
  store i32 %149, i32* %6, align 4
  br label %205

150:                                              ; preds = %145
  %151 = load i64, i64* %16, align 8
  %152 = load i64, i64* @UCONV_U16_HI_MIN, align 8
  %153 = sub nsw i64 %151, %152
  %154 = load i64, i64* @UCONV_U16_BIT_SHIFT, align 8
  %155 = mul nsw i64 %153, %154
  %156 = load i64, i64* %17, align 8
  %157 = add nsw i64 %155, %156
  %158 = load i64, i64* @UCONV_U16_LO_MIN, align 8
  %159 = sub nsw i64 %157, %158
  %160 = load i64, i64* @UCONV_U16_BIT_MASK, align 8
  %161 = and i64 %159, %160
  %162 = load i64, i64* @UCONV_U16_START, align 8
  %163 = add nsw i64 %161, %162
  store i64 %163, i64* %17, align 8
  store i64 0, i64* %16, align 8
  br label %170

164:                                              ; preds = %141, %137
  %165 = load i64, i64* %16, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = load i32, i32* @EILSEQ, align 4
  store i32 %168, i32* %6, align 4
  br label %205

169:                                              ; preds = %164
  br label %170

170:                                              ; preds = %169, %150
  br label %171

171:                                              ; preds = %170
  %172 = load i64, i64* %15, align 8
  %173 = load i64*, i64** %10, align 8
  %174 = load i64, i64* %173, align 8
  %175 = icmp uge i64 %172, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  %177 = load i32, i32* @E2BIG, align 4
  store i32 %177, i32* %6, align 4
  br label %205

178:                                              ; preds = %171
  %179 = load i32, i32* %13, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = load i64, i64* %17, align 8
  br label %186

183:                                              ; preds = %178
  %184 = load i64, i64* %17, align 8
  %185 = call i64 @BSWAP_32(i64 %184)
  br label %186

186:                                              ; preds = %183, %181
  %187 = phi i64 [ %182, %181 ], [ %185, %183 ]
  %188 = load i64*, i64** %9, align 8
  %189 = load i64, i64* %15, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %15, align 8
  %191 = getelementptr inbounds i64, i64* %188, i64 %189
  store i64 %187, i64* %191, align 8
  br label %192

192:                                              ; preds = %186, %135
  %193 = load i64, i64* %14, align 8
  %194 = add i64 %193, 1
  store i64 %194, i64* %14, align 8
  br label %92

195:                                              ; preds = %106, %92
  %196 = load i64, i64* %16, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %195
  %199 = load i32, i32* @EINVAL, align 4
  store i32 %199, i32* %6, align 4
  br label %205

200:                                              ; preds = %195
  %201 = load i64, i64* %14, align 8
  %202 = load i64*, i64** %8, align 8
  store i64 %201, i64* %202, align 8
  %203 = load i64, i64* %15, align 8
  %204 = load i64*, i64** %10, align 8
  store i64 %203, i64* %204, align 8
  store i32 0, i32* %6, align 4
  br label %205

205:                                              ; preds = %200, %198, %176, %167, %148, %133, %38, %32, %24
  %206 = load i32, i32* %6, align 4
  ret i32 %206
}

declare dso_local i64 @check_endian(i32, i32*, i32*) #1

declare dso_local i64 @check_bom16(i64*, i64, i32*) #1

declare dso_local i64 @BSWAP_16(i64) #1

declare dso_local i64 @BSWAP_32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
