; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_ReadPositionTable.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_ReadPositionTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_8__ = type { i32 (i32, %struct.TYPE_8__*)*, i32, i32 (i32, %struct.TYPE_8__*, i32)* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_8__*, i32, i32, i8*, i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_8__*, i8*, i32, i32)*)* @ReadPositionTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadPositionTable(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_8__* %2, i32 %3, i32 %4, i8* %5, i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_8__*, i8*, i32, i32)* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct._cms_typehandler_struct*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_8__*, i8*, i32, i32)*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %10, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_8__*, i8*, i32, i32)* %6, i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_8__*, i8*, i32, i32)** %15, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32 (i32, %struct.TYPE_8__*)*, i32 (i32, %struct.TYPE_8__*)** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %25 = call i32 %22(i32 %23, %struct.TYPE_8__* %24)
  store i32 %25, i32* %19, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %19, align 4
  %30 = sub nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = udiv i64 %31, 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp ult i64 %32, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %7
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %8, align 4
  br label %160

38:                                               ; preds = %7
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i64 @_cmsCalloc(i32 %39, i32 %40, i32 4)
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %17, align 8
  %43 = load i32*, i32** %17, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %144

46:                                               ; preds = %38
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i64 @_cmsCalloc(i32 %47, i32 %48, i32 4)
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %18, align 8
  %51 = load i32*, i32** %18, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %144

54:                                               ; preds = %46
  store i32 0, i32* %16, align 4
  br label %55

55:                                               ; preds = %87, %54
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %90

59:                                               ; preds = %55
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %62 = load i32*, i32** %17, align 8
  %63 = load i32, i32* %16, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = call i32 @_cmsReadUInt32Number(i32 %60, %struct.TYPE_8__* %61, i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %59
  br label %144

69:                                               ; preds = %59
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %72 = load i32*, i32** %18, align 8
  %73 = load i32, i32* %16, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = call i32 @_cmsReadUInt32Number(i32 %70, %struct.TYPE_8__* %71, i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %69
  br label %144

79:                                               ; preds = %69
  %80 = load i32, i32* %13, align 4
  %81 = load i32*, i32** %17, align 8
  %82 = load i32, i32* %16, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, %80
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %79
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %16, align 4
  br label %55

90:                                               ; preds = %55
  store i32 0, i32* %16, align 4
  br label %91

91:                                               ; preds = %125, %90
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %128

95:                                               ; preds = %91
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  %98 = load i32 (i32, %struct.TYPE_8__*, i32)*, i32 (i32, %struct.TYPE_8__*, i32)** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %101 = load i32*, i32** %17, align 8
  %102 = load i32, i32* %16, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 %98(i32 %99, %struct.TYPE_8__* %100, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %95
  br label %144

109:                                              ; preds = %95
  %110 = load i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_8__*, i8*, i32, i32)*, i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_8__*, i8*, i32, i32)** %15, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %10, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %114 = load i8*, i8** %14, align 8
  %115 = load i32, i32* %16, align 4
  %116 = load i32*, i32** %18, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 %110(i32 %111, %struct._cms_typehandler_struct* %112, %struct.TYPE_8__* %113, i8* %114, i32 %115, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %109
  br label %144

124:                                              ; preds = %109
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %16, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %16, align 4
  br label %91

128:                                              ; preds = %91
  %129 = load i32*, i32** %17, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load i32, i32* %9, align 4
  %133 = load i32*, i32** %17, align 8
  %134 = call i32 @_cmsFree(i32 %132, i32* %133)
  br label %135

135:                                              ; preds = %131, %128
  %136 = load i32*, i32** %18, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i32, i32* %9, align 4
  %140 = load i32*, i32** %18, align 8
  %141 = call i32 @_cmsFree(i32 %139, i32* %140)
  br label %142

142:                                              ; preds = %138, %135
  %143 = load i32, i32* @TRUE, align 4
  store i32 %143, i32* %8, align 4
  br label %160

144:                                              ; preds = %123, %108, %78, %68, %53, %45
  %145 = load i32*, i32** %17, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load i32, i32* %9, align 4
  %149 = load i32*, i32** %17, align 8
  %150 = call i32 @_cmsFree(i32 %148, i32* %149)
  br label %151

151:                                              ; preds = %147, %144
  %152 = load i32*, i32** %18, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = load i32, i32* %9, align 4
  %156 = load i32*, i32** %18, align 8
  %157 = call i32 @_cmsFree(i32 %155, i32* %156)
  br label %158

158:                                              ; preds = %154, %151
  %159 = load i32, i32* @FALSE, align 4
  store i32 %159, i32* %8, align 4
  br label %160

160:                                              ; preds = %158, %142, %36
  %161 = load i32, i32* %8, align 4
  ret i32 %161
}

declare dso_local i64 @_cmsCalloc(i32, i32, i32) #1

declare dso_local i32 @_cmsReadUInt32Number(i32, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @_cmsFree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
