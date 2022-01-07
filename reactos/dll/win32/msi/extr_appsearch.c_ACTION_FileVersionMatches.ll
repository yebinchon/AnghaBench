; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_appsearch.c_ACTION_FileVersionMatches.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_appsearch.c_ACTION_FileVersionMatches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@szBackSlash = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"comparing file version %d.%d.%d.%d:\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"less than minimum version %d.%d.%d.%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"greater than maximum version %d.%d.%d.%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"languages %s not supported\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32*)* @ACTION_FileVersionMatches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ACTION_FileVersionMatches(%struct.TYPE_5__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %10, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @GetFileVersionInfoSizeW(i32 %13, i32* %11)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @FALSE, align 4
  %16 = load i32*, i32** %7, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %20, i32* %4, align 4
  br label %175

21:                                               ; preds = %3
  %22 = load i32, i32* %12, align 4
  %23 = call i8* @msi_alloc(i32 %22)
  store i8* %23, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %26, i32* %4, align 4
  br label %175

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = call i64 @GetFileVersionInfoW(i32 %28, i32 0, i32 %29, i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* @szBackSlash, align 4
  %36 = bitcast %struct.TYPE_4__** %10 to i8**
  %37 = call i32 @VerQueryValueW(i8* %34, i32 %35, i8** %36, i32* %8)
  br label %38

38:                                               ; preds = %33, %27
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %40 = icmp ne %struct.TYPE_4__* %39, null
  br i1 %40, label %41, label %171

41:                                               ; preds = %38
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @HIWORD(i64 %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @LOWORD(i64 %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @HIWORD(i64 %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @LOWORD(i64 %56)
  %58 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %49, i32 %53, i32 %57)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %82, label %66

66:                                               ; preds = %41
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %66
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %77, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %74, %41
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @HIWORD(i64 %85)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @LOWORD(i64 %89)
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @HIWORD(i64 %93)
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @LOWORD(i64 %97)
  %99 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %90, i32 %94, i32 %98)
  br label %170

100:                                              ; preds = %74, %66
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %152

110:                                              ; preds = %105, %100
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %113, %116
  br i1 %117, label %134, label %118

118:                                              ; preds = %110
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %121, %124
  br i1 %125, label %126, label %152

126:                                              ; preds = %118
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = icmp sgt i64 %129, %132
  br i1 %133, label %134, label %152

134:                                              ; preds = %126, %110
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @HIWORD(i64 %137)
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @LOWORD(i64 %141)
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @HIWORD(i64 %145)
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @LOWORD(i64 %149)
  %151 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %138, i32 %142, i32 %146, i32 %150)
  br label %169

152:                                              ; preds = %126, %118, %105
  %153 = load i8*, i8** %9, align 8
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @match_languages(i8* %153, i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %165, label %159

159:                                              ; preds = %152
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @debugstr_w(i32 %162)
  %164 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %163)
  br label %168

165:                                              ; preds = %152
  %166 = load i32, i32* @TRUE, align 4
  %167 = load i32*, i32** %7, align 8
  store i32 %166, i32* %167, align 4
  br label %168

168:                                              ; preds = %165, %159
  br label %169

169:                                              ; preds = %168, %134
  br label %170

170:                                              ; preds = %169, %82
  br label %171

171:                                              ; preds = %170, %38
  %172 = load i8*, i8** %9, align 8
  %173 = call i32 @msi_free(i8* %172)
  %174 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %174, i32* %4, align 4
  br label %175

175:                                              ; preds = %171, %25, %19
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local i32 @GetFileVersionInfoSizeW(i32, i32*) #1

declare dso_local i8* @msi_alloc(i32) #1

declare dso_local i64 @GetFileVersionInfoW(i32, i32, i32, i8*) #1

declare dso_local i32 @VerQueryValueW(i8*, i32, i8**, i32*) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @HIWORD(i64) #1

declare dso_local i32 @LOWORD(i64) #1

declare dso_local i32 @match_languages(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @msi_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
