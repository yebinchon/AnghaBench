; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/propsys/extr_propvar.c_PROPVAR_ConvertNumber.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/propsys/extr_propvar.c_PROPVAR_ConvertNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i8*, i32*, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@DISP_E_TYPEMISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"unhandled vt %d\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@ERROR_ARITHMETIC_OVERFLOW = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i64, i32*)* @PROPVAR_ConvertNumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PROPVAR_ConvertNumber(%struct.TYPE_9__* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %119 [
    i32 137, label %16
    i32 131, label %23
    i32 136, label %30
    i32 130, label %37
    i32 135, label %44
    i32 129, label %51
    i32 134, label %58
    i32 128, label %66
    i32 138, label %74
    i32 133, label %77
    i32 132, label %98
    i32 139, label %98
  ]

16:                                               ; preds = %4
  %17 = load i64, i64* @TRUE, align 8
  store i64 %17, i64* %10, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32*, i32** %9, align 8
  store i32 %21, i32* %22, align 4
  br label %125

23:                                               ; preds = %4
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %10, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %9, align 8
  store i32 %28, i32* %29, align 4
  br label %125

30:                                               ; preds = %4
  %31 = load i64, i64* @TRUE, align 8
  store i64 %31, i64* %10, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  br label %125

37:                                               ; preds = %4
  %38 = load i64, i64* @FALSE, align 8
  store i64 %38, i64* %10, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  br label %125

44:                                               ; preds = %4
  %45 = load i64, i64* @TRUE, align 8
  store i64 %45, i64* %10, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  br label %125

51:                                               ; preds = %4
  %52 = load i64, i64* @FALSE, align 8
  store i64 %52, i64* %10, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  br label %125

58:                                               ; preds = %4
  %59 = load i64, i64* @TRUE, align 8
  store i64 %59, i64* %10, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 9
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  br label %125

66:                                               ; preds = %4
  %67 = load i64, i64* @FALSE, align 8
  store i64 %67, i64* %10, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  br label %125

74:                                               ; preds = %4
  %75 = load i64, i64* @FALSE, align 8
  store i64 %75, i64* %10, align 8
  %76 = load i32*, i32** %9, align 8
  store i32 0, i32* %76, align 4
  br label %125

77:                                               ; preds = %4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 6
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @_strtoi64(i8* %81, i8** %11, i32 0)
  %83 = load i32*, i32** %9, align 8
  store i32 %82, i32* %83, align 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 6
  %87 = load i8*, i8** %86, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = icmp eq i8* %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %77
  %91 = load i32, i32* @DISP_E_TYPEMISMATCH, align 4
  store i32 %91, i32* %5, align 4
  br label %173

92:                                               ; preds = %77
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %10, align 8
  br label %125

98:                                               ; preds = %4, %4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 7
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @strtolW(i32* %102, i32** %12, i32 0)
  %104 = load i32*, i32** %9, align 8
  store i32 %103, i32* %104, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 7
  %108 = load i32*, i32** %107, align 8
  %109 = load i32*, i32** %12, align 8
  %110 = icmp eq i32* %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %98
  %112 = load i32, i32* @DISP_E_TYPEMISMATCH, align 4
  store i32 %112, i32* %5, align 4
  br label %173

113:                                              ; preds = %98
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %115, 0
  %117 = zext i1 %116 to i32
  %118 = sext i32 %117 to i64
  store i64 %118, i64* %10, align 8
  br label %125

119:                                              ; preds = %4
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @FIXME(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %124, i32* %5, align 4
  br label %173

125:                                              ; preds = %113, %92, %74, %66, %58, %51, %44, %37, %30, %23, %16
  %126 = load i32*, i32** %9, align 8
  %127 = load i32, i32* %126, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %125
  %130 = load i64, i64* %10, align 8
  %131 = load i64, i64* %8, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load i32, i32* @ERROR_ARITHMETIC_OVERFLOW, align 4
  %135 = call i32 @HRESULT_FROM_WIN32(i32 %134)
  store i32 %135, i32* %5, align 4
  br label %173

136:                                              ; preds = %129, %125
  %137 = load i32, i32* %7, align 4
  %138 = icmp slt i32 %137, 64
  br i1 %138, label %139, label %171

139:                                              ; preds = %136
  %140 = load i64, i64* %8, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %160

142:                                              ; preds = %139
  %143 = load i32*, i32** %9, align 8
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %7, align 4
  %146 = sub nsw i32 %145, 1
  %147 = shl i32 1, %146
  %148 = icmp sge i32 %144, %147
  br i1 %148, label %156, label %149

149:                                              ; preds = %142
  %150 = load i32*, i32** %9, align 8
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %7, align 4
  %153 = sub nsw i32 %152, 1
  %154 = shl i32 -1, %153
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %149, %142
  %157 = load i32, i32* @ERROR_ARITHMETIC_OVERFLOW, align 4
  %158 = call i32 @HRESULT_FROM_WIN32(i32 %157)
  store i32 %158, i32* %5, align 4
  br label %173

159:                                              ; preds = %149
  br label %170

160:                                              ; preds = %139
  %161 = load i32*, i32** %9, align 8
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %7, align 4
  %164 = shl i32 1, %163
  %165 = icmp sge i32 %162, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = load i32, i32* @ERROR_ARITHMETIC_OVERFLOW, align 4
  %168 = call i32 @HRESULT_FROM_WIN32(i32 %167)
  store i32 %168, i32* %5, align 4
  br label %173

169:                                              ; preds = %160
  br label %170

170:                                              ; preds = %169, %159
  br label %171

171:                                              ; preds = %170, %136
  %172 = load i32, i32* @S_OK, align 4
  store i32 %172, i32* %5, align 4
  br label %173

173:                                              ; preds = %171, %166, %156, %133, %119, %111, %90
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local i32 @_strtoi64(i8*, i8**, i32) #1

declare dso_local i32 @strtolW(i32*, i32**, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
