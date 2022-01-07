; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utprint.c_AcpiUtFormatNumber.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utprint.c_AcpiUtFormatNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_FORMAT_LEFT = common dso_local global i32 0, align 4
@ACPI_FORMAT_ZERO = common dso_local global i32 0, align 4
@ACPI_FORMAT_PREFIX = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@ACPI_FORMAT_UPPER = common dso_local global i32 0, align 4
@ACPI_FORMAT_SIGN = common dso_local global i32 0, align 4
@ACPI_FORMAT_SIGN_PLUS = common dso_local global i32 0, align 4
@ACPI_FORMAT_SIGN_PLUS_SPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i64, i32, i64, i64, i32)* @AcpiUtFormatNumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @AcpiUtFormatNumber(i8* %0, i8* %1, i64 %2, i32 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca [66 x i8], align 16
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %28, label %25

25:                                               ; preds = %7
  %26 = load i32, i32* %12, align 4
  %27 = icmp sgt i32 %26, 16
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %7
  store i8* null, i8** %8, align 8
  br label %223

29:                                               ; preds = %25
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* @ACPI_FORMAT_LEFT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, i32* @ACPI_FORMAT_ZERO, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %15, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %15, align 4
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* @ACPI_FORMAT_PREFIX, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 10
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i64, i64* @TRUE, align 8
  br label %51

49:                                               ; preds = %44, %39
  %50 = load i64, i64* @FALSE, align 8
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i64 [ %48, %47 ], [ %50, %49 ]
  store i64 %52, i64* %19, align 8
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* @ACPI_FORMAT_UPPER, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i64, i64* @TRUE, align 8
  br label %61

59:                                               ; preds = %51
  %60 = load i64, i64* @FALSE, align 8
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i64 [ %58, %57 ], [ %60, %59 ]
  store i64 %62, i64* %20, align 8
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* @ACPI_FORMAT_ZERO, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 48, i32 32
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %18, align 1
  store i8 0, i8* %17, align 1
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* @ACPI_FORMAT_SIGN, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %101

74:                                               ; preds = %61
  %75 = load i64, i64* %11, align 8
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  store i8 45, i8* %17, align 1
  %78 = load i64, i64* %11, align 8
  %79 = sub nsw i64 0, %78
  store i64 %79, i64* %11, align 8
  %80 = load i64, i64* %13, align 8
  %81 = add nsw i64 %80, -1
  store i64 %81, i64* %13, align 8
  br label %100

82:                                               ; preds = %74
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* @ACPI_FORMAT_SIGN_PLUS, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  store i8 43, i8* %17, align 1
  %88 = load i64, i64* %13, align 8
  %89 = add nsw i64 %88, -1
  store i64 %89, i64* %13, align 8
  br label %99

90:                                               ; preds = %82
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* @ACPI_FORMAT_SIGN_PLUS_SPACE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  store i8 32, i8* %17, align 1
  %96 = load i64, i64* %13, align 8
  %97 = add nsw i64 %96, -1
  store i64 %97, i64* %13, align 8
  br label %98

98:                                               ; preds = %95, %90
  br label %99

99:                                               ; preds = %98, %87
  br label %100

100:                                              ; preds = %99, %77
  br label %101

101:                                              ; preds = %100, %61
  %102 = load i64, i64* %19, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load i64, i64* %13, align 8
  %106 = add nsw i64 %105, -1
  store i64 %106, i64* %13, align 8
  %107 = load i32, i32* %12, align 4
  %108 = icmp eq i32 %107, 16
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i64, i64* %13, align 8
  %111 = add nsw i64 %110, -1
  store i64 %111, i64* %13, align 8
  br label %112

112:                                              ; preds = %109, %104
  br label %113

113:                                              ; preds = %112, %101
  %114 = getelementptr inbounds [66 x i8], [66 x i8]* %22, i64 0, i64 0
  %115 = load i64, i64* %11, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i64, i64* %20, align 8
  %118 = call i8* @AcpiUtPutNumber(i8* %114, i64 %115, i32 %116, i64 %117)
  store i8* %118, i8** %16, align 8
  %119 = load i8*, i8** %16, align 8
  %120 = getelementptr inbounds [66 x i8], [66 x i8]* %22, i64 0, i64 0
  %121 = call i64 @ACPI_PTR_DIFF(i8* %119, i8* %120)
  store i64 %121, i64* %21, align 8
  %122 = load i64, i64* %21, align 8
  %123 = load i64, i64* %14, align 8
  %124 = icmp sgt i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %113
  %126 = load i64, i64* %21, align 8
  store i64 %126, i64* %14, align 8
  br label %127

127:                                              ; preds = %125, %113
  %128 = load i64, i64* %14, align 8
  %129 = load i64, i64* %13, align 8
  %130 = sub nsw i64 %129, %128
  store i64 %130, i64* %13, align 8
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* @ACPI_FORMAT_ZERO, align 4
  %133 = load i32, i32* @ACPI_FORMAT_LEFT, align 4
  %134 = or i32 %132, %133
  %135 = and i32 %131, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %147, label %137

137:                                              ; preds = %127
  br label %138

138:                                              ; preds = %142, %137
  %139 = load i64, i64* %13, align 8
  %140 = add nsw i64 %139, -1
  store i64 %140, i64* %13, align 8
  %141 = icmp sge i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load i8*, i8** %9, align 8
  %144 = load i8*, i8** %10, align 8
  %145 = call i8* @AcpiUtBoundStringOutput(i8* %143, i8* %144, i8 signext 32)
  store i8* %145, i8** %9, align 8
  br label %138

146:                                              ; preds = %138
  br label %147

147:                                              ; preds = %146, %127
  %148 = load i8, i8* %17, align 1
  %149 = icmp ne i8 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i8*, i8** %9, align 8
  %152 = load i8*, i8** %10, align 8
  %153 = load i8, i8* %17, align 1
  %154 = call i8* @AcpiUtBoundStringOutput(i8* %151, i8* %152, i8 signext %153)
  store i8* %154, i8** %9, align 8
  br label %155

155:                                              ; preds = %150, %147
  %156 = load i64, i64* %19, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %174

158:                                              ; preds = %155
  %159 = load i8*, i8** %9, align 8
  %160 = load i8*, i8** %10, align 8
  %161 = call i8* @AcpiUtBoundStringOutput(i8* %159, i8* %160, i8 signext 48)
  store i8* %161, i8** %9, align 8
  %162 = load i32, i32* %12, align 4
  %163 = icmp eq i32 %162, 16
  br i1 %163, label %164, label %173

164:                                              ; preds = %158
  %165 = load i8*, i8** %9, align 8
  %166 = load i8*, i8** %10, align 8
  %167 = load i64, i64* %20, align 8
  %168 = icmp ne i64 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i32 88, i32 120
  %171 = trunc i32 %170 to i8
  %172 = call i8* @AcpiUtBoundStringOutput(i8* %165, i8* %166, i8 signext %171)
  store i8* %172, i8** %9, align 8
  br label %173

173:                                              ; preds = %164, %158
  br label %174

174:                                              ; preds = %173, %155
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* @ACPI_FORMAT_LEFT, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %190, label %179

179:                                              ; preds = %174
  br label %180

180:                                              ; preds = %184, %179
  %181 = load i64, i64* %13, align 8
  %182 = add nsw i64 %181, -1
  store i64 %182, i64* %13, align 8
  %183 = icmp sge i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %180
  %185 = load i8*, i8** %9, align 8
  %186 = load i8*, i8** %10, align 8
  %187 = load i8, i8* %18, align 1
  %188 = call i8* @AcpiUtBoundStringOutput(i8* %185, i8* %186, i8 signext %187)
  store i8* %188, i8** %9, align 8
  br label %180

189:                                              ; preds = %180
  br label %190

190:                                              ; preds = %189, %174
  br label %191

191:                                              ; preds = %196, %190
  %192 = load i64, i64* %21, align 8
  %193 = load i64, i64* %14, align 8
  %194 = add nsw i64 %193, -1
  store i64 %194, i64* %14, align 8
  %195 = icmp sle i64 %192, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %191
  %197 = load i8*, i8** %9, align 8
  %198 = load i8*, i8** %10, align 8
  %199 = call i8* @AcpiUtBoundStringOutput(i8* %197, i8* %198, i8 signext 48)
  store i8* %199, i8** %9, align 8
  br label %191

200:                                              ; preds = %191
  br label %201

201:                                              ; preds = %205, %200
  %202 = load i64, i64* %21, align 8
  %203 = add nsw i64 %202, -1
  store i64 %203, i64* %21, align 8
  %204 = icmp sge i64 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %201
  %206 = load i8*, i8** %9, align 8
  %207 = load i8*, i8** %10, align 8
  %208 = load i64, i64* %21, align 8
  %209 = getelementptr inbounds [66 x i8], [66 x i8]* %22, i64 0, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = call i8* @AcpiUtBoundStringOutput(i8* %206, i8* %207, i8 signext %210)
  store i8* %211, i8** %9, align 8
  br label %201

212:                                              ; preds = %201
  br label %213

213:                                              ; preds = %217, %212
  %214 = load i64, i64* %13, align 8
  %215 = add nsw i64 %214, -1
  store i64 %215, i64* %13, align 8
  %216 = icmp sge i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %213
  %218 = load i8*, i8** %9, align 8
  %219 = load i8*, i8** %10, align 8
  %220 = call i8* @AcpiUtBoundStringOutput(i8* %218, i8* %219, i8 signext 32)
  store i8* %220, i8** %9, align 8
  br label %213

221:                                              ; preds = %213
  %222 = load i8*, i8** %9, align 8
  store i8* %222, i8** %8, align 8
  br label %223

223:                                              ; preds = %221, %28
  %224 = load i8*, i8** %8, align 8
  ret i8* %224
}

declare dso_local i8* @AcpiUtPutNumber(i8*, i64, i32, i64) #1

declare dso_local i64 @ACPI_PTR_DIFF(i8*, i8*) #1

declare dso_local i8* @AcpiUtBoundStringOutput(i8*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
