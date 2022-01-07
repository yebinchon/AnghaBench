; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartest.c_variantstr.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartest.c_variantstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@vtstr_buffer = common dso_local global i8** null, align 8
@vtstr_current = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"VT_I1(%d)\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"VT_I2(%d)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"VT_I4(%d)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"VT_INT(%d)\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"VT_I8(%x%08x)\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"VT_UI8(%x%08x)\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"VT_R4(%g)\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"VT_R8(%g)\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"VT_UI1(%u)\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"VT_UI2(%u)\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"VT_UI4(%u)\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"VT_UINT(%d)\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"VT_CY(%x%08x)\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"VT_DATE(%g)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @variantstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @variantstr(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_2__, align 4
  %5 = alloca %struct.TYPE_2__, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i8**, i8*** @vtstr_buffer, align 8
  %7 = call i64 @ARRAY_SIZE(i8** %6)
  %8 = load i64, i64* @vtstr_current, align 8
  %9 = urem i64 %8, %7
  store i64 %9, i64* @vtstr_current, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @V_VT(i32* %10)
  switch i32 %11, label %151 [
    i32 139, label %12
    i32 138, label %21
    i32 137, label %30
    i32 135, label %39
    i32 136, label %48
    i32 129, label %60
    i32 134, label %72
    i32 133, label %80
    i32 132, label %88
    i32 131, label %97
    i32 130, label %106
    i32 128, label %115
    i32 141, label %124
    i32 140, label %143
  ]

12:                                               ; preds = %1
  %13 = load i8**, i8*** @vtstr_buffer, align 8
  %14 = load i64, i64* @vtstr_current, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @V_I1(i32* %17)
  %19 = sitofp i32 %18 to double
  %20 = call i32 (i8*, i8*, double, ...) @sprintf(i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), double %19)
  br label %155

21:                                               ; preds = %1
  %22 = load i8**, i8*** @vtstr_buffer, align 8
  %23 = load i64, i64* @vtstr_current, align 8
  %24 = getelementptr inbounds i8*, i8** %22, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @V_I2(i32* %26)
  %28 = sitofp i32 %27 to double
  %29 = call i32 (i8*, i8*, double, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), double %28)
  br label %155

30:                                               ; preds = %1
  %31 = load i8**, i8*** @vtstr_buffer, align 8
  %32 = load i64, i64* @vtstr_current, align 8
  %33 = getelementptr inbounds i8*, i8** %31, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @V_I4(i32* %35)
  %37 = sitofp i32 %36 to double
  %38 = call i32 (i8*, i8*, double, ...) @sprintf(i8* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), double %37)
  br label %155

39:                                               ; preds = %1
  %40 = load i8**, i8*** @vtstr_buffer, align 8
  %41 = load i64, i64* @vtstr_current, align 8
  %42 = getelementptr inbounds i8*, i8** %40, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @V_INT(i32* %44)
  %46 = sitofp i32 %45 to double
  %47 = call i32 (i8*, i8*, double, ...) @sprintf(i8* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), double %46)
  br label %155

48:                                               ; preds = %1
  %49 = load i8**, i8*** @vtstr_buffer, align 8
  %50 = load i64, i64* @vtstr_current, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @V_I8(i32* %53)
  %55 = ashr i32 %54, 32
  %56 = sitofp i32 %55 to double
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @V_I8(i32* %57)
  %59 = call i32 (i8*, i8*, double, ...) @sprintf(i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), double %56, i32 %58)
  br label %155

60:                                               ; preds = %1
  %61 = load i8**, i8*** @vtstr_buffer, align 8
  %62 = load i64, i64* @vtstr_current, align 8
  %63 = getelementptr inbounds i8*, i8** %61, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @V_UI8(i32* %65)
  %67 = ashr i32 %66, 32
  %68 = sitofp i32 %67 to double
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @V_UI8(i32* %69)
  %71 = call i32 (i8*, i8*, double, ...) @sprintf(i8* %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), double %68, i32 %70)
  br label %155

72:                                               ; preds = %1
  %73 = load i8**, i8*** @vtstr_buffer, align 8
  %74 = load i64, i64* @vtstr_current, align 8
  %75 = getelementptr inbounds i8*, i8** %73, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = load i32*, i32** %3, align 8
  %78 = call double @V_R4(i32* %77)
  %79 = call i32 (i8*, i8*, double, ...) @sprintf(i8* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), double %78)
  br label %155

80:                                               ; preds = %1
  %81 = load i8**, i8*** @vtstr_buffer, align 8
  %82 = load i64, i64* @vtstr_current, align 8
  %83 = getelementptr inbounds i8*, i8** %81, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = load i32*, i32** %3, align 8
  %86 = call double @V_R8(i32* %85)
  %87 = call i32 (i8*, i8*, double, ...) @sprintf(i8* %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), double %86)
  br label %155

88:                                               ; preds = %1
  %89 = load i8**, i8*** @vtstr_buffer, align 8
  %90 = load i64, i64* @vtstr_current, align 8
  %91 = getelementptr inbounds i8*, i8** %89, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 @V_UI1(i32* %93)
  %95 = sitofp i32 %94 to double
  %96 = call i32 (i8*, i8*, double, ...) @sprintf(i8* %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), double %95)
  br label %155

97:                                               ; preds = %1
  %98 = load i8**, i8*** @vtstr_buffer, align 8
  %99 = load i64, i64* @vtstr_current, align 8
  %100 = getelementptr inbounds i8*, i8** %98, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 @V_UI2(i32* %102)
  %104 = sitofp i32 %103 to double
  %105 = call i32 (i8*, i8*, double, ...) @sprintf(i8* %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), double %104)
  br label %155

106:                                              ; preds = %1
  %107 = load i8**, i8*** @vtstr_buffer, align 8
  %108 = load i64, i64* @vtstr_current, align 8
  %109 = getelementptr inbounds i8*, i8** %107, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = load i32*, i32** %3, align 8
  %112 = call i32 @V_UI4(i32* %111)
  %113 = sitofp i32 %112 to double
  %114 = call i32 (i8*, i8*, double, ...) @sprintf(i8* %110, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), double %113)
  br label %155

115:                                              ; preds = %1
  %116 = load i8**, i8*** @vtstr_buffer, align 8
  %117 = load i64, i64* @vtstr_current, align 8
  %118 = getelementptr inbounds i8*, i8** %116, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 @V_UINT(i32* %120)
  %122 = sitofp i32 %121 to double
  %123 = call i32 (i8*, i8*, double, ...) @sprintf(i8* %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), double %122)
  br label %155

124:                                              ; preds = %1
  %125 = load i8**, i8*** @vtstr_buffer, align 8
  %126 = load i64, i64* @vtstr_current, align 8
  %127 = getelementptr inbounds i8*, i8** %125, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = load i32*, i32** %3, align 8
  %130 = call i32 @V_CY(i32* %129)
  %131 = call i64 @S(i32 %130)
  %132 = bitcast %struct.TYPE_2__* %4 to i64*
  store i64 %131, i64* %132, align 4
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = sitofp i32 %134 to double
  %136 = load i32*, i32** %3, align 8
  %137 = call i32 @V_CY(i32* %136)
  %138 = call i64 @S(i32 %137)
  %139 = bitcast %struct.TYPE_2__* %5 to i64*
  store i64 %138, i64* %139, align 4
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (i8*, i8*, double, ...) @sprintf(i8* %128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), double %135, i32 %141)
  br label %155

143:                                              ; preds = %1
  %144 = load i8**, i8*** @vtstr_buffer, align 8
  %145 = load i64, i64* @vtstr_current, align 8
  %146 = getelementptr inbounds i8*, i8** %144, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = load i32*, i32** %3, align 8
  %149 = call double @V_DATE(i32* %148)
  %150 = call i32 (i8*, i8*, double, ...) @sprintf(i8* %147, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), double %149)
  br label %155

151:                                              ; preds = %1
  %152 = load i32*, i32** %3, align 8
  %153 = call i32 @V_VT(i32* %152)
  %154 = call i8* @vtstr(i32 %153)
  store i8* %154, i8** %2, align 8
  br label %161

155:                                              ; preds = %143, %124, %115, %106, %97, %88, %80, %72, %60, %48, %39, %30, %21, %12
  %156 = load i8**, i8*** @vtstr_buffer, align 8
  %157 = load i64, i64* @vtstr_current, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* @vtstr_current, align 8
  %159 = getelementptr inbounds i8*, i8** %156, i64 %157
  %160 = load i8*, i8** %159, align 8
  store i8* %160, i8** %2, align 8
  br label %161

161:                                              ; preds = %155, %151
  %162 = load i8*, i8** %2, align 8
  ret i8* %162
}

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @V_VT(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, double, ...) #1

declare dso_local i32 @V_I1(i32*) #1

declare dso_local i32 @V_I2(i32*) #1

declare dso_local i32 @V_I4(i32*) #1

declare dso_local i32 @V_INT(i32*) #1

declare dso_local i32 @V_I8(i32*) #1

declare dso_local i32 @V_UI8(i32*) #1

declare dso_local double @V_R4(i32*) #1

declare dso_local double @V_R8(i32*) #1

declare dso_local i32 @V_UI1(i32*) #1

declare dso_local i32 @V_UI2(i32*) #1

declare dso_local i32 @V_UI4(i32*) #1

declare dso_local i32 @V_UINT(i32*) #1

declare dso_local i64 @S(i32) #1

declare dso_local i32 @V_CY(i32*) #1

declare dso_local double @V_DATE(i32*) #1

declare dso_local i8* @vtstr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
