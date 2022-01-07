; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_gamma-quartz.c_quartz_start.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_gamma-quartz.c_quartz_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { float*, i32, i32 }

@kCGErrorSuccess = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Gamma ramp size too small: %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Unable to save current gamma ramp.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @quartz_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quartz_start(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %15 = call i64 @CGGetOnlineDisplayList(i32 0, i32* null, i32* %5)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @kCGErrorSuccess, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %207

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 4, %25
  %27 = trunc i64 %26 to i32
  %28 = call i8* @malloc(i32 %27)
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %207

34:                                               ; preds = %20
  %35 = load i32, i32* %5, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = call i64 @CGGetOnlineDisplayList(i32 %35, i32* %36, i32* %5)
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @kCGErrorSuccess, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @free(i32* %42)
  store i32 -1, i32* %2, align 4
  br label %207

44:                                               ; preds = %34
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = call i8* @malloc(i32 %48)
  %50 = bitcast i8* %49 to %struct.TYPE_4__*
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = icmp eq %struct.TYPE_4__* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %44
  %58 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @free(i32* %59)
  store i32 -1, i32* %2, align 4
  br label %207

61:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %86, %61
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %89

66:                                               ; preds = %62
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store i32 %71, i32* %78, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store float* null, float** %85, align 8
  br label %86

86:                                               ; preds = %66
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %62

89:                                               ; preds = %62
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @free(i32* %90)
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %203, %89
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %206

96:                                               ; preds = %92
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @CGDisplayGammaTableCapacity(i32 %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %96
  %110 = load i32, i32* @stderr, align 4
  %111 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @fprintf(i32 %110, i8* %111, i32 %112)
  store i32 -1, i32* %2, align 4
  br label %207

114:                                              ; preds = %96
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  store i32 %115, i32* %122, align 8
  %123 = load i32, i32* %10, align 4
  %124 = mul nsw i32 3, %123
  %125 = sext i32 %124 to i64
  %126 = mul i64 %125, 4
  %127 = trunc i64 %126 to i32
  %128 = call i8* @malloc(i32 %127)
  %129 = bitcast i8* %128 to float*
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  store float* %129, float** %136, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load float*, float** %143, align 8
  %145 = icmp eq float* %144, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %114
  %147 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %207

148:                                              ; preds = %114
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load float*, float** %155, align 8
  %157 = load i32, i32* %10, align 4
  %158 = mul nsw i32 0, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds float, float* %156, i64 %159
  store float* %160, float** %11, align 8
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load float*, float** %167, align 8
  %169 = load i32, i32* %10, align 4
  %170 = mul nsw i32 1, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds float, float* %168, i64 %171
  store float* %172, float** %12, align 8
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load float*, float** %179, align 8
  %181 = load i32, i32* %10, align 4
  %182 = mul nsw i32 2, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds float, float* %180, i64 %183
  store float* %184, float** %13, align 8
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* %10, align 4
  %187 = load float*, float** %11, align 8
  %188 = load float*, float** %12, align 8
  %189 = load float*, float** %13, align 8
  %190 = call i64 @CGGetDisplayTransferByTable(i32 %185, i32 %186, float* %187, float* %188, float* %189, i32* %14)
  store i64 %190, i64* %4, align 8
  %191 = load i64, i64* %4, align 8
  %192 = load i64, i64* @kCGErrorSuccess, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %198, label %194

194:                                              ; preds = %148
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %194, %148
  %199 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %200 = load i32, i32* @stderr, align 4
  %201 = call i32 @fputs(i8* %199, i32 %200)
  store i32 -1, i32* %2, align 4
  br label %207

202:                                              ; preds = %194
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %8, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %8, align 4
  br label %92

206:                                              ; preds = %92
  store i32 0, i32* %2, align 4
  br label %207

207:                                              ; preds = %206, %198, %146, %109, %57, %41, %32, %19
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local i64 @CGGetOnlineDisplayList(i32, i32*, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @CGDisplayGammaTableCapacity(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @CGGetDisplayTransferByTable(i32, i32, float*, float*, float*, i32*) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
