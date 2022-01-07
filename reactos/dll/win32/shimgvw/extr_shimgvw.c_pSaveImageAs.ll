; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shimgvw/extr_shimgvw.c_pSaveImageAs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shimgvw/extr_shimgvw.c_pSaveImageAs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__*, i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"malloc() failed in pSaveImageAs()\0A\00", align 1
@image = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"cannot allocate memory for filter mask in pSaveImageAs()\00", align 1
@hInstance = common dso_local global i32 0, align 4
@OFN_OVERWRITEPROMPT = common dso_local global i32 0, align 4
@OFN_HIDEREADONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i32] [i32 37, i32 108, i32 115, i32 32, i32 40, i32 37, i32 108, i32 115, i32 41, i32 0], align 4
@.str.3 = private unnamed_addr constant [4 x i32] [i32 37, i32 108, i32 115, i32 0], align 4
@FALSE = common dso_local global i64 0, align 8
@m_pDelayItem = common dso_local global i64 0, align 8
@hDispWnd = common dso_local global i32 0, align 4
@ANIME_TIMER_ID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"FIXME: save animation\0A\00", align 1
@Ok = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"GdipSaveImageToFile() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @pSaveImageAs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pSaveImageAs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca %struct.TYPE_12__, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %19 = call i32 @GdipGetImageEncodersSize(i64* %9, i64* %10)
  %20 = load i64, i64* %10, align 8
  %21 = call %struct.TYPE_12__* @malloc(i64 %20)
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %4, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = icmp ne %struct.TYPE_12__* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %1
  %25 = call i32 @DPRINT1(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %191

26:                                               ; preds = %1
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = call i32 @GdipGetImageEncoders(i64 %27, i64 %28, %struct.TYPE_12__* %29)
  %31 = load i32, i32* @image, align 4
  %32 = call i32 @GdipGetImageRawFormat(i32 %31, i32* %8)
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %33

33:                                               ; preds = %57, %26
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %33
  %38 = load i64, i64* %11, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = load i64, i64* %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @wcslen(i32 %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = load i64, i64* %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @wcslen(i32 %49)
  %51 = mul nsw i32 %50, 2
  %52 = add nsw i32 %44, %51
  %53 = add nsw i32 %52, 5
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 64
  %56 = add i64 %38, %55
  store i64 %56, i64* %11, align 8
  br label %57

57:                                               ; preds = %37
  %58 = load i64, i64* %12, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %12, align 8
  br label %33

60:                                               ; preds = %33
  %61 = load i64, i64* %11, align 8
  %62 = add i64 %61, 128
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call %struct.TYPE_12__* @malloc(i64 %63)
  store %struct.TYPE_12__* %64, %struct.TYPE_12__** %7, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %66 = icmp ne %struct.TYPE_12__* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %60
  %68 = call i32 @DPRINT1(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = call i32 @free(%struct.TYPE_12__* %69)
  store i32 1, i32* %14, align 4
  br label %191

71:                                               ; preds = %60
  %72 = mul nuw i64 64, %16
  %73 = trunc i64 %72 to i32
  %74 = call i32 @ZeroMemory(%struct.TYPE_12__* %18, i32 %73)
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = load i64, i64* %11, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @ZeroMemory(%struct.TYPE_12__* %75, i32 %77)
  %79 = call i32 @ZeroMemory(%struct.TYPE_12__* %3, i32 64)
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  store i32 64, i32* %80, align 8
  %81 = load i32, i32* %2, align 4
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 11
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* @hInstance, align 4
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 10
  store i32 %83, i32* %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 9
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %85, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 8
  store %struct.TYPE_12__* %86, %struct.TYPE_12__** %87, align 8
  %88 = load i32, i32* @MAX_PATH, align 4
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* @OFN_OVERWRITEPROMPT, align 4
  %91 = load i32, i32* @OFN_HIDEREADONLY, align 4
  %92 = or i32 %90, %91
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 2
  store i32 %92, i32* %93, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %94, %struct.TYPE_12__** %13, align 8
  store i64 0, i64* %12, align 8
  br label %95

95:                                               ; preds = %141, %71
  %96 = load i64, i64* %12, align 8
  %97 = load i64, i64* %9, align 8
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %99, label %144

99:                                               ; preds = %95
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %101 = load i64, i64* %11, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %103 = load i64, i64* %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %108 = load i64, i64* %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (%struct.TYPE_12__*, i64, %struct.TYPE_12__**, i64*, i32, i8*, i32, ...) @StringCbPrintfExW(%struct.TYPE_12__* %100, i64 %101, %struct.TYPE_12__** %13, i64* %11, i32 0, i8* bitcast ([10 x i32]* @.str.2 to i8*), i32 %106, i32 %111)
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 1
  store %struct.TYPE_12__* %114, %struct.TYPE_12__** %13, align 8
  %115 = load i64, i64* %11, align 8
  %116 = sub i64 %115, 64
  store i64 %116, i64* %11, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %118 = load i64, i64* %11, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %120 = load i64, i64* %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (%struct.TYPE_12__*, i64, %struct.TYPE_12__**, i64*, i32, i8*, i32, ...) @StringCbPrintfExW(%struct.TYPE_12__* %117, i64 %118, %struct.TYPE_12__** %13, i64* %11, i32 0, i8* bitcast ([4 x i32]* @.str.3 to i8*), i32 %123)
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 1
  store %struct.TYPE_12__* %126, %struct.TYPE_12__** %13, align 8
  %127 = load i64, i64* %11, align 8
  %128 = sub i64 %127, 64
  store i64 %128, i64* %11, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %130 = load i64, i64* %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 5
  %133 = call i64 @IsEqualGUID(i32* %8, i32* %132)
  %134 = load i64, i64* @FALSE, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %99
  %137 = load i64, i64* %12, align 8
  %138 = add i64 %137, 1
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 3
  store i64 %138, i64* %139, align 8
  br label %140

140:                                              ; preds = %136, %99
  br label %141

141:                                              ; preds = %140
  %142 = load i64, i64* %12, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %12, align 8
  br label %95

144:                                              ; preds = %95
  %145 = call i64 @GetSaveFileNameW(%struct.TYPE_12__* %3)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %186

147:                                              ; preds = %144
  %148 = load i64, i64* @m_pDelayItem, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %171

150:                                              ; preds = %147
  %151 = load i32, i32* @hDispWnd, align 4
  %152 = load i32, i32* @ANIME_TIMER_ID, align 4
  %153 = call i32 @KillTimer(i32 %151, i32 %152)
  %154 = call i32 @DPRINT1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %155 = load i32, i32* @image, align 4
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = sub i64 %158, 1
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 4
  %162 = call i64 @GdipSaveImageToFile(i32 %155, %struct.TYPE_12__* %18, i32* %161, i32* null)
  %163 = load i64, i64* @Ok, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %150
  %166 = call i32 @DPRINT1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %150
  %168 = load i32, i32* @hDispWnd, align 4
  %169 = load i32, i32* @ANIME_TIMER_ID, align 4
  %170 = call i32 @SetTimer(i32 %168, i32 %169, i32 0, i32* null)
  br label %185

171:                                              ; preds = %147
  %172 = load i32, i32* @image, align 4
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = sub i64 %175, 1
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 4
  %179 = call i64 @GdipSaveImageToFile(i32 %172, %struct.TYPE_12__* %18, i32* %178, i32* null)
  %180 = load i64, i64* @Ok, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %171
  %183 = call i32 @DPRINT1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %184

184:                                              ; preds = %182, %171
  br label %185

185:                                              ; preds = %184, %167
  br label %186

186:                                              ; preds = %185, %144
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %188 = call i32 @free(%struct.TYPE_12__* %187)
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %190 = call i32 @free(%struct.TYPE_12__* %189)
  store i32 0, i32* %14, align 4
  br label %191

191:                                              ; preds = %186, %67, %24
  %192 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %192)
  %193 = load i32, i32* %14, align 4
  switch i32 %193, label %195 [
    i32 0, label %194
    i32 1, label %194
  ]

194:                                              ; preds = %191, %191
  ret void

195:                                              ; preds = %191
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GdipGetImageEncodersSize(i64*, i64*) #2

declare dso_local %struct.TYPE_12__* @malloc(i64) #2

declare dso_local i32 @DPRINT1(i8*) #2

declare dso_local i32 @GdipGetImageEncoders(i64, i64, %struct.TYPE_12__*) #2

declare dso_local i32 @GdipGetImageRawFormat(i32, i32*) #2

declare dso_local i32 @wcslen(i32) #2

declare dso_local i32 @free(%struct.TYPE_12__*) #2

declare dso_local i32 @ZeroMemory(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @StringCbPrintfExW(%struct.TYPE_12__*, i64, %struct.TYPE_12__**, i64*, i32, i8*, i32, ...) #2

declare dso_local i64 @IsEqualGUID(i32*, i32*) #2

declare dso_local i64 @GetSaveFileNameW(%struct.TYPE_12__*) #2

declare dso_local i32 @KillTimer(i32, i32) #2

declare dso_local i64 @GdipSaveImageToFile(i32, %struct.TYPE_12__*, i32*, i32*) #2

declare dso_local i32 @SetTimer(i32, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
