; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_INT_evaluate_binary.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_INT_evaluate_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex_expr = type { i32, i32, i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_CONTINUE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Unknown operator %d\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64*, %struct.complex_expr*, i64*, i32*)* @INT_evaluate_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @INT_evaluate_binary(i32* %0, i64* %1, %struct.complex_expr* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.complex_expr*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i64* %1, i64** %8, align 8
  store %struct.complex_expr* %2, %struct.complex_expr** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i64*, i64** %8, align 8
  %18 = load %struct.complex_expr*, %struct.complex_expr** %9, align 8
  %19 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %11, align 8
  %22 = call i64 @WHERE_evaluate(i32* %16, i64* %17, i32 %20, i64* %14, i32* %21)
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %12, align 8
  %24 = load i64, i64* @ERROR_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %5
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* @ERROR_CONTINUE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i64, i64* %12, align 8
  store i64 %31, i64* %6, align 8
  br label %194

32:                                               ; preds = %26, %5
  %33 = load i32*, i32** %7, align 8
  %34 = load i64*, i64** %8, align 8
  %35 = load %struct.complex_expr*, %struct.complex_expr** %9, align 8
  %36 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = call i64 @WHERE_evaluate(i32* %33, i64* %34, i32 %37, i64* %15, i32* %38)
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* @ERROR_SUCCESS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %32
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* @ERROR_CONTINUE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i64, i64* %13, align 8
  store i64 %48, i64* %6, align 8
  br label %194

49:                                               ; preds = %43, %32
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* @ERROR_CONTINUE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* @ERROR_CONTINUE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %118

57:                                               ; preds = %53, %49
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* %13, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i64, i64* @TRUE, align 8
  %63 = load i64*, i64** %10, align 8
  store i64 %62, i64* %63, align 8
  %64 = load i64, i64* @ERROR_CONTINUE, align 8
  store i64 %64, i64* %6, align 8
  br label %194

65:                                               ; preds = %57
  %66 = load %struct.complex_expr*, %struct.complex_expr** %9, align 8
  %67 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 135
  br i1 %69, label %70, label %89

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* @ERROR_CONTINUE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i64, i64* %15, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74, %70
  %78 = load i64, i64* %13, align 8
  %79 = load i64, i64* @ERROR_CONTINUE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load i64, i64* %14, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %81, %74
  %85 = load i64, i64* @FALSE, align 8
  %86 = load i64*, i64** %10, align 8
  store i64 %85, i64* %86, align 8
  %87 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %87, i64* %6, align 8
  br label %194

88:                                               ; preds = %81, %77
  br label %114

89:                                               ; preds = %65
  %90 = load %struct.complex_expr*, %struct.complex_expr** %9, align 8
  %91 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 128
  br i1 %93, label %94, label %113

94:                                               ; preds = %89
  %95 = load i64, i64* %12, align 8
  %96 = load i64, i64* @ERROR_CONTINUE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i64, i64* %15, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %98, %94
  %102 = load i64, i64* %13, align 8
  %103 = load i64, i64* @ERROR_CONTINUE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = load i64, i64* %14, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105, %98
  %109 = load i64, i64* @TRUE, align 8
  %110 = load i64*, i64** %10, align 8
  store i64 %109, i64* %110, align 8
  %111 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %111, i64* %6, align 8
  br label %194

112:                                              ; preds = %105, %101
  br label %113

113:                                              ; preds = %112, %89
  br label %114

114:                                              ; preds = %113, %88
  %115 = load i64, i64* @TRUE, align 8
  %116 = load i64*, i64** %10, align 8
  store i64 %115, i64* %116, align 8
  %117 = load i64, i64* @ERROR_CONTINUE, align 8
  store i64 %117, i64* %6, align 8
  br label %194

118:                                              ; preds = %53
  %119 = load %struct.complex_expr*, %struct.complex_expr** %9, align 8
  %120 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  switch i32 %121, label %186 [
    i32 134, label %122
    i32 135, label %129
    i32 128, label %140
    i32 132, label %151
    i32 130, label %158
    i32 131, label %165
    i32 133, label %172
    i32 129, label %179
  ]

122:                                              ; preds = %118
  %123 = load i64, i64* %14, align 8
  %124 = load i64, i64* %15, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = sext i32 %126 to i64
  %128 = load i64*, i64** %10, align 8
  store i64 %127, i64* %128, align 8
  br label %192

129:                                              ; preds = %118
  %130 = load i64, i64* %14, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i64, i64* %15, align 8
  %134 = icmp ne i64 %133, 0
  br label %135

135:                                              ; preds = %132, %129
  %136 = phi i1 [ false, %129 ], [ %134, %132 ]
  %137 = zext i1 %136 to i32
  %138 = sext i32 %137 to i64
  %139 = load i64*, i64** %10, align 8
  store i64 %138, i64* %139, align 8
  br label %192

140:                                              ; preds = %118
  %141 = load i64, i64* %14, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = load i64, i64* %15, align 8
  %145 = icmp ne i64 %144, 0
  br label %146

146:                                              ; preds = %143, %140
  %147 = phi i1 [ true, %140 ], [ %145, %143 ]
  %148 = zext i1 %147 to i32
  %149 = sext i32 %148 to i64
  %150 = load i64*, i64** %10, align 8
  store i64 %149, i64* %150, align 8
  br label %192

151:                                              ; preds = %118
  %152 = load i64, i64* %14, align 8
  %153 = load i64, i64* %15, align 8
  %154 = icmp sgt i64 %152, %153
  %155 = zext i1 %154 to i32
  %156 = sext i32 %155 to i64
  %157 = load i64*, i64** %10, align 8
  store i64 %156, i64* %157, align 8
  br label %192

158:                                              ; preds = %118
  %159 = load i64, i64* %14, align 8
  %160 = load i64, i64* %15, align 8
  %161 = icmp slt i64 %159, %160
  %162 = zext i1 %161 to i32
  %163 = sext i32 %162 to i64
  %164 = load i64*, i64** %10, align 8
  store i64 %163, i64* %164, align 8
  br label %192

165:                                              ; preds = %118
  %166 = load i64, i64* %14, align 8
  %167 = load i64, i64* %15, align 8
  %168 = icmp sle i64 %166, %167
  %169 = zext i1 %168 to i32
  %170 = sext i32 %169 to i64
  %171 = load i64*, i64** %10, align 8
  store i64 %170, i64* %171, align 8
  br label %192

172:                                              ; preds = %118
  %173 = load i64, i64* %14, align 8
  %174 = load i64, i64* %15, align 8
  %175 = icmp sge i64 %173, %174
  %176 = zext i1 %175 to i32
  %177 = sext i32 %176 to i64
  %178 = load i64*, i64** %10, align 8
  store i64 %177, i64* %178, align 8
  br label %192

179:                                              ; preds = %118
  %180 = load i64, i64* %14, align 8
  %181 = load i64, i64* %15, align 8
  %182 = icmp ne i64 %180, %181
  %183 = zext i1 %182 to i32
  %184 = sext i32 %183 to i64
  %185 = load i64*, i64** %10, align 8
  store i64 %184, i64* %185, align 8
  br label %192

186:                                              ; preds = %118
  %187 = load %struct.complex_expr*, %struct.complex_expr** %9, align 8
  %188 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %189)
  %191 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %191, i64* %6, align 8
  br label %194

192:                                              ; preds = %179, %172, %165, %158, %151, %146, %135, %122
  %193 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %193, i64* %6, align 8
  br label %194

194:                                              ; preds = %192, %186, %114, %108, %84, %61, %47, %30
  %195 = load i64, i64* %6, align 8
  ret i64 %195
}

declare dso_local i64 @WHERE_evaluate(i32*, i64*, i32, i64*, i32*) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
