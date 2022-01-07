; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_palette.c_test_halftone_palette.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_palette.c_test_halftone_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i32 }

@DEFAULT_PALETTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"wrong size %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"%u: wrong color %02x,%02x,%02x,%02x instead of %02x,%02x,%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_halftone_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_halftone_palette() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [256 x %struct.TYPE_3__], align 16
  %4 = alloca [20 x %struct.TYPE_3__], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @GetDC(i32 0)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* @DEFAULT_PALETTE, align 4
  %10 = call i32 @GetStockObject(i32 %9)
  %11 = getelementptr inbounds [20 x %struct.TYPE_3__], [20 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %12 = call i32 @GetPaletteEntries(i32 %10, i32 0, i32 20, %struct.TYPE_3__* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 20
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %6, align 4
  %17 = call i32 (i32, i8*, i32, ...) @ok(i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @CreateHalftonePalette(i32 %18)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = getelementptr inbounds [256 x %struct.TYPE_3__], [256 x %struct.TYPE_3__]* %3, i64 0, i64 0
  %22 = call i32 @GetPaletteEntries(i32 %20, i32 0, i32 256, %struct.TYPE_3__* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 256
  br i1 %24, label %31, label %25

25:                                               ; preds = %0
  %26 = load i32, i32* %6, align 4
  %27 = icmp sle i32 %26, 20
  %28 = zext i1 %27 to i32
  %29 = call i64 @broken(i32 %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %25, %0
  %32 = phi i1 [ true, %0 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (i32, i8*, i32, ...) @ok(i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = icmp sge i32 %36, 20
  br i1 %37, label %38, label %228

38:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %126, %38
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 8
  br i1 %41, label %42, label %129

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [256 x %struct.TYPE_3__], [256 x %struct.TYPE_3__]* %3, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 16
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [20 x %struct.TYPE_3__], [20 x %struct.TYPE_3__]* %4, i64 0, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 16
  %53 = icmp eq i64 %47, %52
  br i1 %53, label %54, label %86

54:                                               ; preds = %42
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [256 x %struct.TYPE_3__], [256 x %struct.TYPE_3__]* %3, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [20 x %struct.TYPE_3__], [20 x %struct.TYPE_3__]* %4, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %59, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %54
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [256 x %struct.TYPE_3__], [256 x %struct.TYPE_3__]* %3, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 16
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [20 x %struct.TYPE_3__], [20 x %struct.TYPE_3__]* %4, i64 0, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 16
  %77 = icmp eq i64 %71, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %66
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [256 x %struct.TYPE_3__], [256 x %struct.TYPE_3__]* %3, i64 0, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  br label %86

86:                                               ; preds = %78, %66, %54, %42
  %87 = phi i1 [ false, %66 ], [ false, %54 ], [ false, %42 ], [ %85, %78 ]
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [256 x %struct.TYPE_3__], [256 x %struct.TYPE_3__]* %3, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 16
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [256 x %struct.TYPE_3__], [256 x %struct.TYPE_3__]* %3, i64 0, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [256 x %struct.TYPE_3__], [256 x %struct.TYPE_3__]* %3, i64 0, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 16
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [256 x %struct.TYPE_3__], [256 x %struct.TYPE_3__]* %3, i64 0, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [20 x %struct.TYPE_3__], [20 x %struct.TYPE_3__]* %4, i64 0, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 16
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [20 x %struct.TYPE_3__], [20 x %struct.TYPE_3__]* %4, i64 0, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [20 x %struct.TYPE_3__], [20 x %struct.TYPE_3__]* %4, i64 0, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 16
  %125 = call i32 (i32, i8*, i32, ...) @ok(i32 %88, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %89, i64 %94, i64 %99, i64 %104, i32 %109, i64 %114, i64 %119, i64 %124)
  br label %126

126:                                              ; preds = %86
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %5, align 4
  br label %39

129:                                              ; preds = %39
  %130 = load i32, i32* %6, align 4
  %131 = sub nsw i32 %130, 8
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %224, %129
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %227

136:                                              ; preds = %132
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %6, align 4
  %139 = sub nsw i32 %137, %138
  %140 = add nsw i32 %139, 20
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [256 x %struct.TYPE_3__], [256 x %struct.TYPE_3__]* %3, i64 0, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 16
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [20 x %struct.TYPE_3__], [20 x %struct.TYPE_3__]* %4, i64 0, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 16
  %151 = icmp eq i64 %145, %150
  br i1 %151, label %152, label %184

152:                                              ; preds = %136
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [256 x %struct.TYPE_3__], [256 x %struct.TYPE_3__]* %3, i64 0, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [20 x %struct.TYPE_3__], [20 x %struct.TYPE_3__]* %4, i64 0, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %157, %162
  br i1 %163, label %164, label %184

164:                                              ; preds = %152
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [256 x %struct.TYPE_3__], [256 x %struct.TYPE_3__]* %3, i64 0, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 16
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [20 x %struct.TYPE_3__], [20 x %struct.TYPE_3__]* %4, i64 0, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 16
  %175 = icmp eq i64 %169, %174
  br i1 %175, label %176, label %184

176:                                              ; preds = %164
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [256 x %struct.TYPE_3__], [256 x %struct.TYPE_3__]* %3, i64 0, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  %183 = xor i1 %182, true
  br label %184

184:                                              ; preds = %176, %164, %152, %136
  %185 = phi i1 [ false, %164 ], [ false, %152 ], [ false, %136 ], [ %183, %176 ]
  %186 = zext i1 %185 to i32
  %187 = load i32, i32* %5, align 4
  %188 = load i32, i32* %5, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [256 x %struct.TYPE_3__], [256 x %struct.TYPE_3__]* %3, i64 0, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 16
  %193 = load i32, i32* %5, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [256 x %struct.TYPE_3__], [256 x %struct.TYPE_3__]* %3, i64 0, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* %5, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [256 x %struct.TYPE_3__], [256 x %struct.TYPE_3__]* %3, i64 0, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 16
  %203 = load i32, i32* %5, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [256 x %struct.TYPE_3__], [256 x %struct.TYPE_3__]* %3, i64 0, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [20 x %struct.TYPE_3__], [20 x %struct.TYPE_3__]* %4, i64 0, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 16
  %213 = load i32, i32* %7, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [20 x %struct.TYPE_3__], [20 x %struct.TYPE_3__]* %4, i64 0, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load i32, i32* %7, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [20 x %struct.TYPE_3__], [20 x %struct.TYPE_3__]* %4, i64 0, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 16
  %223 = call i32 (i32, i8*, i32, ...) @ok(i32 %186, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %187, i64 %192, i64 %197, i64 %202, i32 %207, i64 %212, i64 %217, i64 %222)
  br label %224

224:                                              ; preds = %184
  %225 = load i32, i32* %5, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %5, align 4
  br label %132

227:                                              ; preds = %132
  br label %228

228:                                              ; preds = %227, %31
  %229 = load i32, i32* %2, align 4
  %230 = call i32 @DeleteObject(i32 %229)
  %231 = load i32, i32* %1, align 4
  %232 = call i32 @ReleaseDC(i32 0, i32 %231)
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @GetPaletteEntries(i32, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @GetStockObject(i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @CreateHalftonePalette(i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
