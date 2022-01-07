; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_WHERE_VerifyCondition.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_WHERE_VerifyCondition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.expr*, i32, %struct.expr* }

@FALSE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@MSITYPE_STRING = common dso_local global i32 0, align 4
@EXPR_COL_NUMBER_STRING = common dso_local global i32 0, align 4
@EXPR_COL_NUMBER32 = common dso_local global i32 0, align 4
@EXPR_COL_NUMBER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@EXPR_STRCMP = common dso_local global i32 0, align 4
@EXPR_UVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid expression type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.expr*, i32*)* @WHERE_VerifyCondition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WHERE_VerifyCondition(i32* %0, %struct.expr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.expr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.expr* %1, %struct.expr** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.expr*, %struct.expr** %6, align 8
  %11 = getelementptr inbounds %struct.expr, %struct.expr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %182 [
    i32 135, label %13
    i32 134, label %50
    i32 131, label %138
    i32 133, label %166
    i32 130, label %178
    i32 132, label %180
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @FALSE, align 4
  %15 = load i32*, i32** %7, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.expr*, %struct.expr** %6, align 8
  %18 = getelementptr inbounds %struct.expr, %struct.expr* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = call i32 @parse_column(i32* %16, i32* %19, i32* %9)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @ERROR_SUCCESS, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %185

25:                                               ; preds = %13
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @MSITYPE_STRING, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @EXPR_COL_NUMBER_STRING, align 4
  %32 = load %struct.expr*, %struct.expr** %6, align 8
  %33 = getelementptr inbounds %struct.expr, %struct.expr* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %47

34:                                               ; preds = %25
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, 255
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @EXPR_COL_NUMBER32, align 4
  %40 = load %struct.expr*, %struct.expr** %6, align 8
  %41 = getelementptr inbounds %struct.expr, %struct.expr* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %46

42:                                               ; preds = %34
  %43 = load i32, i32* @EXPR_COL_NUMBER, align 4
  %44 = load %struct.expr*, %struct.expr** %6, align 8
  %45 = getelementptr inbounds %struct.expr, %struct.expr* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %42, %38
  br label %47

47:                                               ; preds = %46, %30
  %48 = load i32, i32* @TRUE, align 4
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  br label %185

50:                                               ; preds = %3
  %51 = load i32*, i32** %5, align 8
  %52 = load %struct.expr*, %struct.expr** %6, align 8
  %53 = getelementptr inbounds %struct.expr, %struct.expr* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load %struct.expr*, %struct.expr** %55, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @WHERE_VerifyCondition(i32* %51, %struct.expr* %56, i32* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @ERROR_SUCCESS, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %187

64:                                               ; preds = %50
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %69, i32* %4, align 4
  br label %187

70:                                               ; preds = %64
  %71 = load i32*, i32** %5, align 8
  %72 = load %struct.expr*, %struct.expr** %6, align 8
  %73 = getelementptr inbounds %struct.expr, %struct.expr* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load %struct.expr*, %struct.expr** %75, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @WHERE_VerifyCondition(i32* %71, %struct.expr* %76, i32* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @ERROR_SUCCESS, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %70
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %4, align 4
  br label %187

84:                                               ; preds = %70
  %85 = load %struct.expr*, %struct.expr** %6, align 8
  %86 = getelementptr inbounds %struct.expr, %struct.expr* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load %struct.expr*, %struct.expr** %88, align 8
  %90 = getelementptr inbounds %struct.expr, %struct.expr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 132
  br i1 %92, label %122, label %93

93:                                               ; preds = %84
  %94 = load %struct.expr*, %struct.expr** %6, align 8
  %95 = getelementptr inbounds %struct.expr, %struct.expr* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load %struct.expr*, %struct.expr** %97, align 8
  %99 = getelementptr inbounds %struct.expr, %struct.expr* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @EXPR_COL_NUMBER_STRING, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %122, label %103

103:                                              ; preds = %93
  %104 = load %struct.expr*, %struct.expr** %6, align 8
  %105 = getelementptr inbounds %struct.expr, %struct.expr* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load %struct.expr*, %struct.expr** %107, align 8
  %109 = getelementptr inbounds %struct.expr, %struct.expr* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 132
  br i1 %111, label %122, label %112

112:                                              ; preds = %103
  %113 = load %struct.expr*, %struct.expr** %6, align 8
  %114 = getelementptr inbounds %struct.expr, %struct.expr* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  %117 = load %struct.expr*, %struct.expr** %116, align 8
  %118 = getelementptr inbounds %struct.expr, %struct.expr* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @EXPR_COL_NUMBER_STRING, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %137

122:                                              ; preds = %112, %103, %93, %84
  %123 = load %struct.expr*, %struct.expr** %6, align 8
  %124 = getelementptr inbounds %struct.expr, %struct.expr* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  switch i32 %127, label %129 [
    i32 129, label %128
    i32 128, label %128
  ]

128:                                              ; preds = %122, %122
  br label %133

129:                                              ; preds = %122
  %130 = load i32, i32* @FALSE, align 4
  %131 = load i32*, i32** %7, align 8
  store i32 %130, i32* %131, align 4
  %132 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %132, i32* %4, align 4
  br label %187

133:                                              ; preds = %128
  %134 = load i32, i32* @EXPR_STRCMP, align 4
  %135 = load %struct.expr*, %struct.expr** %6, align 8
  %136 = getelementptr inbounds %struct.expr, %struct.expr* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  br label %137

137:                                              ; preds = %133, %112
  br label %185

138:                                              ; preds = %3
  %139 = load %struct.expr*, %struct.expr** %6, align 8
  %140 = getelementptr inbounds %struct.expr, %struct.expr* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load %struct.expr*, %struct.expr** %142, align 8
  %144 = getelementptr inbounds %struct.expr, %struct.expr* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 135
  br i1 %146, label %147, label %151

147:                                              ; preds = %138
  %148 = load i32, i32* @FALSE, align 4
  %149 = load i32*, i32** %7, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %150, i32* %4, align 4
  br label %187

151:                                              ; preds = %138
  %152 = load i32*, i32** %5, align 8
  %153 = load %struct.expr*, %struct.expr** %6, align 8
  %154 = getelementptr inbounds %struct.expr, %struct.expr* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load %struct.expr*, %struct.expr** %156, align 8
  %158 = load i32*, i32** %7, align 8
  %159 = call i32 @WHERE_VerifyCondition(i32* %152, %struct.expr* %157, i32* %158)
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* @ERROR_SUCCESS, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %151
  %164 = load i32, i32* %8, align 4
  store i32 %164, i32* %4, align 4
  br label %187

165:                                              ; preds = %151
  br label %185

166:                                              ; preds = %3
  %167 = load i32*, i32** %7, align 8
  store i32 1, i32* %167, align 4
  %168 = load i32, i32* @EXPR_UVAL, align 4
  %169 = load %struct.expr*, %struct.expr** %6, align 8
  %170 = getelementptr inbounds %struct.expr, %struct.expr* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = load %struct.expr*, %struct.expr** %6, align 8
  %172 = getelementptr inbounds %struct.expr, %struct.expr* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.expr*, %struct.expr** %6, align 8
  %176 = getelementptr inbounds %struct.expr, %struct.expr* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  store i32 %174, i32* %177, align 4
  br label %185

178:                                              ; preds = %3
  %179 = load i32*, i32** %7, align 8
  store i32 1, i32* %179, align 4
  br label %185

180:                                              ; preds = %3
  %181 = load i32*, i32** %7, align 8
  store i32 1, i32* %181, align 4
  br label %185

182:                                              ; preds = %3
  %183 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %184 = load i32*, i32** %7, align 8
  store i32 0, i32* %184, align 4
  br label %185

185:                                              ; preds = %182, %180, %178, %166, %165, %137, %47, %24
  %186 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %185, %163, %147, %129, %82, %68, %62
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i32 @parse_column(i32*, i32*, i32*) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
