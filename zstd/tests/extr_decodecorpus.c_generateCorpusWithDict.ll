; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_decodecorpus.c_generateCorpusWithDict.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_decodecorpus.c_generateCorpusWithDict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i64, i32*, i64 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s/dictionary\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Error: path too long\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Error: could not allocate space for full dictionary.\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Error: dictionary path too long\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"dictionary\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"\0D%u/%u        \00", align 1
@gt_frame = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"%s/z%06u.zst\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%s/z%06u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8*, i64, i64)* @generateCorpusWithDict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generateCorpusWithDict(i32 %0, i32 %1, i8* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_4__, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %27 = load i32, i32* @MAX_PATH, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %14, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %15, align 8
  %31 = call i32 @RAND(i32* %8)
  store i32 %31, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %32 = load i32, i32* @MAX_PATH, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %30, i32 %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = add nsw i32 %34, 1
  %36 = load i32, i32* @MAX_PATH, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %6
  %39 = call i32 @DISPLAY(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %205

40:                                               ; preds = %6
  %41 = load i64, i64* %12, align 8
  %42 = call i32* @malloc(i64 %41)
  store i32* %42, i32** %16, align 8
  %43 = load i32*, i32** %16, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 @DISPLAY(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %205

47:                                               ; preds = %40
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i64, i64* %12, align 8
  %51 = load i32*, i32** %16, align 8
  %52 = call i32 @genRandomDict(i32 %48, i32 %49, i64 %50, i32* %51)
  store i32 %52, i32* %20, align 4
  %53 = load i32, i32* %20, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %20, align 4
  store i32 %56, i32* %18, align 4
  br label %201

57:                                               ; preds = %47
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = load i32, i32* @MAX_PATH, align 4
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %30, i32 %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %62)
  %64 = add nsw i32 %63, 1
  %65 = load i32, i32* @MAX_PATH, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = call i32 @DISPLAY(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %18, align 4
  br label %201

69:                                               ; preds = %60
  %70 = load i32*, i32** %16, align 8
  %71 = load i64, i64* %12, align 8
  %72 = call i32 @outputBuffer(i32* %70, i64 %71, i8* %30)
  br label %77

73:                                               ; preds = %57
  %74 = load i32*, i32** %16, align 8
  %75 = load i64, i64* %12, align 8
  %76 = call i32 @outputBuffer(i32* %74, i64 %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %77

77:                                               ; preds = %73, %69
  store i32 0, i32* %21, align 4
  br label %78

78:                                               ; preds = %197, %77
  %79 = load i32, i32* %21, align 4
  %80 = load i32, i32* %9, align 4
  %81 = zext i32 %80 to i64
  %82 = call i32 @MAX(i64 %81, i32 1)
  %83 = icmp ult i32 %79, %82
  br i1 %83, label %84, label %200

84:                                               ; preds = %78
  %85 = load i32, i32* %21, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @DISPLAYUPDATE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load i64, i64* %12, align 8
  %89 = udiv i64 %88, 4
  %90 = call i32 @MAX(i64 %89, i32 256)
  %91 = zext i32 %90 to i64
  store i64 %91, i64* %23, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load i64, i64* %23, align 8
  %94 = sub i64 %92, %93
  store i64 %94, i64* %24, align 8
  %95 = load i32*, i32** %16, align 8
  %96 = load i64, i64* %23, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %25, align 8
  %98 = load i64, i64* %24, align 8
  %99 = load i32*, i32** %25, align 8
  %100 = load i32, i32* %17, align 4
  %101 = call i32 @initDictInfo(i32 1, i64 %98, i32* %99, i32 %100)
  store i32 %101, i32* %26, align 4
  %102 = load i64, i64* %13, align 8
  %103 = load i64, i64* @gt_frame, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %84
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %26, align 4
  %108 = call i32 @generateFrame(i32 %106, %struct.TYPE_4__* %22, i32 %107)
  store i32 %108, i32* %8, align 4
  br label %113

109:                                              ; preds = %84
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %26, align 4
  %112 = call i32 @generateCompressedBlock(i32 %110, %struct.TYPE_4__* %22, i32 %111)
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %109, %105
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %165

116:                                              ; preds = %113
  %117 = load i32, i32* @MAX_PATH, align 4
  %118 = load i8*, i8** %10, align 8
  %119 = load i32, i32* %21, align 4
  %120 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %30, i32 %117, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %118, i32 %119)
  %121 = add nsw i32 %120, 1
  %122 = load i32, i32* @MAX_PATH, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %116
  %125 = call i32 @DISPLAY(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %18, align 4
  br label %201

126:                                              ; preds = %116
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to i32*
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = ptrtoint i32* %131 to i64
  %135 = ptrtoint i32* %133 to i64
  %136 = sub i64 %134, %135
  %137 = sdiv exact i64 %136, 4
  %138 = call i32 @outputBuffer(i32* %128, i64 %137, i8* %30)
  %139 = load i8*, i8** %11, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %164

141:                                              ; preds = %126
  %142 = load i32, i32* @MAX_PATH, align 4
  %143 = load i8*, i8** %11, align 8
  %144 = load i32, i32* %21, align 4
  %145 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %30, i32 %142, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %143, i32 %144)
  %146 = add nsw i32 %145, 1
  %147 = load i32, i32* @MAX_PATH, align 4
  %148 = icmp sgt i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %141
  %150 = call i32 @DISPLAY(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %18, align 4
  br label %201

151:                                              ; preds = %141
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = inttoptr i64 %155 to i32*
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = ptrtoint i32* %156 to i64
  %160 = ptrtoint i32* %158 to i64
  %161 = sub i64 %159, %160
  %162 = sdiv exact i64 %161, 4
  %163 = call i32 @outputBuffer(i32* %153, i64 %162, i8* %30)
  br label %164

164:                                              ; preds = %151, %126
  br label %196

165:                                              ; preds = %113
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = inttoptr i64 %169 to i32*
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = ptrtoint i32* %170 to i64
  %174 = ptrtoint i32* %172 to i64
  %175 = sub i64 %173, %174
  %176 = sdiv exact i64 %175, 4
  %177 = load i8*, i8** %10, align 8
  %178 = call i32 @outputBuffer(i32* %167, i64 %176, i8* %177)
  %179 = load i8*, i8** %11, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %195

181:                                              ; preds = %165
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = inttoptr i64 %185 to i32*
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = ptrtoint i32* %186 to i64
  %190 = ptrtoint i32* %188 to i64
  %191 = sub i64 %189, %190
  %192 = sdiv exact i64 %191, 4
  %193 = load i8*, i8** %11, align 8
  %194 = call i32 @outputBuffer(i32* %183, i64 %192, i8* %193)
  br label %195

195:                                              ; preds = %181, %165
  br label %196

196:                                              ; preds = %195, %164
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %21, align 4
  %199 = add i32 %198, 1
  store i32 %199, i32* %21, align 4
  br label %78

200:                                              ; preds = %78
  br label %201

201:                                              ; preds = %200, %149, %124, %67, %55
  %202 = load i32*, i32** %16, align 8
  %203 = call i32 @free(i32* %202)
  %204 = load i32, i32* %18, align 4
  store i32 %204, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %205

205:                                              ; preds = %201, %45, %38
  %206 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %206)
  %207 = load i32, i32* %7, align 4
  ret i32 %207
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RAND(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @DISPLAY(i8*) #2

declare dso_local i32* @malloc(i64) #2

declare dso_local i32 @genRandomDict(i32, i32, i64, i32*) #2

declare dso_local i32 @outputBuffer(i32*, i64, i8*) #2

declare dso_local i32 @MAX(i64, i32) #2

declare dso_local i32 @DISPLAYUPDATE(i8*, i32, i32) #2

declare dso_local i32 @initDictInfo(i32, i64, i32*, i32) #2

declare dso_local i32 @generateFrame(i32, %struct.TYPE_4__*, i32) #2

declare dso_local i32 @generateCompressedBlock(i32, %struct.TYPE_4__*, i32) #2

declare dso_local i32 @free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
