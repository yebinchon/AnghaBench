; ModuleID = '/home/carl/AnghaBench/redis/src/extr_dict.c__dictGetStatsHt.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_dict.c__dictGetStatsHt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@DICT_STATS_VECTLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"No stats available for empty dictionaries\0A\00", align 1
@.str.1 = private unnamed_addr constant [213 x i8] c"Hash table %d stats (%s):\0A table size: %ld\0A number of elements: %ld\0A different slots: %ld\0A max chain length: %ld\0A avg chain length (counted): %.02f\0A avg chain length (computed): %.02f\0A Chain length distribution:\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"main hash table\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"rehashing target\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"   %s%ld: %ld (%.02f%%)\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c">= \00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_dictGetStatsHt(i8* %0, i64 %1, %struct.TYPE_4__* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %20 = load i32, i32* @DICT_STATS_VECTLEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %15, align 8
  %23 = alloca i64, i64 %21, align 16
  store i64 %21, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %29, i64 %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i64 %31, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %209

32:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  br label %33

33:                                               ; preds = %41, %32
  %34 = load i64, i64* %10, align 8
  %35 = load i32, i32* @DICT_STATS_VECTLEN, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds i64, i64* %23, i64 %39
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %38
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %10, align 8
  br label %33

44:                                               ; preds = %33
  store i64 0, i64* %10, align 8
  br label %45

45:                                               ; preds = %106, %44
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %51, label %109

51:                                               ; preds = %45
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %54, i64 %55
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = icmp eq %struct.TYPE_5__* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = getelementptr inbounds i64, i64* %23, i64 0
  %61 = load i64, i64* %60, align 16
  %62 = add i64 %61, 1
  store i64 %62, i64* %60, align 16
  br label %106

63:                                               ; preds = %51
  %64 = load i64, i64* %11, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %67, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %68, i64 %69
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  store %struct.TYPE_5__* %71, %struct.TYPE_5__** %19, align 8
  br label %72

72:                                               ; preds = %75, %63
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %74 = icmp ne %struct.TYPE_5__* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i64, i64* %12, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %12, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  store %struct.TYPE_5__* %80, %struct.TYPE_5__** %19, align 8
  br label %72

81:                                               ; preds = %72
  %82 = load i64, i64* %12, align 8
  %83 = load i32, i32* @DICT_STATS_VECTLEN, align 4
  %84 = sext i32 %83 to i64
  %85 = icmp ult i64 %82, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i64, i64* %12, align 8
  br label %92

88:                                               ; preds = %81
  %89 = load i32, i32* @DICT_STATS_VECTLEN, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  br label %92

92:                                               ; preds = %88, %86
  %93 = phi i64 [ %87, %86 ], [ %91, %88 ]
  %94 = getelementptr inbounds i64, i64* %23, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load i64, i64* %13, align 8
  %99 = icmp ugt i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = load i64, i64* %12, align 8
  store i64 %101, i64* %13, align 8
  br label %102

102:                                              ; preds = %100, %92
  %103 = load i64, i64* %12, align 8
  %104 = load i64, i64* %14, align 8
  %105 = add i64 %104, %103
  store i64 %105, i64* %14, align 8
  br label %106

106:                                              ; preds = %102, %59
  %107 = load i64, i64* %10, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %10, align 8
  br label %45

109:                                              ; preds = %45
  %110 = load i8*, i8** %6, align 8
  %111 = load i64, i64* %17, align 8
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  %113 = load i64, i64* %7, align 8
  %114 = load i64, i64* %17, align 8
  %115 = sub i64 %113, %114
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp eq i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* %13, align 8
  %129 = load i64, i64* %14, align 8
  %130 = uitofp i64 %129 to float
  %131 = load i64, i64* %11, align 8
  %132 = uitofp i64 %131 to float
  %133 = fdiv float %130, %132
  %134 = fpext float %133 to double
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = sitofp i64 %137 to float
  %139 = load i64, i64* %11, align 8
  %140 = uitofp i64 %139 to float
  %141 = fdiv float %138, %140
  %142 = fpext float %141 to double
  %143 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %112, i64 %115, i8* getelementptr inbounds ([213 x i8], [213 x i8]* @.str.1, i64 0, i64 0), i32 %116, i8* %120, i64 %123, i64 %126, i64 %127, i64 %128, double %134, double %142)
  %144 = load i64, i64* %17, align 8
  %145 = add i64 %144, %143
  store i64 %145, i64* %17, align 8
  store i64 0, i64* %10, align 8
  br label %146

146:                                              ; preds = %195, %109
  %147 = load i64, i64* %10, align 8
  %148 = load i32, i32* @DICT_STATS_VECTLEN, align 4
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = icmp ult i64 %147, %150
  br i1 %151, label %152, label %198

152:                                              ; preds = %146
  %153 = load i64, i64* %10, align 8
  %154 = getelementptr inbounds i64, i64* %23, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %195

158:                                              ; preds = %152
  %159 = load i64, i64* %17, align 8
  %160 = load i64, i64* %7, align 8
  %161 = icmp uge i64 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  br label %198

163:                                              ; preds = %158
  %164 = load i8*, i8** %6, align 8
  %165 = load i64, i64* %17, align 8
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  %167 = load i64, i64* %7, align 8
  %168 = load i64, i64* %17, align 8
  %169 = sub i64 %167, %168
  %170 = load i64, i64* %10, align 8
  %171 = load i32, i32* @DICT_STATS_VECTLEN, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = icmp eq i64 %170, %173
  %175 = zext i1 %174 to i64
  %176 = select i1 %174, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %177 = load i64, i64* %10, align 8
  %178 = load i64, i64* %10, align 8
  %179 = getelementptr inbounds i64, i64* %23, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* %10, align 8
  %182 = getelementptr inbounds i64, i64* %23, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = uitofp i64 %183 to float
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = uitofp i64 %187 to float
  %189 = fdiv float %184, %188
  %190 = fmul float %189, 1.000000e+02
  %191 = fpext float %190 to double
  %192 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %166, i64 %169, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %176, i64 %177, i64 %180, double %191)
  %193 = load i64, i64* %17, align 8
  %194 = add i64 %193, %192
  store i64 %194, i64* %17, align 8
  br label %195

195:                                              ; preds = %163, %157
  %196 = load i64, i64* %10, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %10, align 8
  br label %146

198:                                              ; preds = %162, %146
  %199 = load i64, i64* %7, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %198
  %202 = load i8*, i8** %6, align 8
  %203 = load i64, i64* %7, align 8
  %204 = sub i64 %203, 1
  %205 = getelementptr inbounds i8, i8* %202, i64 %204
  store i8 0, i8* %205, align 1
  br label %206

206:                                              ; preds = %201, %198
  %207 = load i8*, i8** %6, align 8
  %208 = call i64 @strlen(i8* %207)
  store i64 %208, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %209

209:                                              ; preds = %206, %28
  %210 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %210)
  %211 = load i64, i64* %5, align 8
  ret i64 %211
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @snprintf(i8*, i64, i8*, ...) #2

declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
