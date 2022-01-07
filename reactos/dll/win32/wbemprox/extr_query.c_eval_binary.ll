; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_eval_binary.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_eval_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i32 }
%struct.complex_expr = type { i32, i32, i32 }

@S_OK = common dso_local global i64 0, align 8
@WBEM_E_INVALID_QUERY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"unhandled operator %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.table*, i32, %struct.complex_expr*, i64*, i32*)* @eval_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @eval_binary(%struct.table* %0, i32 %1, %struct.complex_expr* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.complex_expr*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca [21 x i32], align 16
  %21 = alloca [21 x i32], align 16
  store %struct.table* %0, %struct.table** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.complex_expr* %2, %struct.complex_expr** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %22 = load %struct.table*, %struct.table** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.complex_expr*, %struct.complex_expr** %9, align 8
  %25 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @eval_cond(%struct.table* %22, i32 %23, i32 %26, i64* %14, i32* %16)
  store i64 %27, i64* %12, align 8
  %28 = load %struct.table*, %struct.table** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.complex_expr*, %struct.complex_expr** %9, align 8
  %31 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @eval_cond(%struct.table* %28, i32 %29, i32 %32, i64* %15, i32* %17)
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* @S_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %5
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* @S_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %5
  %42 = load i64, i64* @WBEM_E_INVALID_QUERY, align 8
  store i64 %42, i64* %6, align 8
  br label %177

43:                                               ; preds = %37
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @resolve_type(i32 %44, i32 %45)
  %47 = load i32*, i32** %11, align 8
  store i32 %46, i32* %47, align 4
  %48 = load %struct.complex_expr*, %struct.complex_expr** %9, align 8
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %17, align 4
  %51 = call i64 @is_boolcmp(%struct.complex_expr* %48, i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %43
  %54 = load %struct.complex_expr*, %struct.complex_expr** %9, align 8
  %55 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* %15, align 8
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %17, align 4
  %61 = load i64*, i64** %10, align 8
  %62 = call i64 @eval_boolcmp(i32 %56, i64 %57, i64 %58, i32 %59, i32 %60, i64* %61)
  store i64 %62, i64* %6, align 8
  br label %177

63:                                               ; preds = %43
  %64 = load %struct.complex_expr*, %struct.complex_expr** %9, align 8
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %17, align 4
  %67 = call i64 @is_strcmp(%struct.complex_expr* %64, i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %101

69:                                               ; preds = %63
  %70 = load i32, i32* %16, align 4
  %71 = call i64 @is_int(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = getelementptr inbounds [21 x i32], [21 x i32]* %20, i64 0, i64 0
  %75 = load i32, i32* %16, align 4
  %76 = load i64, i64* %14, align 8
  %77 = call i32* @format_int(i32* %74, i32 %75, i64 %76)
  store i32* %77, i32** %18, align 8
  br label %81

78:                                               ; preds = %69
  %79 = load i64, i64* %14, align 8
  %80 = inttoptr i64 %79 to i32*
  store i32* %80, i32** %18, align 8
  br label %81

81:                                               ; preds = %78, %73
  %82 = load i32, i32* %17, align 4
  %83 = call i64 @is_int(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = getelementptr inbounds [21 x i32], [21 x i32]* %21, i64 0, i64 0
  %87 = load i32, i32* %17, align 4
  %88 = load i64, i64* %15, align 8
  %89 = call i32* @format_int(i32* %86, i32 %87, i64 %88)
  store i32* %89, i32** %19, align 8
  br label %93

90:                                               ; preds = %81
  %91 = load i64, i64* %15, align 8
  %92 = inttoptr i64 %91 to i32*
  store i32* %92, i32** %19, align 8
  br label %93

93:                                               ; preds = %90, %85
  %94 = load %struct.complex_expr*, %struct.complex_expr** %9, align 8
  %95 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %18, align 8
  %98 = load i32*, i32** %19, align 8
  %99 = load i64*, i64** %10, align 8
  %100 = call i64 @eval_strcmp(i32 %96, i32* %97, i32* %98, i64* %99)
  store i64 %100, i64* %6, align 8
  br label %177

101:                                              ; preds = %63
  %102 = load %struct.complex_expr*, %struct.complex_expr** %9, align 8
  %103 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  switch i32 %104, label %169 [
    i32 134, label %105
    i32 135, label %112
    i32 128, label %123
    i32 132, label %134
    i32 130, label %141
    i32 131, label %148
    i32 133, label %155
    i32 129, label %162
  ]

105:                                              ; preds = %101
  %106 = load i64, i64* %14, align 8
  %107 = load i64, i64* %15, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = sext i32 %109 to i64
  %111 = load i64*, i64** %10, align 8
  store i64 %110, i64* %111, align 8
  br label %175

112:                                              ; preds = %101
  %113 = load i64, i64* %14, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i64, i64* %15, align 8
  %117 = icmp ne i64 %116, 0
  br label %118

118:                                              ; preds = %115, %112
  %119 = phi i1 [ false, %112 ], [ %117, %115 ]
  %120 = zext i1 %119 to i32
  %121 = sext i32 %120 to i64
  %122 = load i64*, i64** %10, align 8
  store i64 %121, i64* %122, align 8
  br label %175

123:                                              ; preds = %101
  %124 = load i64, i64* %14, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = load i64, i64* %15, align 8
  %128 = icmp ne i64 %127, 0
  br label %129

129:                                              ; preds = %126, %123
  %130 = phi i1 [ true, %123 ], [ %128, %126 ]
  %131 = zext i1 %130 to i32
  %132 = sext i32 %131 to i64
  %133 = load i64*, i64** %10, align 8
  store i64 %132, i64* %133, align 8
  br label %175

134:                                              ; preds = %101
  %135 = load i64, i64* %14, align 8
  %136 = load i64, i64* %15, align 8
  %137 = icmp sgt i64 %135, %136
  %138 = zext i1 %137 to i32
  %139 = sext i32 %138 to i64
  %140 = load i64*, i64** %10, align 8
  store i64 %139, i64* %140, align 8
  br label %175

141:                                              ; preds = %101
  %142 = load i64, i64* %14, align 8
  %143 = load i64, i64* %15, align 8
  %144 = icmp slt i64 %142, %143
  %145 = zext i1 %144 to i32
  %146 = sext i32 %145 to i64
  %147 = load i64*, i64** %10, align 8
  store i64 %146, i64* %147, align 8
  br label %175

148:                                              ; preds = %101
  %149 = load i64, i64* %14, align 8
  %150 = load i64, i64* %15, align 8
  %151 = icmp sle i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = sext i32 %152 to i64
  %154 = load i64*, i64** %10, align 8
  store i64 %153, i64* %154, align 8
  br label %175

155:                                              ; preds = %101
  %156 = load i64, i64* %14, align 8
  %157 = load i64, i64* %15, align 8
  %158 = icmp sge i64 %156, %157
  %159 = zext i1 %158 to i32
  %160 = sext i32 %159 to i64
  %161 = load i64*, i64** %10, align 8
  store i64 %160, i64* %161, align 8
  br label %175

162:                                              ; preds = %101
  %163 = load i64, i64* %14, align 8
  %164 = load i64, i64* %15, align 8
  %165 = icmp ne i64 %163, %164
  %166 = zext i1 %165 to i32
  %167 = sext i32 %166 to i64
  %168 = load i64*, i64** %10, align 8
  store i64 %167, i64* %168, align 8
  br label %175

169:                                              ; preds = %101
  %170 = load %struct.complex_expr*, %struct.complex_expr** %9, align 8
  %171 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %172)
  %174 = load i64, i64* @WBEM_E_INVALID_QUERY, align 8
  store i64 %174, i64* %6, align 8
  br label %177

175:                                              ; preds = %162, %155, %148, %141, %134, %129, %118, %105
  %176 = load i64, i64* @S_OK, align 8
  store i64 %176, i64* %6, align 8
  br label %177

177:                                              ; preds = %175, %169, %93, %53, %41
  %178 = load i64, i64* %6, align 8
  ret i64 %178
}

declare dso_local i64 @eval_cond(%struct.table*, i32, i32, i64*, i32*) #1

declare dso_local i32 @resolve_type(i32, i32) #1

declare dso_local i64 @is_boolcmp(%struct.complex_expr*, i32, i32) #1

declare dso_local i64 @eval_boolcmp(i32, i64, i64, i32, i32, i64*) #1

declare dso_local i64 @is_strcmp(%struct.complex_expr*, i32, i32) #1

declare dso_local i64 @is_int(i32) #1

declare dso_local i32* @format_int(i32*, i32, i64) #1

declare dso_local i64 @eval_strcmp(i32, i32*, i32*, i64*) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
