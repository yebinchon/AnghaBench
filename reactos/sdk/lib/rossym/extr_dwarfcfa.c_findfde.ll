; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rossym/extr_dwarfcfa.c_findfde.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rossym/extr_dwarfcfa.c_findfde.c"
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
@.str.2 = private unnamed_addr constant [37 x i8] c"unknown cie version %d (wanted 1-3)\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"unknown augmentation: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"return address is register %d but only have %d registers\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"cannot find call frame information for pc 0x%lux\00", align 1
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
  br label %216

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

54:                                               ; preds = %210, %53
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ult i32* %56, %58
  br i1 %59, label %60, label %213

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
  br label %216

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
  br i1 %109, label %110, label %180

110:                                              ; preds = %101
  %111 = call i32 @dwarfget1(%struct.TYPE_18__* %18)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 1
  br i1 %113, label %114, label %128

114:                                              ; preds = %110
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 2
  br i1 %116, label %117, label %128

117:                                              ; preds = %114
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 3
  br i1 %119, label %120, label %128

120:                                              ; preds = %117
  %121 = load i32, i32* @findfde.nbad, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* @findfde.nbad, align 4
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load i32, i32* %13, align 4
  %126 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %124, %120
  br label %210

128:                                              ; preds = %117, %114, %110
  %129 = call i8* @dwarfgetstring(%struct.TYPE_18__* %18)
  store i8* %129, i8** %10, align 8
  %130 = load i8*, i8** %10, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %145

132:                                              ; preds = %128
  %133 = load i8*, i8** %10, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %132
  %138 = load i32, i32* @findfde.nbad, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* @findfde.nbad, align 4
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i8*, i8** %10, align 8
  %143 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %142)
  br label %144

144:                                              ; preds = %141, %137
  br label %210

145:                                              ; preds = %132, %128
  %146 = call i8* @dwarfget128(%struct.TYPE_18__* %18)
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 6
  store i8* %146, i8** %148, align 8
  %149 = call i32 @dwarfget128s(%struct.TYPE_18__* %18)
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 5
  store i32 %149, i32* %151, align 8
  %152 = call i8* @dwarfget128(%struct.TYPE_18__* %18)
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 4
  store i8* %152, i8** %154, align 8
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 4
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 3
  %160 = load i8*, i8** %159, align 8
  %161 = icmp ugt i8* %157, %160
  br i1 %161, label %162, label %170

162:                                              ; preds = %145
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 4
  %165 = load i8*, i8** %164, align 8
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 3
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i8* %165, i8* %168)
  store i32 -1, i32* %5, align 4
  br label %216

170:                                              ; preds = %145
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 1
  store i32* %172, i32** %175, align 8
  %176 = load i32*, i32** %11, align 8
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 0
  store i32* %176, i32** %179, align 8
  br label %209

180:                                              ; preds = %101
  %181 = call i32 @dwarfgetaddr(%struct.TYPE_18__* %18)
  store i32 %181, i32* %16, align 4
  %182 = call i32 @dwarfgetaddr(%struct.TYPE_18__* %18)
  store i32 %182, i32* %17, align 4
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 2
  store i32* %184, i32** %186, align 8
  %187 = load i32*, i32** %11, align 8
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 1
  store i32* %187, i32** %189, align 8
  %190 = load i32, i32* %16, align 4
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  %193 = load i32, i32* %16, align 4
  %194 = load i32, i32* %17, align 4
  %195 = add nsw i32 %193, %194
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* %16, align 4
  %199 = load i32, i32* %7, align 4
  %200 = icmp sle i32 %198, %199
  br i1 %200, label %201, label %208

201:                                              ; preds = %180
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* %16, align 4
  %204 = load i32, i32* %17, align 4
  %205 = add nsw i32 %203, %204
  %206 = icmp slt i32 %202, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %201
  store i32 0, i32* %5, align 4
  br label %216

208:                                              ; preds = %201, %180
  br label %209

209:                                              ; preds = %208, %170
  br label %210

210:                                              ; preds = %209, %144, %127
  %211 = load i32*, i32** %11, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  store i32* %211, i32** %212, align 8
  br label %54

213:                                              ; preds = %54
  %214 = load i32, i32* %7, align 4
  %215 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %214)
  store i32 -1, i32* %5, align 4
  br label %216

216:                                              ; preds = %213, %207, %162, %99, %25
  %217 = load i32, i32* %5, align 4
  ret i32 %217
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
