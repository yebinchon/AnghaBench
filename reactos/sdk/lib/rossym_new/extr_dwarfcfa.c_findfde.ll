; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rossym_new/extr_dwarfcfa.c_findfde.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rossym_new/extr_dwarfcfa.c_findfde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__, i8*, i8*, i32, i8* }
%struct.TYPE_16__ = type { i32*, i32* }
%struct.TYPE_18__ = type { i32, i32*, i32*, %struct.TYPE_19__* }

@findfde.nbad = internal global i32 0, align 4
@nil = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"no frame debugging information\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"bad length in cie/fde header\00", align 1
@trace = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"CIE len %x id %x vers %x\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"unknown cie version %d (wanted 1-3)\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"unknown augmentation: %s\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"return address is register %d but only have %d registers\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"FDE: base %x-%x (want pc %x)\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"cannot find call frame information for pc 0x%lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32, %struct.TYPE_17__*, %struct.TYPE_18__*)* @findfde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findfde(%struct.TYPE_19__* %0, i32 %1, %struct.TYPE_17__* %2, %struct.TYPE_18__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_18__, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %9, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32*, i32** @nil, align 8
  %24 = icmp eq i32* %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %234

27:                                               ; preds = %4
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 3
  store %struct.TYPE_19__* %28, %struct.TYPE_19__** %29, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  store i32* %33, i32** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %36, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  store i32* %42, i32** %43, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %27
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  store i32 4, i32* %52, align 8
  br label %53

53:                                               ; preds = %51, %27
  br label %54

54:                                               ; preds = %228, %53
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ult i32* %56, %58
  br i1 %59, label %60, label %231

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = ptrtoint i32* %62 to i64
  %68 = ptrtoint i32* %66 to i64
  %69 = sub i64 %67, %68
  %70 = sdiv exact i64 %69, 4
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = srem i64 %70, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %60
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sub nsw i32 %79, %80
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = sext i32 %81 to i64
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32* %85, i32** %82, align 8
  br label %86

86:                                               ; preds = %77, %60
  %87 = call i32 @dwarfget4(%struct.TYPE_18__* %18)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = ptrtoint i32* %91 to i64
  %95 = ptrtoint i32* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 4
  %98 = icmp sgt i64 %89, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %86
  %100 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %234

101:                                              ; preds = %86
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32* %106, i32** %11, align 8
  %107 = call i32 @dwarfget4(%struct.TYPE_18__* %18)
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %15, align 4
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %188

110:                                              ; preds = %101
  %111 = call i32 @dwarfget1(%struct.TYPE_18__* %18)
  store i32 %111, i32* %13, align 4
  %112 = load i64, i64* @trace, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %13, align 4
  %118 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %114, %110
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 1
  br i1 %121, label %122, label %136

122:                                              ; preds = %119
  %123 = load i32, i32* %13, align 4
  %124 = icmp ne i32 %123, 2
  br i1 %124, label %125, label %136

125:                                              ; preds = %122
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 3
  br i1 %127, label %128, label %136

128:                                              ; preds = %125
  %129 = load i32, i32* @findfde.nbad, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* @findfde.nbad, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load i32, i32* %13, align 4
  %134 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %132, %128
  br label %228

136:                                              ; preds = %125, %122, %119
  %137 = call i8* @dwarfgetstring(%struct.TYPE_18__* %18)
  store i8* %137, i8** %10, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %153

140:                                              ; preds = %136
  %141 = load i8*, i8** %10, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %140
  %146 = load i32, i32* @findfde.nbad, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* @findfde.nbad, align 4
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load i8*, i8** %10, align 8
  %151 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %150)
  br label %152

152:                                              ; preds = %149, %145
  br label %228

153:                                              ; preds = %140, %136
  %154 = call i8* @dwarfget128(%struct.TYPE_18__* %18)
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 6
  store i8* %154, i8** %156, align 8
  %157 = call i32 @dwarfget128s(%struct.TYPE_18__* %18)
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 5
  store i32 %157, i32* %159, align 8
  %160 = call i8* @dwarfget128(%struct.TYPE_18__* %18)
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 4
  store i8* %160, i8** %162, align 8
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 4
  %165 = load i8*, i8** %164, align 8
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 3
  %168 = load i8*, i8** %167, align 8
  %169 = icmp ugt i8* %165, %168
  br i1 %169, label %170, label %178

170:                                              ; preds = %153
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 4
  %173 = load i8*, i8** %172, align 8
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 3
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i8* %173, i8* %176)
  store i32 -1, i32* %5, align 4
  br label %234

178:                                              ; preds = %153
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 1
  store i32* %180, i32** %183, align 8
  %184 = load i32*, i32** %11, align 8
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  store i32* %184, i32** %187, align 8
  br label %227

188:                                              ; preds = %101
  %189 = call i32 @dwarfgetaddr(%struct.TYPE_18__* %18)
  store i32 %189, i32* %16, align 4
  %190 = call i32 @dwarfgetaddr(%struct.TYPE_18__* %18)
  store i32 %190, i32* %17, align 4
  %191 = load i64, i64* @trace, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %188
  %194 = load i32, i32* %16, align 4
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* %17, align 4
  %197 = add nsw i32 %195, %196
  %198 = load i32, i32* %7, align 4
  %199 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %194, i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %193, %188
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  %202 = load i32*, i32** %201, align 8
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 2
  store i32* %202, i32** %204, align 8
  %205 = load i32*, i32** %11, align 8
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 1
  store i32* %205, i32** %207, align 8
  %208 = load i32, i32* %16, align 4
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  %211 = load i32, i32* %16, align 4
  %212 = load i32, i32* %17, align 4
  %213 = add nsw i32 %211, %212
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 4
  %216 = load i32, i32* %16, align 4
  %217 = load i32, i32* %7, align 4
  %218 = icmp sle i32 %216, %217
  br i1 %218, label %219, label %226

219:                                              ; preds = %200
  %220 = load i32, i32* %7, align 4
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* %17, align 4
  %223 = add nsw i32 %221, %222
  %224 = icmp slt i32 %220, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %219
  store i32 0, i32* %5, align 4
  br label %234

226:                                              ; preds = %219, %200
  br label %227

227:                                              ; preds = %226, %178
  br label %228

228:                                              ; preds = %227, %152, %135
  %229 = load i32*, i32** %11, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  store i32* %229, i32** %230, align 8
  br label %54

231:                                              ; preds = %54
  %232 = load i32, i32* %7, align 4
  %233 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %232)
  store i32 -1, i32* %5, align 4
  br label %234

234:                                              ; preds = %231, %225, %170, %99, %25
  %235 = load i32, i32* %5, align 4
  ret i32 %235
}

declare dso_local i32 @werrstr(i8*, ...) #1

declare dso_local i32 @dwarfget4(%struct.TYPE_18__*) #1

declare dso_local i32 @dwarfget1(%struct.TYPE_18__*) #1

declare dso_local i8* @dwarfgetstring(%struct.TYPE_18__*) #1

declare dso_local i8* @dwarfget128(%struct.TYPE_18__*) #1

declare dso_local i32 @dwarfget128s(%struct.TYPE_18__*) #1

declare dso_local i32 @dwarfgetaddr(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
