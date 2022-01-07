; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_caller.c_test_change_type.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_caller.c_test_change_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, i64, i64, i64 }

@VT_I4 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"V_I4(v) = %d, expected %d\0A\00", align 1
@VT_UI2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"V_UI2(v) = %u, expected %u\0A\00", align 1
@VT_BSTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"V_BSTR(v) = %s, expected %s\0A\00", align 1
@VT_BOOL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"V_BOOL(v) = %x, expected %x\0A\00", align 1
@VT_R8 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"V_R8(v) = %lf, expected %lf\0A\00", align 1
@VT_R4 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"V_R4(v) = %f, expected %f\0A\00", align 1
@VT_NULL = common dso_local global i64 0, align 8
@E_NOTIMPL = common dso_local global i32 0, align 4
@VT_EMPTY = common dso_local global i64 0, align 8
@VT_I2 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"V_I2(v) = %d, expected %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_3__*)* @test_change_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_change_type(i32* %0, i32* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i64, i64* @VT_I4, align 8
  %11 = call i32 @call_change_type(i32* %8, i32* %7, i32* %9, i64 %10)
  %12 = call float @V_I4(i32* %7)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load float, float* %14, align 8
  %16 = fcmp oeq float %12, %15
  %17 = zext i1 %16 to i32
  %18 = call float @V_I4(i32* %7)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load float, float* %20, align 8
  %22 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), float %18, float %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i64, i64* @VT_UI2, align 8
  %26 = call i32 @call_change_type(i32* %23, i32* %7, i32* %24, i64 %25)
  %27 = call float @V_UI2(i32* %7)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load float, float* %29, align 8
  %31 = fptosi float %30 to i64
  %32 = sitofp i64 %31 to float
  %33 = fcmp oeq float %27, %32
  %34 = zext i1 %33 to i32
  %35 = call float @V_UI2(i32* %7)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load float, float* %37, align 8
  %39 = fptosi float %38 to i64
  %40 = sitofp i64 %39 to float
  %41 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), float %35, float %40)
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i64, i64* @VT_BSTR, align 8
  %45 = call i32 @call_change_type(i32* %42, i32* %7, i32* %43, i64 %44)
  %46 = call i32 @V_BSTR(i32* %7)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load float, float* %48, align 4
  %50 = call i32 @strcmp_wa(i32 %46, float %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @V_BSTR(i32* %7)
  %55 = call float @wine_dbgstr_w(i32 %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load float, float* %57, align 4
  %59 = call i32 @ok(i32 %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), float %55, float %58)
  %60 = call i32 @VariantClear(i32* %7)
  %61 = load i32*, i32** %4, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load i64, i64* @VT_BOOL, align 8
  %64 = call i32 @call_change_type(i32* %61, i32* %7, i32* %62, i64 %63)
  %65 = call float @V_BOOL(i32* %7)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = sitofp i64 %68 to float
  %70 = fcmp oeq float %65, %69
  %71 = zext i1 %70 to i32
  %72 = call float @V_BOOL(i32* %7)
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = sitofp i64 %75 to float
  %77 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), float %72, float %76)
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %117

82:                                               ; preds = %3
  %83 = load i32*, i32** %4, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = load i64, i64* @VT_R8, align 8
  %86 = call i32 @call_change_type(i32* %83, i32* %7, i32* %84, i64 %85)
  %87 = call float @V_R8(i32* %7)
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = sitofp i64 %90 to float
  %92 = fcmp oeq float %87, %91
  %93 = zext i1 %92 to i32
  %94 = call float @V_R8(i32* %7)
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = sitofp i64 %97 to float
  %99 = call i32 @ok(i32 %93, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), float %94, float %98)
  %100 = load i32*, i32** %4, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = load i64, i64* @VT_R4, align 8
  %103 = call i32 @call_change_type(i32* %100, i32* %7, i32* %101, i64 %102)
  %104 = call float @V_R4(i32* %7)
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = sitofp i64 %107 to float
  %109 = fcmp oeq float %104, %108
  %110 = zext i1 %109 to i32
  %111 = call float @V_R4(i32* %7)
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = sitofp i64 %114 to float
  %116 = call i32 @ok(i32 %110, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), float %111, float %115)
  br label %117

117:                                              ; preds = %82, %3
  %118 = load i32*, i32** %5, align 8
  %119 = call i64 @V_VT(i32* %118)
  %120 = load i64, i64* @VT_NULL, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load i32*, i32** %4, align 8
  %124 = load i32*, i32** %5, align 8
  %125 = load i64, i64* @VT_NULL, align 8
  %126 = call i32 @call_change_type(i32* %123, i32* %7, i32* %124, i64 %125)
  br label %133

127:                                              ; preds = %117
  %128 = load i32*, i32** %4, align 8
  %129 = load i32*, i32** %5, align 8
  %130 = load i64, i64* @VT_NULL, align 8
  %131 = load i32, i32* @E_NOTIMPL, align 4
  %132 = call i32 @change_type_fail(i32* %128, i32* %129, i64 %130, i32 %131)
  br label %133

133:                                              ; preds = %127, %122
  %134 = load i32*, i32** %5, align 8
  %135 = call i64 @V_VT(i32* %134)
  %136 = load i64, i64* @VT_EMPTY, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load i32*, i32** %4, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = load i64, i64* @VT_EMPTY, align 8
  %142 = call i32 @call_change_type(i32* %139, i32* %7, i32* %140, i64 %141)
  br label %149

143:                                              ; preds = %133
  %144 = load i32*, i32** %4, align 8
  %145 = load i32*, i32** %5, align 8
  %146 = load i64, i64* @VT_EMPTY, align 8
  %147 = load i32, i32* @E_NOTIMPL, align 4
  %148 = call i32 @change_type_fail(i32* %144, i32* %145, i64 %146, i32 %147)
  br label %149

149:                                              ; preds = %143, %138
  %150 = load i32*, i32** %4, align 8
  %151 = load i32*, i32** %5, align 8
  %152 = load i64, i64* @VT_I2, align 8
  %153 = call i32 @call_change_type(i32* %150, i32* %7, i32* %151, i64 %152)
  %154 = call float @V_I2(i32* %7)
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load float, float* %156, align 8
  %158 = fcmp oeq float %154, %157
  %159 = zext i1 %158 to i32
  %160 = call float @V_I2(i32* %7)
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load float, float* %162, align 8
  %164 = call i32 @ok(i32 %159, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), float %160, float %163)
  ret void
}

declare dso_local i32 @call_change_type(i32*, i32*, i32*, i64) #1

declare dso_local i32 @ok(i32, i8*, float, float) #1

declare dso_local float @V_I4(i32*) #1

declare dso_local float @V_UI2(i32*) #1

declare dso_local i32 @strcmp_wa(i32, float) #1

declare dso_local i32 @V_BSTR(i32*) #1

declare dso_local float @wine_dbgstr_w(i32) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local float @V_BOOL(i32*) #1

declare dso_local float @V_R8(i32*) #1

declare dso_local float @V_R4(i32*) #1

declare dso_local i64 @V_VT(i32*) #1

declare dso_local i32 @change_type_fail(i32*, i32*, i64, i32) #1

declare dso_local float @V_I2(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
