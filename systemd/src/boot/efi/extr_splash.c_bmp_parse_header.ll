; ModuleID = '/home/carl/AnghaBench/systemd/src/boot/efi/extr_splash.c_bmp_parse_header.c'
source_filename = "/home/carl/AnghaBench/systemd/src/boot/efi/extr_splash.c_bmp_parse_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmp_dib = type { i32, i32, i32, i32, i32, i32 }
%struct.bmp_map = type { i32 }
%struct.bmp_file = type { i8*, i32, i32 }

@EFI_INVALID_PARAMETER = common dso_local global i32 0, align 4
@EFI_UNSUPPORTED = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bmp_parse_header(i32* %0, i32 %1, %struct.bmp_dib** %2, %struct.bmp_map** %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bmp_dib**, align 8
  %10 = alloca %struct.bmp_map**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.bmp_file*, align 8
  %13 = alloca %struct.bmp_dib*, align 8
  %14 = alloca %struct.bmp_map*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.bmp_dib** %2, %struct.bmp_dib*** %9, align 8
  store %struct.bmp_map** %3, %struct.bmp_map*** %10, align 8
  store i32** %4, i32*** %11, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 40
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @EFI_INVALID_PARAMETER, align 4
  store i32 %22, i32* %6, align 4
  br label %220

23:                                               ; preds = %5
  %24 = load i32*, i32** %7, align 8
  %25 = bitcast i32* %24 to %struct.bmp_file*
  store %struct.bmp_file* %25, %struct.bmp_file** %12, align 8
  %26 = load %struct.bmp_file*, %struct.bmp_file** %12, align 8
  %27 = getelementptr inbounds %struct.bmp_file, %struct.bmp_file* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 66
  br i1 %32, label %41, label %33

33:                                               ; preds = %23
  %34 = load %struct.bmp_file*, %struct.bmp_file** %12, align 8
  %35 = getelementptr inbounds %struct.bmp_file, %struct.bmp_file* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 77
  br i1 %40, label %41, label %43

41:                                               ; preds = %33, %23
  %42 = load i32, i32* @EFI_INVALID_PARAMETER, align 4
  store i32 %42, i32* %6, align 4
  br label %220

43:                                               ; preds = %33
  %44 = load %struct.bmp_file*, %struct.bmp_file** %12, align 8
  %45 = getelementptr inbounds %struct.bmp_file, %struct.bmp_file* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @EFI_INVALID_PARAMETER, align 4
  store i32 %50, i32* %6, align 4
  br label %220

51:                                               ; preds = %43
  %52 = load %struct.bmp_file*, %struct.bmp_file** %12, align 8
  %53 = getelementptr inbounds %struct.bmp_file, %struct.bmp_file* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.bmp_file*, %struct.bmp_file** %12, align 8
  %56 = getelementptr inbounds %struct.bmp_file, %struct.bmp_file* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @EFI_INVALID_PARAMETER, align 4
  store i32 %60, i32* %6, align 4
  br label %220

61:                                               ; preds = %51
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 16
  %64 = bitcast i32* %63 to %struct.bmp_dib*
  store %struct.bmp_dib* %64, %struct.bmp_dib** %13, align 8
  %65 = load %struct.bmp_dib*, %struct.bmp_dib** %13, align 8
  %66 = getelementptr inbounds %struct.bmp_dib, %struct.bmp_dib* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp ult i64 %68, 24
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* @EFI_UNSUPPORTED, align 4
  store i32 %71, i32* %6, align 4
  br label %220

72:                                               ; preds = %61
  %73 = load %struct.bmp_dib*, %struct.bmp_dib** %13, align 8
  %74 = getelementptr inbounds %struct.bmp_dib, %struct.bmp_dib* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  switch i32 %75, label %97 [
    i32 1, label %76
    i32 4, label %76
    i32 8, label %76
    i32 24, label %76
    i32 16, label %84
    i32 32, label %84
  ]

76:                                               ; preds = %72, %72, %72, %72
  %77 = load %struct.bmp_dib*, %struct.bmp_dib** %13, align 8
  %78 = getelementptr inbounds %struct.bmp_dib, %struct.bmp_dib* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @EFI_UNSUPPORTED, align 4
  store i32 %82, i32* %6, align 4
  br label %220

83:                                               ; preds = %76
  br label %99

84:                                               ; preds = %72, %72
  %85 = load %struct.bmp_dib*, %struct.bmp_dib** %13, align 8
  %86 = getelementptr inbounds %struct.bmp_dib, %struct.bmp_dib* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load %struct.bmp_dib*, %struct.bmp_dib** %13, align 8
  %91 = getelementptr inbounds %struct.bmp_dib, %struct.bmp_dib* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 3
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* @EFI_UNSUPPORTED, align 4
  store i32 %95, i32* %6, align 4
  br label %220

96:                                               ; preds = %89, %84
  br label %99

97:                                               ; preds = %72
  %98 = load i32, i32* @EFI_UNSUPPORTED, align 4
  store i32 %98, i32* %6, align 4
  br label %220

99:                                               ; preds = %96, %83
  %100 = load %struct.bmp_dib*, %struct.bmp_dib** %13, align 8
  %101 = getelementptr inbounds %struct.bmp_dib, %struct.bmp_dib* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.bmp_dib*, %struct.bmp_dib** %13, align 8
  %104 = getelementptr inbounds %struct.bmp_dib, %struct.bmp_dib* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %102, %105
  %107 = add nsw i32 %106, 31
  %108 = sdiv i32 %107, 32
  %109 = mul nsw i32 %108, 4
  store i32 %109, i32* %15, align 4
  %110 = load %struct.bmp_file*, %struct.bmp_file** %12, align 8
  %111 = getelementptr inbounds %struct.bmp_file, %struct.bmp_file* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.bmp_file*, %struct.bmp_file** %12, align 8
  %114 = getelementptr inbounds %struct.bmp_file, %struct.bmp_file* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %112, %115
  %117 = load %struct.bmp_dib*, %struct.bmp_dib** %13, align 8
  %118 = getelementptr inbounds %struct.bmp_dib, %struct.bmp_dib* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %15, align 4
  %121 = mul nsw i32 %119, %120
  %122 = icmp slt i32 %116, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %99
  %124 = load i32, i32* @EFI_INVALID_PARAMETER, align 4
  store i32 %124, i32* %6, align 4
  br label %220

125:                                              ; preds = %99
  %126 = load i32, i32* %15, align 4
  %127 = load %struct.bmp_dib*, %struct.bmp_dib** %13, align 8
  %128 = getelementptr inbounds %struct.bmp_dib, %struct.bmp_dib* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %126, %129
  %131 = icmp sgt i32 %130, 67108864
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = load i32, i32* @EFI_INVALID_PARAMETER, align 4
  store i32 %133, i32* %6, align 4
  br label %220

134:                                              ; preds = %125
  %135 = load i32*, i32** %7, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 16
  %137 = load %struct.bmp_dib*, %struct.bmp_dib** %13, align 8
  %138 = getelementptr inbounds %struct.bmp_dib, %struct.bmp_dib* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %136, i64 %140
  %142 = bitcast i32* %141 to %struct.bmp_map*
  store %struct.bmp_map* %142, %struct.bmp_map** %14, align 8
  %143 = load %struct.bmp_file*, %struct.bmp_file** %12, align 8
  %144 = getelementptr inbounds %struct.bmp_file, %struct.bmp_file* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = load %struct.bmp_dib*, %struct.bmp_dib** %13, align 8
  %148 = getelementptr inbounds %struct.bmp_dib, %struct.bmp_dib* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = add i64 16, %150
  %152 = icmp ult i64 %146, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %134
  %154 = load i32, i32* @EFI_INVALID_PARAMETER, align 4
  store i32 %154, i32* %6, align 4
  br label %220

155:                                              ; preds = %134
  %156 = load %struct.bmp_file*, %struct.bmp_file** %12, align 8
  %157 = getelementptr inbounds %struct.bmp_file, %struct.bmp_file* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = load %struct.bmp_dib*, %struct.bmp_dib** %13, align 8
  %161 = getelementptr inbounds %struct.bmp_dib, %struct.bmp_dib* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = add i64 16, %163
  %165 = icmp ugt i64 %159, %164
  br i1 %165, label %166, label %207

166:                                              ; preds = %155
  %167 = load %struct.bmp_dib*, %struct.bmp_dib** %13, align 8
  %168 = getelementptr inbounds %struct.bmp_dib, %struct.bmp_dib* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %166
  %172 = load %struct.bmp_dib*, %struct.bmp_dib** %13, align 8
  %173 = getelementptr inbounds %struct.bmp_dib, %struct.bmp_dib* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %16, align 4
  br label %186

175:                                              ; preds = %166
  %176 = load %struct.bmp_dib*, %struct.bmp_dib** %13, align 8
  %177 = getelementptr inbounds %struct.bmp_dib, %struct.bmp_dib* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  switch i32 %178, label %184 [
    i32 1, label %179
    i32 4, label %179
    i32 8, label %179
  ]

179:                                              ; preds = %175, %175, %175
  %180 = load %struct.bmp_dib*, %struct.bmp_dib** %13, align 8
  %181 = getelementptr inbounds %struct.bmp_dib, %struct.bmp_dib* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = shl i32 1, %182
  store i32 %183, i32* %16, align 4
  br label %185

184:                                              ; preds = %175
  store i32 0, i32* %16, align 4
  br label %185

185:                                              ; preds = %184, %179
  br label %186

186:                                              ; preds = %185, %171
  %187 = load %struct.bmp_file*, %struct.bmp_file** %12, align 8
  %188 = getelementptr inbounds %struct.bmp_file, %struct.bmp_file* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = load %struct.bmp_dib*, %struct.bmp_dib** %13, align 8
  %192 = getelementptr inbounds %struct.bmp_dib, %struct.bmp_dib* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = add i64 16, %194
  %196 = sub i64 %190, %195
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %17, align 4
  %198 = load i32, i32* %17, align 4
  %199 = sext i32 %198 to i64
  %200 = load i32, i32* %16, align 4
  %201 = sext i32 %200 to i64
  %202 = mul i64 4, %201
  %203 = icmp ne i64 %199, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %186
  %205 = load i32, i32* @EFI_INVALID_PARAMETER, align 4
  store i32 %205, i32* %6, align 4
  br label %220

206:                                              ; preds = %186
  br label %207

207:                                              ; preds = %206, %155
  %208 = load %struct.bmp_map*, %struct.bmp_map** %14, align 8
  %209 = load %struct.bmp_map**, %struct.bmp_map*** %10, align 8
  store %struct.bmp_map* %208, %struct.bmp_map** %209, align 8
  %210 = load %struct.bmp_dib*, %struct.bmp_dib** %13, align 8
  %211 = load %struct.bmp_dib**, %struct.bmp_dib*** %9, align 8
  store %struct.bmp_dib* %210, %struct.bmp_dib** %211, align 8
  %212 = load i32*, i32** %7, align 8
  %213 = load %struct.bmp_file*, %struct.bmp_file** %12, align 8
  %214 = getelementptr inbounds %struct.bmp_file, %struct.bmp_file* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %212, i64 %216
  %218 = load i32**, i32*** %11, align 8
  store i32* %217, i32** %218, align 8
  %219 = load i32, i32* @EFI_SUCCESS, align 4
  store i32 %219, i32* %6, align 4
  br label %220

220:                                              ; preds = %207, %204, %153, %132, %123, %97, %94, %81, %70, %59, %49, %41, %21
  %221 = load i32, i32* %6, align 4
  ret i32 %221
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
