; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utbuffer.c_AcpiUtDumpBuffer.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utbuffer.c_AcpiUtDumpBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DB_DISPLAY_DATA_ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Null Buffer Pointer in DumpBuffer!\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%8.4X: \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%04X \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%08X \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%08X\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"// \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiUtDumpBuffer(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @DB_DISPLAY_DATA_ONLY, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* @DB_DISPLAY_DATA_ONLY, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %173

25:                                               ; preds = %4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %25
  store i32 131, i32* %7, align 4
  br label %33

33:                                               ; preds = %32, %28
  br label %34

34:                                               ; preds = %169, %33
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %172

38:                                               ; preds = %34
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %42, %43
  %45 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %41, %38
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %121, %56, %46
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 16
  br i1 %49, label %50, label %125

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* %6, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load i32, i32* %7, align 4
  %58 = mul nsw i32 %57, 2
  %59 = add nsw i32 %58, 1
  %60 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %10, align 4
  br label %47

64:                                               ; preds = %50
  %65 = load i32, i32* %7, align 4
  switch i32 %65, label %67 [
    i32 131, label %66
    i32 128, label %77
    i32 130, label %88
    i32 129, label %99
  ]

66:                                               ; preds = %64
  br label %67

67:                                               ; preds = %64, %66
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = add i64 %70, %72
  %74 = getelementptr inbounds i32, i32* %68, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  br label %121

77:                                               ; preds = %64
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = add i64 %80, %82
  %84 = getelementptr inbounds i32, i32* %78, i64 %83
  %85 = call i32 @ACPI_MOVE_16_TO_32(i32* %11, i32* %84)
  %86 = load i32, i32* %11, align 4
  %87 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %86)
  br label %121

88:                                               ; preds = %64
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = add i64 %91, %93
  %95 = getelementptr inbounds i32, i32* %89, i64 %94
  %96 = call i32 @ACPI_MOVE_32_TO_32(i32* %11, i32* %95)
  %97 = load i32, i32* %11, align 4
  %98 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %97)
  br label %121

99:                                               ; preds = %64
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = add i64 %102, %104
  %106 = getelementptr inbounds i32, i32* %100, i64 %105
  %107 = call i32 @ACPI_MOVE_32_TO_32(i32* %11, i32* %106)
  %108 = load i32, i32* %11, align 4
  %109 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %108)
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = add i64 %112, %114
  %116 = add i64 %115, 4
  %117 = getelementptr inbounds i32, i32* %110, i64 %116
  %118 = call i32 @ACPI_MOVE_32_TO_32(i32* %11, i32* %117)
  %119 = load i32, i32* %11, align 4
  %120 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %99, %88, %77, %67
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %10, align 4
  br label %47

125:                                              ; preds = %47
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %169, label %128

128:                                              ; preds = %125
  %129 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %130

130:                                              ; preds = %164, %128
  %131 = load i32, i32* %10, align 4
  %132 = icmp slt i32 %131, 16
  br i1 %132, label %133, label %167

133:                                              ; preds = %130
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %134, %135
  %137 = load i32, i32* %6, align 4
  %138 = icmp sge i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %173

141:                                              ; preds = %133
  %142 = load i32, i32* %10, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %141
  %147 = load i32*, i32** %5, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = add i64 %149, %151
  %153 = getelementptr inbounds i32, i32* %147, i64 %152
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %12, align 4
  %155 = load i32, i32* %12, align 4
  %156 = call i64 @isprint(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %146
  %159 = load i32, i32* %12, align 4
  %160 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %159)
  br label %163

161:                                              ; preds = %146
  %162 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %163

163:                                              ; preds = %161, %158
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %130

167:                                              ; preds = %130
  %168 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167, %125
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %170, 16
  store i32 %171, i32* %9, align 4
  br label %34

172:                                              ; preds = %34
  br label %173

173:                                              ; preds = %172, %139, %23
  ret void
}

declare dso_local i32 @AcpiOsPrintf(i8*, ...) #1

declare dso_local i32 @ACPI_MOVE_16_TO_32(i32*, i32*) #1

declare dso_local i32 @ACPI_MOVE_32_TO_32(i32*, i32*) #1

declare dso_local i64 @isprint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
