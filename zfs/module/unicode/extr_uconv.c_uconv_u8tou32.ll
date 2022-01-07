; ModuleID = '/home/carl/AnghaBench/zfs/module/unicode/extr_uconv.c_uconv_u8tou32.c'
source_filename = "/home/carl/AnghaBench/zfs/module/unicode/extr_uconv.c_uconv_u8tou32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EILSEQ = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@UCONV_IGNORE_NULL = common dso_local global i32 0, align 4
@UCONV_OUT_NAT_ENDIAN = common dso_local global i32 0, align 4
@UCONV_OUT_EMIT_BOM = common dso_local global i32 0, align 4
@UCONV_BOM_NORMAL = common dso_local global i64 0, align 8
@UCONV_BOM_SWAPPED_32 = common dso_local global i64 0, align 8
@UCONV_ASCII_MAX = common dso_local global i64 0, align 8
@remaining_bytes_tbl = common dso_local global i32* null, align 8
@u8_masks_tbl = common dso_local global i64* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@valid_min_2nd_byte = common dso_local global i64* null, align 8
@valid_max_2nd_byte = common dso_local global i64* null, align 8
@UCONV_U8_BYTE_MIN = common dso_local global i64 0, align 8
@UCONV_U8_BYTE_MAX = common dso_local global i64 0, align 8
@UCONV_U8_BIT_SHIFT = common dso_local global i64 0, align 8
@UCONV_U8_BIT_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uconv_u8tou32(i64* %0, i64* %1, i64* %2, i64* %3, i32 %4) #0 {
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load i64*, i64** %7, align 8
  %22 = icmp eq i64* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i64*, i64** %8, align 8
  %25 = icmp eq i64* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %5
  %27 = load i32, i32* @EILSEQ, align 4
  store i32 %27, i32* %6, align 4
  br label %205

28:                                               ; preds = %23
  %29 = load i64*, i64** %9, align 8
  %30 = icmp eq i64* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i64*, i64** %10, align 8
  %33 = icmp eq i64* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31, %28
  %35 = load i32, i32* @E2BIG, align 4
  store i32 %35, i32* %6, align 4
  br label %205

36:                                               ; preds = %31
  %37 = load i32, i32* %11, align 4
  %38 = call i64 @check_endian(i32 %37, i32* %12, i32* %13)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @EBADF, align 4
  store i32 %41, i32* %6, align 4
  br label %205

42:                                               ; preds = %36
  store i64 0, i64* %15, align 8
  store i64 0, i64* %14, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @UCONV_IGNORE_NULL, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %20, align 4
  %48 = load i32, i32* @UCONV_OUT_NAT_ENDIAN, align 4
  %49 = load i32, i32* %13, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %13, align 4
  %51 = load i64*, i64** %8, align 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp ugt i64 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %42
  %55 = load i64*, i64** %10, align 8
  %56 = load i64, i64* %55, align 8
  %57 = icmp ugt i64 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %54
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @UCONV_OUT_EMIT_BOM, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i64, i64* @UCONV_BOM_NORMAL, align 8
  br label %70

68:                                               ; preds = %63
  %69 = load i64, i64* @UCONV_BOM_SWAPPED_32, align 8
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i64 [ %67, %66 ], [ %69, %68 ]
  %72 = load i64*, i64** %9, align 8
  %73 = load i64, i64* %14, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %14, align 8
  %75 = getelementptr inbounds i64, i64* %72, i64 %73
  store i64 %71, i64* %75, align 8
  br label %76

76:                                               ; preds = %70, %58, %54, %42
  br label %77

77:                                               ; preds = %194, %76
  %78 = load i64, i64* %15, align 8
  %79 = load i64*, i64** %8, align 8
  %80 = load i64, i64* %79, align 8
  %81 = icmp ult i64 %78, %80
  br i1 %81, label %82, label %200

82:                                               ; preds = %77
  %83 = load i64*, i64** %7, align 8
  %84 = load i64, i64* %15, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i32, i32* %20, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %200

92:                                               ; preds = %88, %82
  %93 = load i64*, i64** %7, align 8
  %94 = load i64, i64* %15, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %15, align 8
  %96 = getelementptr inbounds i64, i64* %93, i64 %94
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %16, align 8
  %98 = load i64, i64* %16, align 8
  %99 = load i64, i64* @UCONV_ASCII_MAX, align 8
  %100 = icmp ugt i64 %98, %99
  br i1 %100, label %101, label %179

101:                                              ; preds = %92
  %102 = load i32*, i32** @remaining_bytes_tbl, align 8
  %103 = load i64, i64* %16, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %18, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @EILSEQ, align 4
  store i32 %108, i32* %6, align 4
  br label %205

109:                                              ; preds = %101
  %110 = load i64, i64* %16, align 8
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %19, align 4
  %112 = load i64, i64* %16, align 8
  %113 = load i64*, i64** @u8_masks_tbl, align 8
  %114 = load i32, i32* %18, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = and i64 %112, %117
  store i64 %118, i64* %16, align 8
  br label %119

119:                                              ; preds = %175, %109
  %120 = load i32, i32* %18, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %178

122:                                              ; preds = %119
  %123 = load i64, i64* %15, align 8
  %124 = load i64*, i64** %8, align 8
  %125 = load i64, i64* %124, align 8
  %126 = icmp uge i64 %123, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i32, i32* @EINVAL, align 4
  store i32 %128, i32* %6, align 4
  br label %205

129:                                              ; preds = %122
  %130 = load i64*, i64** %7, align 8
  %131 = load i64, i64* %15, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %15, align 8
  %133 = getelementptr inbounds i64, i64* %130, i64 %131
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %17, align 8
  %135 = load i32, i32* %19, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %156

137:                                              ; preds = %129
  %138 = load i64, i64* %17, align 8
  %139 = load i64*, i64** @valid_min_2nd_byte, align 8
  %140 = load i32, i32* %19, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = icmp ult i64 %138, %143
  br i1 %144, label %153, label %145

145:                                              ; preds = %137
  %146 = load i64, i64* %17, align 8
  %147 = load i64*, i64** @valid_max_2nd_byte, align 8
  %148 = load i32, i32* %19, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = icmp ugt i64 %146, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %145, %137
  %154 = load i32, i32* @EILSEQ, align 4
  store i32 %154, i32* %6, align 4
  br label %205

155:                                              ; preds = %145
  store i32 0, i32* %19, align 4
  br label %167

156:                                              ; preds = %129
  %157 = load i64, i64* %17, align 8
  %158 = load i64, i64* @UCONV_U8_BYTE_MIN, align 8
  %159 = icmp ult i64 %157, %158
  br i1 %159, label %164, label %160

160:                                              ; preds = %156
  %161 = load i64, i64* %17, align 8
  %162 = load i64, i64* @UCONV_U8_BYTE_MAX, align 8
  %163 = icmp ugt i64 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %160, %156
  %165 = load i32, i32* @EILSEQ, align 4
  store i32 %165, i32* %6, align 4
  br label %205

166:                                              ; preds = %160
  br label %167

167:                                              ; preds = %166, %155
  %168 = load i64, i64* %16, align 8
  %169 = load i64, i64* @UCONV_U8_BIT_SHIFT, align 8
  %170 = shl i64 %168, %169
  %171 = load i64, i64* %17, align 8
  %172 = load i64, i64* @UCONV_U8_BIT_MASK, align 8
  %173 = and i64 %171, %172
  %174 = or i64 %170, %173
  store i64 %174, i64* %16, align 8
  br label %175

175:                                              ; preds = %167
  %176 = load i32, i32* %18, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %18, align 4
  br label %119

178:                                              ; preds = %119
  br label %179

179:                                              ; preds = %178, %92
  %180 = load i64, i64* %14, align 8
  %181 = load i64*, i64** %10, align 8
  %182 = load i64, i64* %181, align 8
  %183 = icmp uge i64 %180, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = load i32, i32* @E2BIG, align 4
  store i32 %185, i32* %6, align 4
  br label %205

186:                                              ; preds = %179
  %187 = load i32, i32* %13, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = load i64, i64* %16, align 8
  br label %194

191:                                              ; preds = %186
  %192 = load i64, i64* %16, align 8
  %193 = call i64 @BSWAP_32(i64 %192)
  br label %194

194:                                              ; preds = %191, %189
  %195 = phi i64 [ %190, %189 ], [ %193, %191 ]
  %196 = load i64*, i64** %9, align 8
  %197 = load i64, i64* %14, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %14, align 8
  %199 = getelementptr inbounds i64, i64* %196, i64 %197
  store i64 %195, i64* %199, align 8
  br label %77

200:                                              ; preds = %91, %77
  %201 = load i64, i64* %14, align 8
  %202 = load i64*, i64** %10, align 8
  store i64 %201, i64* %202, align 8
  %203 = load i64, i64* %15, align 8
  %204 = load i64*, i64** %8, align 8
  store i64 %203, i64* %204, align 8
  store i32 0, i32* %6, align 4
  br label %205

205:                                              ; preds = %200, %184, %164, %153, %127, %107, %40, %34, %26
  %206 = load i32, i32* %6, align 4
  ret i32 %206
}

declare dso_local i64 @check_endian(i32, i32*, i32*) #1

declare dso_local i64 @BSWAP_32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
