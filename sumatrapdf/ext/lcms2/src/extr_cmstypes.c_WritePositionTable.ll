; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_WritePositionTable.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_WritePositionTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_12__ = type { i64 (i32, %struct.TYPE_12__*)*, i32 (i32, %struct.TYPE_12__*, i64)* }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_12__*, i64, i64, i64, i8*, i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_12__*, i8*, i64, i64)*)* @WritePositionTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WritePositionTable(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_12__* %2, i64 %3, i64 %4, i64 %5, i8* %6, i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_12__*, i8*, i64, i64)* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct._cms_typehandler_struct*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_12__*, i8*, i64, i64)*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64*, align 8
  store i32 %0, i32* %10, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %11, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_12__*, i8*, i64, i64)* %7, i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_12__*, i8*, i64, i64)** %17, align 8
  store i64* null, i64** %22, align 8
  store i64* null, i64** %23, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i64, i64* %14, align 8
  %26 = call i64 @_cmsCalloc(i32 %24, i64 %25, i32 8)
  %27 = inttoptr i64 %26 to i64*
  store i64* %27, i64** %22, align 8
  %28 = load i64*, i64** %22, align 8
  %29 = icmp eq i64* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %8
  br label %180

31:                                               ; preds = %8
  %32 = load i32, i32* %10, align 4
  %33 = load i64, i64* %14, align 8
  %34 = call i64 @_cmsCalloc(i32 %32, i64 %33, i32 8)
  %35 = inttoptr i64 %34 to i64*
  store i64* %35, i64** %23, align 8
  %36 = load i64*, i64** %23, align 8
  %37 = icmp eq i64* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %180

39:                                               ; preds = %31
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i64 (i32, %struct.TYPE_12__*)*, i64 (i32, %struct.TYPE_12__*)** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %45 = call i64 %42(i32 %43, %struct.TYPE_12__* %44)
  store i64 %45, i64* %19, align 8
  store i64 0, i64* %18, align 8
  br label %46

46:                                               ; preds = %63, %39
  %47 = load i64, i64* %18, align 8
  %48 = load i64, i64* %14, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %53 = call i32 @_cmsWriteUInt32Number(i32 %51, %struct.TYPE_12__* %52, i64 0)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %180

56:                                               ; preds = %50
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %59 = call i32 @_cmsWriteUInt32Number(i32 %57, %struct.TYPE_12__* %58, i64 0)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %180

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %18, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %18, align 8
  br label %46

66:                                               ; preds = %46
  store i64 0, i64* %18, align 8
  br label %67

67:                                               ; preds = %106, %66
  %68 = load i64, i64* %18, align 8
  %69 = load i64, i64* %14, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %109

71:                                               ; preds = %67
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i64 (i32, %struct.TYPE_12__*)*, i64 (i32, %struct.TYPE_12__*)** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %77 = call i64 %74(i32 %75, %struct.TYPE_12__* %76)
  store i64 %77, i64* %21, align 8
  %78 = load i64, i64* %21, align 8
  %79 = load i64, i64* %15, align 8
  %80 = sub i64 %78, %79
  %81 = load i64*, i64** %22, align 8
  %82 = load i64, i64* %18, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  store i64 %80, i64* %83, align 8
  %84 = load i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_12__*, i8*, i64, i64)*, i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_12__*, i8*, i64, i64)** %17, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %11, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %88 = load i8*, i8** %16, align 8
  %89 = load i64, i64* %18, align 8
  %90 = load i64, i64* %13, align 8
  %91 = call i32 %84(i32 %85, %struct._cms_typehandler_struct* %86, %struct.TYPE_12__* %87, i8* %88, i64 %89, i64 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %71
  br label %180

94:                                               ; preds = %71
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i64 (i32, %struct.TYPE_12__*)*, i64 (i32, %struct.TYPE_12__*)** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %100 = call i64 %97(i32 %98, %struct.TYPE_12__* %99)
  %101 = load i64, i64* %21, align 8
  %102 = sub i64 %100, %101
  %103 = load i64*, i64** %23, align 8
  %104 = load i64, i64* %18, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  store i64 %102, i64* %105, align 8
  br label %106

106:                                              ; preds = %94
  %107 = load i64, i64* %18, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %18, align 8
  br label %67

109:                                              ; preds = %67
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i64 (i32, %struct.TYPE_12__*)*, i64 (i32, %struct.TYPE_12__*)** %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %115 = call i64 %112(i32 %113, %struct.TYPE_12__* %114)
  store i64 %115, i64* %20, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load i32 (i32, %struct.TYPE_12__*, i64)*, i32 (i32, %struct.TYPE_12__*, i64)** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %121 = load i64, i64* %19, align 8
  %122 = call i32 %118(i32 %119, %struct.TYPE_12__* %120, i64 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %109
  br label %180

125:                                              ; preds = %109
  store i64 0, i64* %18, align 8
  br label %126

126:                                              ; preds = %151, %125
  %127 = load i64, i64* %18, align 8
  %128 = load i64, i64* %14, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %154

130:                                              ; preds = %126
  %131 = load i32, i32* %10, align 4
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %133 = load i64*, i64** %22, align 8
  %134 = load i64, i64* %18, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @_cmsWriteUInt32Number(i32 %131, %struct.TYPE_12__* %132, i64 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %130
  br label %180

140:                                              ; preds = %130
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %143 = load i64*, i64** %23, align 8
  %144 = load i64, i64* %18, align 8
  %145 = getelementptr inbounds i64, i64* %143, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @_cmsWriteUInt32Number(i32 %141, %struct.TYPE_12__* %142, i64 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %140
  br label %180

150:                                              ; preds = %140
  br label %151

151:                                              ; preds = %150
  %152 = load i64, i64* %18, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %18, align 8
  br label %126

154:                                              ; preds = %126
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 1
  %157 = load i32 (i32, %struct.TYPE_12__*, i64)*, i32 (i32, %struct.TYPE_12__*, i64)** %156, align 8
  %158 = load i32, i32* %10, align 4
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %160 = load i64, i64* %20, align 8
  %161 = call i32 %157(i32 %158, %struct.TYPE_12__* %159, i64 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %154
  br label %180

164:                                              ; preds = %154
  %165 = load i64*, i64** %22, align 8
  %166 = icmp ne i64* %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %164
  %168 = load i32, i32* %10, align 4
  %169 = load i64*, i64** %22, align 8
  %170 = call i32 @_cmsFree(i32 %168, i64* %169)
  br label %171

171:                                              ; preds = %167, %164
  %172 = load i64*, i64** %23, align 8
  %173 = icmp ne i64* %172, null
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = load i32, i32* %10, align 4
  %176 = load i64*, i64** %23, align 8
  %177 = call i32 @_cmsFree(i32 %175, i64* %176)
  br label %178

178:                                              ; preds = %174, %171
  %179 = load i32, i32* @TRUE, align 4
  store i32 %179, i32* %9, align 4
  br label %196

180:                                              ; preds = %163, %149, %139, %124, %93, %61, %55, %38, %30
  %181 = load i64*, i64** %22, align 8
  %182 = icmp ne i64* %181, null
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = load i32, i32* %10, align 4
  %185 = load i64*, i64** %22, align 8
  %186 = call i32 @_cmsFree(i32 %184, i64* %185)
  br label %187

187:                                              ; preds = %183, %180
  %188 = load i64*, i64** %23, align 8
  %189 = icmp ne i64* %188, null
  br i1 %189, label %190, label %194

190:                                              ; preds = %187
  %191 = load i32, i32* %10, align 4
  %192 = load i64*, i64** %23, align 8
  %193 = call i32 @_cmsFree(i32 %191, i64* %192)
  br label %194

194:                                              ; preds = %190, %187
  %195 = load i32, i32* @FALSE, align 4
  store i32 %195, i32* %9, align 4
  br label %196

196:                                              ; preds = %194, %178
  %197 = load i32, i32* %9, align 4
  ret i32 %197
}

declare dso_local i64 @_cmsCalloc(i32, i64, i32) #1

declare dso_local i32 @_cmsWriteUInt32Number(i32, %struct.TYPE_12__*, i64) #1

declare dso_local i32 @_cmsFree(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
