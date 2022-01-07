; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convertbmp.c_bmp_read_rle8_data.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convertbmp.c_bmp_read_rle8_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@OPJ_FALSE = common dso_local global i32 0, align 4
@OPJ_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i32, i32, i32)* @bmp_read_rle8_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp_read_rle8_data(i32* %0, i64* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %23 = load i64*, i64** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %11, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %23, i64 %27
  store i64* %28, i64** %15, align 8
  %29 = load i64*, i64** %8, align 8
  store i64* %29, i64** %14, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %199, %5
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %200

34:                                               ; preds = %30
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @getc(i32* %35)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* @EOF, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %41, i32* %6, align 4
  br label %202

42:                                               ; preds = %34
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %83

45:                                               ; preds = %42
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @getc(i32* %46)
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %18, align 4
  %49 = load i32, i32* @EOF, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %52, i32* %6, align 4
  br label %202

53:                                               ; preds = %45
  %54 = load i32, i32* %18, align 4
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %19, align 8
  store i32 0, i32* %17, align 4
  br label %56

56:                                               ; preds = %75, %53
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i64*, i64** %14, align 8
  %66 = ptrtoint i64* %65 to i64
  %67 = load i64*, i64** %15, align 8
  %68 = ptrtoint i64* %67 to i64
  %69 = icmp slt i64 %66, %68
  br label %70

70:                                               ; preds = %64, %60, %56
  %71 = phi i1 [ false, %60 ], [ false, %56 ], [ %69, %64 ]
  br i1 %71, label %72, label %82

72:                                               ; preds = %70
  %73 = load i64, i64* %19, align 8
  %74 = load i64*, i64** %14, align 8
  store i64 %73, i64* %74, align 8
  br label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %17, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  %80 = load i64*, i64** %14, align 8
  %81 = getelementptr inbounds i64, i64* %80, i32 1
  store i64* %81, i64** %14, align 8
  br label %56

82:                                               ; preds = %70
  br label %199

83:                                               ; preds = %42
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @getc(i32* %84)
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* @EOF, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %90, i32* %6, align 4
  br label %202

91:                                               ; preds = %83
  %92 = load i32, i32* %16, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %91
  store i32 0, i32* %12, align 4
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  %97 = load i64*, i64** %8, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %9, align 4
  %100 = mul nsw i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %97, i64 %101
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  store i64* %105, i64** %14, align 8
  br label %198

106:                                              ; preds = %91
  %107 = load i32, i32* %16, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %200

110:                                              ; preds = %106
  %111 = load i32, i32* %16, align 4
  %112 = icmp eq i32 %111, 2
  br i1 %112, label %113, label %145

113:                                              ; preds = %110
  %114 = load i32*, i32** %7, align 8
  %115 = call i32 @getc(i32* %114)
  store i32 %115, i32* %16, align 4
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* @EOF, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %120, i32* %6, align 4
  br label %202

121:                                              ; preds = %113
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %12, align 4
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @getc(i32* %125)
  store i32 %126, i32* %16, align 4
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* @EOF, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %121
  %131 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %131, i32* %6, align 4
  br label %202

132:                                              ; preds = %121
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %13, align 4
  %136 = load i64*, i64** %8, align 8
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %9, align 4
  %139 = mul nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %136, i64 %140
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  store i64* %144, i64** %14, align 8
  br label %196

145:                                              ; preds = %110
  store i32 0, i32* %20, align 4
  br label %146

146:                                              ; preds = %175, %145
  %147 = load i32, i32* %20, align 4
  %148 = load i32, i32* %16, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %146
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %150
  %155 = load i64*, i64** %14, align 8
  %156 = ptrtoint i64* %155 to i64
  %157 = load i64*, i64** %15, align 8
  %158 = ptrtoint i64* %157 to i64
  %159 = icmp slt i64 %156, %158
  br label %160

160:                                              ; preds = %154, %150, %146
  %161 = phi i1 [ false, %150 ], [ false, %146 ], [ %159, %154 ]
  br i1 %161, label %162, label %182

162:                                              ; preds = %160
  %163 = load i32*, i32** %7, align 8
  %164 = call i32 @getc(i32* %163)
  store i32 %164, i32* %21, align 4
  %165 = load i32, i32* %21, align 4
  %166 = load i32, i32* @EOF, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %169, i32* %6, align 4
  br label %202

170:                                              ; preds = %162
  %171 = load i32, i32* %21, align 4
  %172 = sext i32 %171 to i64
  store i64 %172, i64* %22, align 8
  %173 = load i64, i64* %22, align 8
  %174 = load i64*, i64** %14, align 8
  store i64 %173, i64* %174, align 8
  br label %175

175:                                              ; preds = %170
  %176 = load i32, i32* %20, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %20, align 4
  %178 = load i32, i32* %12, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %12, align 4
  %180 = load i64*, i64** %14, align 8
  %181 = getelementptr inbounds i64, i64* %180, i32 1
  store i64* %181, i64** %14, align 8
  br label %146

182:                                              ; preds = %160
  %183 = load i32, i32* %16, align 4
  %184 = and i32 %183, 1
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %182
  %187 = load i32*, i32** %7, align 8
  %188 = call i32 @getc(i32* %187)
  store i32 %188, i32* %16, align 4
  %189 = load i32, i32* %16, align 4
  %190 = load i32, i32* @EOF, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %186
  %193 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %193, i32* %6, align 4
  br label %202

194:                                              ; preds = %186
  br label %195

195:                                              ; preds = %194, %182
  br label %196

196:                                              ; preds = %195, %132
  br label %197

197:                                              ; preds = %196
  br label %198

198:                                              ; preds = %197, %94
  br label %199

199:                                              ; preds = %198, %82
  br label %30

200:                                              ; preds = %109, %30
  %201 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %201, i32* %6, align 4
  br label %202

202:                                              ; preds = %200, %192, %168, %130, %119, %89, %51, %40
  %203 = load i32, i32* %6, align 4
  ret i32 %203
}

declare dso_local i32 @getc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
