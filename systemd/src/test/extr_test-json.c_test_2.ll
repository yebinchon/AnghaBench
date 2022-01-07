; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-json.c_test_2.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-json.c_test_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"mutant\00", align 1
@JSON_VARIANT_ARRAY = common dso_local global i64 0, align 8
@JSON_VARIANT_UNSIGNED = common dso_local global i64 0, align 8
@JSON_VARIANT_INTEGER = common dso_local global i32 0, align 4
@JSON_VARIANT_NULL = common dso_local global i64 0, align 8
@JSON_VARIANT_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@JSON_VARIANT_OBJECT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"thisisaverylongproperty\00", align 1
@JSON_VARIANT_REAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_2(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @json_variant_elements(i32* %5)
  %7 = icmp eq i32 %6, 4
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert_se(i32 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32* @json_variant_by_key(i32* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @json_variant_type(i32* %15)
  %17 = load i64, i64* @JSON_VARIANT_ARRAY, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @json_variant_elements(i32* %20)
  %22 = icmp eq i32 %21, 4
  br label %23

23:                                               ; preds = %19, %14, %1
  %24 = phi i1 [ false, %14 ], [ false, %1 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert_se(i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32* @json_variant_by_index(i32* %27, i32 0)
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @json_variant_type(i32* %32)
  %34 = load i64, i64* @JSON_VARIANT_UNSIGNED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @json_variant_unsigned(i32* %37)
  %39 = icmp eq i32 %38, 1
  br label %40

40:                                               ; preds = %36, %31, %23
  %41 = phi i1 [ false, %31 ], [ false, %23 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert_se(i32 %42)
  %44 = load i32*, i32** %4, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @JSON_VARIANT_INTEGER, align 4
  %49 = call i64 @json_variant_has_type(i32* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @json_variant_integer(i32* %52)
  %54 = icmp eq i32 %53, 1
  br label %55

55:                                               ; preds = %51, %46, %40
  %56 = phi i1 [ false, %46 ], [ false, %40 ], [ %54, %51 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert_se(i32 %57)
  %59 = load i32*, i32** %3, align 8
  %60 = call i32* @json_variant_by_index(i32* %59, i32 1)
  store i32* %60, i32** %4, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load i32*, i32** %4, align 8
  %65 = call i64 @json_variant_type(i32* %64)
  %66 = load i64, i64* @JSON_VARIANT_NULL, align 8
  %67 = icmp eq i64 %65, %66
  br label %68

68:                                               ; preds = %63, %55
  %69 = phi i1 [ false, %55 ], [ %67, %63 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert_se(i32 %70)
  %72 = load i32*, i32** %3, align 8
  %73 = call i32* @json_variant_by_index(i32* %72, i32 2)
  store i32* %73, i32** %4, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %86

76:                                               ; preds = %68
  %77 = load i32*, i32** %4, align 8
  %78 = call i64 @json_variant_type(i32* %77)
  %79 = load i64, i64* @JSON_VARIANT_STRING, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @json_variant_string(i32* %82)
  %84 = call i64 @streq(i32 %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  br label %86

86:                                               ; preds = %81, %76, %68
  %87 = phi i1 [ false, %76 ], [ false, %68 ], [ %85, %81 ]
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert_se(i32 %88)
  %90 = load i32*, i32** %3, align 8
  %91 = call i32* @json_variant_by_index(i32* %90, i32 3)
  store i32* %91, i32** %4, align 8
  %92 = load i32*, i32** %4, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %103

94:                                               ; preds = %86
  %95 = load i32*, i32** %4, align 8
  %96 = call i64 @json_variant_type(i32* %95)
  %97 = load i64, i64* @JSON_VARIANT_OBJECT, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 @json_variant_elements(i32* %100)
  %102 = icmp eq i32 %101, 2
  br label %103

103:                                              ; preds = %99, %94, %86
  %104 = phi i1 [ false, %94 ], [ false, %86 ], [ %102, %99 ]
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert_se(i32 %105)
  %107 = load i32*, i32** %4, align 8
  %108 = call i32* @json_variant_by_key(i32* %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %108, i32** %3, align 8
  %109 = load i32*, i32** %3, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %120

111:                                              ; preds = %103
  %112 = load i32*, i32** %3, align 8
  %113 = call i64 @json_variant_type(i32* %112)
  %114 = load i64, i64* @JSON_VARIANT_ARRAY, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i32*, i32** %3, align 8
  %118 = call i32 @json_variant_elements(i32* %117)
  %119 = icmp eq i32 %118, 2
  br label %120

120:                                              ; preds = %116, %111, %103
  %121 = phi i1 [ false, %111 ], [ false, %103 ], [ %119, %116 ]
  %122 = zext i1 %121 to i32
  %123 = call i32 @assert_se(i32 %122)
  %124 = load i32*, i32** %3, align 8
  %125 = call i32* @json_variant_by_index(i32* %124, i32 0)
  store i32* %125, i32** %4, align 8
  %126 = load i32*, i32** %4, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %137

128:                                              ; preds = %120
  %129 = load i32*, i32** %4, align 8
  %130 = call i64 @json_variant_type(i32* %129)
  %131 = load i64, i64* @JSON_VARIANT_UNSIGNED, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load i32*, i32** %4, align 8
  %135 = call i32 @json_variant_unsigned(i32* %134)
  %136 = icmp eq i32 %135, 1
  br label %137

137:                                              ; preds = %133, %128, %120
  %138 = phi i1 [ false, %128 ], [ false, %120 ], [ %136, %133 ]
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert_se(i32 %139)
  %141 = load i32*, i32** %4, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %152

143:                                              ; preds = %137
  %144 = load i32*, i32** %4, align 8
  %145 = load i32, i32* @JSON_VARIANT_INTEGER, align 4
  %146 = call i64 @json_variant_has_type(i32* %144, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load i32*, i32** %4, align 8
  %150 = call i32 @json_variant_integer(i32* %149)
  %151 = icmp eq i32 %150, 1
  br label %152

152:                                              ; preds = %148, %143, %137
  %153 = phi i1 [ false, %143 ], [ false, %137 ], [ %151, %148 ]
  %154 = zext i1 %153 to i32
  %155 = call i32 @assert_se(i32 %154)
  %156 = load i32*, i32** %3, align 8
  %157 = call i32* @json_variant_by_index(i32* %156, i32 1)
  store i32* %157, i32** %4, align 8
  %158 = load i32*, i32** %4, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %170

160:                                              ; preds = %152
  %161 = load i32*, i32** %4, align 8
  %162 = call i64 @json_variant_type(i32* %161)
  %163 = load i64, i64* @JSON_VARIANT_STRING, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = load i32*, i32** %4, align 8
  %167 = call i32 @json_variant_string(i32* %166)
  %168 = call i64 @streq(i32 %167, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %169 = icmp ne i64 %168, 0
  br label %170

170:                                              ; preds = %165, %160, %152
  %171 = phi i1 [ false, %160 ], [ false, %152 ], [ %169, %165 ]
  %172 = zext i1 %171 to i32
  %173 = call i32 @assert_se(i32 %172)
  %174 = load i32*, i32** %2, align 8
  %175 = call i32* @json_variant_by_key(i32* %174, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32* %175, i32** %3, align 8
  %176 = load i32*, i32** %3, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %191

178:                                              ; preds = %170
  %179 = load i32*, i32** %3, align 8
  %180 = call i64 @json_variant_type(i32* %179)
  %181 = load i64, i64* @JSON_VARIANT_REAL, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %191

183:                                              ; preds = %178
  %184 = load i32*, i32** %3, align 8
  %185 = call i64 @json_variant_real(i32* %184)
  %186 = sitofp i64 %185 to double
  %187 = fsub double %186, 1.270000e+00
  %188 = fptosi double %187 to i64
  %189 = call double @fabsl(i64 %188)
  %190 = fcmp olt double %189, 1.000000e-03
  br label %191

191:                                              ; preds = %183, %178, %170
  %192 = phi i1 [ false, %178 ], [ false, %170 ], [ %190, %183 ]
  %193 = zext i1 %192 to i32
  %194 = call i32 @assert_se(i32 %193)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @json_variant_elements(i32*) #1

declare dso_local i32* @json_variant_by_key(i32*, i8*) #1

declare dso_local i64 @json_variant_type(i32*) #1

declare dso_local i32* @json_variant_by_index(i32*, i32) #1

declare dso_local i32 @json_variant_unsigned(i32*) #1

declare dso_local i64 @json_variant_has_type(i32*, i32) #1

declare dso_local i32 @json_variant_integer(i32*) #1

declare dso_local i64 @streq(i32, i8*) #1

declare dso_local i32 @json_variant_string(i32*) #1

declare dso_local double @fabsl(i64) #1

declare dso_local i64 @json_variant_real(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
