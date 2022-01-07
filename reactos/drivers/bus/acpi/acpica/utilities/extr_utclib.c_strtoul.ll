; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utclib.c_strtoul.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utclib.c_strtoul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AE_OK = common dso_local global i64 0, align 8
@ACPI_SIGN_NEGATIVE = common dso_local global i32 0, align 4
@ACPI_SIGN_POSITIVE = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strtoul(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %13 = load i64, i64* @AE_OK, align 8
  store i64 %13, i64* %12, align 8
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %10, align 8
  br label %15

15:                                               ; preds = %27, %3
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = call i64 @isspace(i8 signext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 9
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi i1 [ true, %15 ], [ %24, %20 ]
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %4, align 8
  br label %15

30:                                               ; preds = %25
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 45
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @ACPI_SIGN_NEGATIVE, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %4, align 8
  br label %51

39:                                               ; preds = %30
  %40 = load i8*, i8** %4, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 43
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %4, align 8
  %47 = load i32, i32* @ACPI_SIGN_POSITIVE, align 4
  store i32 %47, i32* %9, align 4
  br label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @ACPI_SIGN_POSITIVE, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %48, %44
  br label %51

51:                                               ; preds = %50, %35
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %51
  %55 = load i8*, i8** %4, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 48
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %4, align 8
  %62 = load i8, i8* %61, align 1
  %63 = call signext i8 @tolower(i8 signext %62)
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 120
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  store i32 16, i32* %6, align 4
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %4, align 8
  br label %70

69:                                               ; preds = %59
  store i32 8, i32* %6, align 4
  br label %70

70:                                               ; preds = %69, %66
  br label %72

71:                                               ; preds = %54
  store i32 10, i32* %6, align 4
  br label %72

72:                                               ; preds = %71, %70
  br label %81

73:                                               ; preds = %51
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 2
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = icmp sgt i32 %77, 36
  br i1 %78, label %79, label %80

79:                                               ; preds = %76, %73
  br label %166

80:                                               ; preds = %76
  br label %81

81:                                               ; preds = %80, %72
  %82 = load i32, i32* %6, align 4
  %83 = icmp eq i32 %82, 8
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load i8*, i8** %4, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 48
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %4, align 8
  br label %92

92:                                               ; preds = %89, %84, %81
  %93 = load i32, i32* %6, align 4
  %94 = icmp eq i32 %93, 16
  br i1 %94, label %95, label %110

95:                                               ; preds = %92
  %96 = load i8*, i8** %4, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 48
  br i1 %99, label %100, label %110

100:                                              ; preds = %95
  %101 = load i8*, i8** %4, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %4, align 8
  %103 = load i8, i8* %102, align 1
  %104 = call signext i8 @tolower(i8 signext %103)
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 120
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %4, align 8
  br label %110

110:                                              ; preds = %107, %100, %95, %92
  br label %111

111:                                              ; preds = %162, %110
  %112 = load i8*, i8** %4, align 8
  %113 = load i8, i8* %112, align 1
  %114 = icmp ne i8 %113, 0
  br i1 %114, label %115, label %165

115:                                              ; preds = %111
  %116 = load i8*, i8** %4, align 8
  %117 = load i8, i8* %116, align 1
  %118 = call i64 @isdigit(i8 signext %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load i8*, i8** %4, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i64
  %124 = sub nsw i64 %123, 48
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %8, align 4
  br label %140

126:                                              ; preds = %115
  %127 = load i8*, i8** %4, align 8
  %128 = load i8, i8* %127, align 1
  %129 = call i64 @toupper(i8 signext %128)
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i64 @isupper(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %126
  %135 = load i32, i32* %8, align 4
  %136 = sub nsw i32 %135, 65
  %137 = add nsw i32 %136, 10
  store i32 %137, i32* %8, align 4
  br label %139

138:                                              ; preds = %126
  br label %166

139:                                              ; preds = %134
  br label %140

140:                                              ; preds = %139, %120
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp sge i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %166

145:                                              ; preds = %140
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %148 = load i32, i32* %8, align 4
  %149 = sub nsw i32 %147, %148
  %150 = load i32, i32* %6, align 4
  %151 = sdiv i32 %149, %150
  %152 = icmp sgt i32 %146, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %145
  %154 = load i64, i64* @AE_ERROR, align 8
  store i64 %154, i64* %12, align 8
  store i32 0, i32* %11, align 4
  br label %162

155:                                              ; preds = %145
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* %11, align 4
  %158 = mul nsw i32 %157, %156
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %11, align 4
  store i32 1, i32* %7, align 4
  br label %162

162:                                              ; preds = %155, %153
  %163 = load i8*, i8** %4, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %4, align 8
  br label %111

165:                                              ; preds = %111
  br label %166

166:                                              ; preds = %165, %144, %138, %79
  %167 = load i8**, i8*** %5, align 8
  %168 = icmp ne i8** %167, null
  br i1 %168, label %169, label %185

169:                                              ; preds = %166
  %170 = load i32, i32* %7, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %169
  %173 = load i32, i32* %11, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %172
  %176 = load i8*, i8** %4, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i8*, i8** %10, align 8
  %180 = load i8**, i8*** %5, align 8
  store i8* %179, i8** %180, align 8
  br label %184

181:                                              ; preds = %175, %172, %169
  %182 = load i8*, i8** %4, align 8
  %183 = load i8**, i8*** %5, align 8
  store i8* %182, i8** %183, align 8
  br label %184

184:                                              ; preds = %181, %178
  br label %185

185:                                              ; preds = %184, %166
  %186 = load i64, i64* %12, align 8
  %187 = load i64, i64* @AE_ERROR, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %185
  %190 = load i32, i32* @ACPI_UINT32_MAX, align 4
  store i32 %190, i32* %11, align 4
  br label %191

191:                                              ; preds = %189, %185
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* @ACPI_SIGN_NEGATIVE, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %191
  %196 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %197 = load i32, i32* %11, align 4
  %198 = sub nsw i32 %196, %197
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %11, align 4
  br label %200

200:                                              ; preds = %195, %191
  %201 = load i32, i32* %11, align 4
  ret i32 %201
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @toupper(i8 signext) #1

declare dso_local i64 @isupper(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
