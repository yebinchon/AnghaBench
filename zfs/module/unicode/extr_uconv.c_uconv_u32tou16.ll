; ModuleID = '/home/carl/AnghaBench/zfs/module/unicode/extr_uconv.c_uconv_u32tou16.c'
source_filename = "/home/carl/AnghaBench/zfs/module/unicode/extr_uconv.c_uconv_u32tou16.c"
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
@UCONV_BOM_SWAPPED = common dso_local global i64 0, align 8
@UCONV_UNICODE_MAX = common dso_local global i64 0, align 8
@UCONV_U16_START = common dso_local global i64 0, align 8
@UCONV_U16_BIT_SHIFT = common dso_local global i64 0, align 8
@UCONV_U16_LO_MIN = common dso_local global i64 0, align 8
@UCONV_U16_HI_MIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uconv_u32tou16(i64* %0, i64* %1, i64* %2, i64* %3, i32 %4) #0 {
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
  br label %212

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
  br label %212

34:                                               ; preds = %29
  %35 = load i32, i32* %11, align 4
  %36 = call i64 @check_endian(i32 %35, i32* %12, i32* %13)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @EBADF, align 4
  store i32 %39, i32* %6, align 4
  br label %212

40:                                               ; preds = %34
  store i64 0, i64* %15, align 8
  store i64 0, i64* %14, align 8
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
  %54 = call i64 @check_bom32(i64* %51, i64 %53, i32* %12)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i64, i64* %15, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %15, align 8
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
  %84 = load i64, i64* @UCONV_BOM_SWAPPED, align 8
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i64 [ %82, %81 ], [ %84, %83 ]
  %87 = load i64*, i64** %9, align 8
  %88 = load i64, i64* %14, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %14, align 8
  %90 = getelementptr inbounds i64, i64* %87, i64 %88
  store i64 %86, i64* %90, align 8
  br label %91

91:                                               ; preds = %85, %73, %69, %59
  br label %92

92:                                               ; preds = %204, %91
  %93 = load i64, i64* %15, align 8
  %94 = load i64*, i64** %8, align 8
  %95 = load i64, i64* %94, align 8
  %96 = icmp ult i64 %93, %95
  br i1 %96, label %97, label %207

97:                                               ; preds = %92
  %98 = load i64*, i64** %7, align 8
  %99 = load i64, i64* %15, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load i32, i32* %18, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %207

107:                                              ; preds = %103, %97
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i64*, i64** %7, align 8
  %112 = load i64, i64* %15, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  br label %121

115:                                              ; preds = %107
  %116 = load i64*, i64** %7, align 8
  %117 = load i64, i64* %15, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @BSWAP_32(i64 %119)
  br label %121

121:                                              ; preds = %115, %110
  %122 = phi i64 [ %114, %110 ], [ %120, %115 ]
  store i64 %122, i64* %16, align 8
  %123 = load i64, i64* %16, align 8
  %124 = load i64, i64* @UCONV_UNICODE_MAX, align 8
  %125 = icmp sgt i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i32, i32* @EILSEQ, align 4
  store i32 %127, i32* %6, align 4
  br label %212

128:                                              ; preds = %121
  %129 = load i64, i64* %16, align 8
  %130 = load i64, i64* @UCONV_U16_START, align 8
  %131 = icmp sge i64 %129, %130
  br i1 %131, label %132, label %182

132:                                              ; preds = %128
  %133 = load i64, i64* %16, align 8
  %134 = load i64, i64* @UCONV_U16_START, align 8
  %135 = sub nsw i64 %133, %134
  %136 = load i64, i64* @UCONV_U16_BIT_SHIFT, align 8
  %137 = srem i64 %135, %136
  %138 = load i64, i64* @UCONV_U16_LO_MIN, align 8
  %139 = add nsw i64 %137, %138
  store i64 %139, i64* %17, align 8
  %140 = load i64, i64* %16, align 8
  %141 = load i64, i64* @UCONV_U16_START, align 8
  %142 = sub nsw i64 %140, %141
  %143 = load i64, i64* @UCONV_U16_BIT_SHIFT, align 8
  %144 = sdiv i64 %142, %143
  %145 = load i64, i64* @UCONV_U16_HI_MIN, align 8
  %146 = add nsw i64 %144, %145
  store i64 %146, i64* %16, align 8
  %147 = load i64, i64* %14, align 8
  %148 = add i64 %147, 1
  %149 = load i64*, i64** %10, align 8
  %150 = load i64, i64* %149, align 8
  %151 = icmp uge i64 %148, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %132
  %153 = load i32, i32* @E2BIG, align 4
  store i32 %153, i32* %6, align 4
  br label %212

154:                                              ; preds = %132
  %155 = load i32, i32* %13, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %154
  %158 = load i64, i64* %16, align 8
  %159 = load i64*, i64** %9, align 8
  %160 = load i64, i64* %14, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %14, align 8
  %162 = getelementptr inbounds i64, i64* %159, i64 %160
  store i64 %158, i64* %162, align 8
  %163 = load i64, i64* %17, align 8
  %164 = load i64*, i64** %9, align 8
  %165 = load i64, i64* %14, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %14, align 8
  %167 = getelementptr inbounds i64, i64* %164, i64 %165
  store i64 %163, i64* %167, align 8
  br label %181

168:                                              ; preds = %154
  %169 = load i64, i64* %16, align 8
  %170 = call i64 @BSWAP_16(i64 %169)
  %171 = load i64*, i64** %9, align 8
  %172 = load i64, i64* %14, align 8
  %173 = add i64 %172, 1
  store i64 %173, i64* %14, align 8
  %174 = getelementptr inbounds i64, i64* %171, i64 %172
  store i64 %170, i64* %174, align 8
  %175 = load i64, i64* %17, align 8
  %176 = call i64 @BSWAP_16(i64 %175)
  %177 = load i64*, i64** %9, align 8
  %178 = load i64, i64* %14, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %14, align 8
  %180 = getelementptr inbounds i64, i64* %177, i64 %178
  store i64 %176, i64* %180, align 8
  br label %181

181:                                              ; preds = %168, %157
  br label %203

182:                                              ; preds = %128
  %183 = load i64, i64* %14, align 8
  %184 = load i64*, i64** %10, align 8
  %185 = load i64, i64* %184, align 8
  %186 = icmp uge i64 %183, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %182
  %188 = load i32, i32* @E2BIG, align 4
  store i32 %188, i32* %6, align 4
  br label %212

189:                                              ; preds = %182
  %190 = load i32, i32* %13, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %189
  %193 = load i64, i64* %16, align 8
  br label %197

194:                                              ; preds = %189
  %195 = load i64, i64* %16, align 8
  %196 = call i64 @BSWAP_16(i64 %195)
  br label %197

197:                                              ; preds = %194, %192
  %198 = phi i64 [ %193, %192 ], [ %196, %194 ]
  %199 = load i64*, i64** %9, align 8
  %200 = load i64, i64* %14, align 8
  %201 = add i64 %200, 1
  store i64 %201, i64* %14, align 8
  %202 = getelementptr inbounds i64, i64* %199, i64 %200
  store i64 %198, i64* %202, align 8
  br label %203

203:                                              ; preds = %197, %181
  br label %204

204:                                              ; preds = %203
  %205 = load i64, i64* %15, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %15, align 8
  br label %92

207:                                              ; preds = %106, %92
  %208 = load i64, i64* %14, align 8
  %209 = load i64*, i64** %10, align 8
  store i64 %208, i64* %209, align 8
  %210 = load i64, i64* %15, align 8
  %211 = load i64*, i64** %8, align 8
  store i64 %210, i64* %211, align 8
  store i32 0, i32* %6, align 4
  br label %212

212:                                              ; preds = %207, %187, %152, %126, %38, %32, %24
  %213 = load i32, i32* %6, align 4
  ret i32 %213
}

declare dso_local i64 @check_endian(i32, i32*, i32*) #1

declare dso_local i64 @check_bom32(i64*, i64, i32*) #1

declare dso_local i64 @BSWAP_32(i64) #1

declare dso_local i64 @BSWAP_16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
