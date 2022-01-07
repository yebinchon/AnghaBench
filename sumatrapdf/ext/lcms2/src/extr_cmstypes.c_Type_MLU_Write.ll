; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_MLU_Write.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_MLU_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_4__ = type { i64, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, i32*, i8*, i64)* @Type_MLU_Write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Type_MLU_Write(i32 %0, %struct._cms_typehandler_struct* %1, i32* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %12, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %5
  %22 = load i32, i32* %7, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @_cmsWriteUInt32Number(i32 %22, i32* %23, i64 0)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %6, align 4
  br label %156

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @_cmsWriteUInt32Number(i32 %29, i32* %30, i64 12)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %6, align 4
  br label %156

35:                                               ; preds = %28
  %36 = load i32, i32* @TRUE, align 4
  store i32 %36, i32* %6, align 4
  br label %156

37:                                               ; preds = %5
  %38 = load i32, i32* %7, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @_cmsWriteUInt32Number(i32 %38, i32* %39, i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %6, align 4
  br label %156

47:                                               ; preds = %37
  %48 = load i32, i32* %7, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @_cmsWriteUInt32Number(i32 %48, i32* %49, i64 12)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %6, align 4
  br label %156

54:                                               ; preds = %47
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = mul i64 12, %57
  %59 = add i64 %58, 4
  store i64 %59, i64* %13, align 8
  store i64 0, i64* %16, align 8
  br label %60

60:                                               ; preds = %134, %54
  %61 = load i64, i64* %16, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ult i64 %61, %64
  br i1 %65, label %66, label %137

66:                                               ; preds = %60
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load i64, i64* %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %14, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i64, i64* %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %15, align 8
  %81 = load i64, i64* %14, align 8
  %82 = mul i64 %81, 4
  %83 = udiv i64 %82, 4
  store i64 %83, i64* %14, align 8
  %84 = load i64, i64* %15, align 8
  %85 = mul i64 %84, 4
  %86 = udiv i64 %85, 4
  %87 = load i64, i64* %13, align 8
  %88 = add i64 %86, %87
  %89 = add i64 %88, 8
  store i64 %89, i64* %15, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i32*, i32** %9, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load i64, i64* %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @_cmsWriteUInt16Number(i32 %90, i32* %91, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %66
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %6, align 4
  br label %156

103:                                              ; preds = %66
  %104 = load i32, i32* %7, align 4
  %105 = load i32*, i32** %9, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = load i64, i64* %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @_cmsWriteUInt16Number(i32 %104, i32* %105, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %103
  %116 = load i32, i32* @FALSE, align 4
  store i32 %116, i32* %6, align 4
  br label %156

117:                                              ; preds = %103
  %118 = load i32, i32* %7, align 4
  %119 = load i32*, i32** %9, align 8
  %120 = load i64, i64* %14, align 8
  %121 = call i32 @_cmsWriteUInt32Number(i32 %118, i32* %119, i64 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %117
  %124 = load i32, i32* @FALSE, align 4
  store i32 %124, i32* %6, align 4
  br label %156

125:                                              ; preds = %117
  %126 = load i32, i32* %7, align 4
  %127 = load i32*, i32** %9, align 8
  %128 = load i64, i64* %15, align 8
  %129 = call i32 @_cmsWriteUInt32Number(i32 %126, i32* %127, i64 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %125
  %132 = load i32, i32* @FALSE, align 4
  store i32 %132, i32* %6, align 4
  br label %156

133:                                              ; preds = %125
  br label %134

134:                                              ; preds = %133
  %135 = load i64, i64* %16, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %16, align 8
  br label %60

137:                                              ; preds = %60
  %138 = load i32, i32* %7, align 4
  %139 = load i32*, i32** %9, align 8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = udiv i64 %143, 4
  %145 = trunc i64 %144 to i32
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = inttoptr i64 %148 to i32*
  %150 = call i32 @_cmsWriteWCharArray(i32 %138, i32* %139, i32 %145, i32* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %137
  %153 = load i32, i32* @FALSE, align 4
  store i32 %153, i32* %6, align 4
  br label %156

154:                                              ; preds = %137
  %155 = load i32, i32* @TRUE, align 4
  store i32 %155, i32* %6, align 4
  br label %156

156:                                              ; preds = %154, %152, %131, %123, %115, %101, %52, %45, %35, %33, %26
  %157 = load i32, i32* %6, align 4
  ret i32 %157
}

declare dso_local i32 @_cmsWriteUInt32Number(i32, i32*, i64) #1

declare dso_local i32 @_cmsWriteUInt16Number(i32, i32*, i32) #1

declare dso_local i32 @_cmsWriteWCharArray(i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
