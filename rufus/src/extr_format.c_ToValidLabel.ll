; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_format.c_ToValidLabel.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_format.c_ToValidLabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@__const.ToValidLabel.unauthorized = private unnamed_addr constant [16 x i32] [i32 42, i32 63, i32 44, i32 59, i32 58, i32 47, i32 92, i32 124, i32 43, i32 61, i32 60, i32 62, i32 91, i32 93, i32 34, i32 0], align 16
@__const.ToValidLabel.to_underscore = private unnamed_addr constant [3 x i32] [i32 9, i32 46, i32 0], align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"FAT label is mostly underscores. Using '%s' label instead.\00", align 1
@SelectedDrive = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@img_report = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @ToValidLabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ToValidLabel(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [16 x i32], align 16
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = bitcast [16 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([16 x i32]* @__const.ToValidLabel.unauthorized to i8*), i64 64, i1 false)
  %13 = bitcast [3 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast ([3 x i32]* @__const.ToValidLabel.to_underscore to i8*), i64 12, i1 false)
  %14 = load i8*, i8** %3, align 8
  %15 = call i32* @utf8_to_wchar(i8* %14)
  store i32* %15, i32** %11, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %206

19:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  store i64 0, i64* %7, align 8
  br label %20

20:                                               ; preds = %120, %19
  %21 = load i64, i64* %5, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @wcslen(i32* %22)
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %123

26:                                               ; preds = %20
  %27 = load i64, i64* %4, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %69

29:                                               ; preds = %26
  %30 = load i64, i64* @FALSE, align 8
  store i64 %30, i64* %8, align 8
  store i64 0, i64* %6, align 8
  br label %31

31:                                               ; preds = %49, %29
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %34 = call i32 @wcslen(i32* %33)
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %31
  %38 = load i32*, i32** %11, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i64, i64* @TRUE, align 8
  store i64 %47, i64* %8, align 8
  br label %52

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %6, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %6, align 8
  br label %31

52:                                               ; preds = %46, %31
  %53 = load i32*, i32** %11, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp sge i32 %56, 128
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i32*, i32** %11, align 8
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %7, align 8
  %62 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 95, i32* %62, align 4
  %63 = load i64, i64* @TRUE, align 8
  store i64 %63, i64* %8, align 8
  br label %64

64:                                               ; preds = %58, %52
  %65 = load i64, i64* %8, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %120

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %68, %26
  %70 = load i64, i64* @FALSE, align 8
  store i64 %70, i64* %8, align 8
  store i64 0, i64* %6, align 8
  br label %71

71:                                               ; preds = %93, %69
  %72 = load i64, i64* %6, align 8
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %74 = call i32 @wcslen(i32* %73)
  %75 = sext i32 %74 to i64
  %76 = icmp ult i64 %72, %75
  br i1 %76, label %77, label %96

77:                                               ; preds = %71
  %78 = load i32*, i32** %11, align 8
  %79 = load i64, i64* %5, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %6, align 8
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %81, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %77
  %87 = load i32*, i32** %11, align 8
  %88 = load i64, i64* %7, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %7, align 8
  %90 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32 95, i32* %90, align 4
  %91 = load i64, i64* @TRUE, align 8
  store i64 %91, i64* %8, align 8
  br label %96

92:                                               ; preds = %77
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %6, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %6, align 8
  br label %71

96:                                               ; preds = %86, %71
  %97 = load i64, i64* %8, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %120

100:                                              ; preds = %96
  %101 = load i64, i64* %4, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i32*, i32** %11, align 8
  %105 = load i64, i64* %5, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @toupper(i32 %107) #4
  br label %114

109:                                              ; preds = %100
  %110 = load i32*, i32** %11, align 8
  %111 = load i64, i64* %5, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  br label %114

114:                                              ; preds = %109, %103
  %115 = phi i32 [ %108, %103 ], [ %113, %109 ]
  %116 = load i32*, i32** %11, align 8
  %117 = load i64, i64* %7, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %7, align 8
  %119 = getelementptr inbounds i32, i32* %116, i64 %117
  store i32 %115, i32* %119, align 4
  br label %120

120:                                              ; preds = %114, %99, %67
  %121 = load i64, i64* %5, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %5, align 8
  br label %20

123:                                              ; preds = %20
  %124 = load i32*, i32** %11, align 8
  %125 = load i64, i64* %7, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32 0, i32* %126, align 4
  %127 = load i64, i64* %4, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %186

129:                                              ; preds = %123
  %130 = load i32*, i32** %11, align 8
  %131 = call i32 @wcslen(i32* %130)
  %132 = icmp sgt i32 %131, 11
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load i32*, i32** %11, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 11
  store i32 0, i32* %135, align 4
  br label %136

136:                                              ; preds = %133, %129
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %137

137:                                              ; preds = %153, %136
  %138 = load i32*, i32** %11, align 8
  %139 = load i64, i64* %5, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %137
  %144 = load i32*, i32** %11, align 8
  %145 = load i64, i64* %5, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 95
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load i64, i64* %6, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %6, align 8
  br label %152

152:                                              ; preds = %149, %143
  br label %153

153:                                              ; preds = %152
  %154 = load i64, i64* %5, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %5, align 8
  br label %137

156:                                              ; preds = %137
  %157 = load i64, i64* %5, align 8
  %158 = load i64, i64* %6, align 8
  %159 = mul i64 2, %158
  %160 = icmp ult i64 %157, %159
  br i1 %160, label %161, label %185

161:                                              ; preds = %156
  %162 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 0), align 8
  %163 = call i32 @uprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32* %162)
  store i64 0, i64* %5, align 8
  br label %164

164:                                              ; preds = %178, %161
  %165 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 0), align 8
  %166 = load i64, i64* %5, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %164
  %171 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SelectedDrive, i32 0, i32 0), align 8
  %172 = load i64, i64* %5, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** %11, align 8
  %176 = load i64, i64* %5, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  store i32 %174, i32* %177, align 4
  br label %178

178:                                              ; preds = %170
  %179 = load i64, i64* %5, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %5, align 8
  br label %164

181:                                              ; preds = %164
  %182 = load i32*, i32** %11, align 8
  %183 = load i64, i64* %5, align 8
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32 0, i32* %184, align 4
  br label %185

185:                                              ; preds = %181, %156
  br label %194

186:                                              ; preds = %123
  %187 = load i32*, i32** %11, align 8
  %188 = call i32 @wcslen(i32* %187)
  %189 = icmp sgt i32 %188, 32
  br i1 %189, label %190, label %193

190:                                              ; preds = %186
  %191 = load i32*, i32** %11, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 32
  store i32 0, i32* %192, align 4
  br label %193

193:                                              ; preds = %190, %186
  br label %194

194:                                              ; preds = %193, %185
  %195 = load i32*, i32** %11, align 8
  %196 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @img_report, i32 0, i32 0), align 4
  %197 = call i32 @wchar_to_utf8_no_alloc(i32* %195, i32 %196, i32 4)
  %198 = load i8*, i8** %3, align 8
  %199 = load i8*, i8** %3, align 8
  %200 = call i64 @strlen(i8* %199)
  %201 = add nsw i64 %200, 1
  %202 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @img_report, i32 0, i32 0), align 4
  %203 = call i32 @safe_strcpy(i8* %198, i64 %201, i32 %202)
  %204 = load i32*, i32** %11, align 8
  %205 = call i32 @free(i32* %204)
  br label %206

206:                                              ; preds = %194, %18
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @utf8_to_wchar(i8*) #2

declare dso_local i32 @wcslen(i32*) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @toupper(i32) #3

declare dso_local i32 @uprintf(i8*, i32*) #2

declare dso_local i32 @wchar_to_utf8_no_alloc(i32*, i32, i32) #2

declare dso_local i32 @safe_strcpy(i8*, i64, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
