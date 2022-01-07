; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_handleswitch.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_handleswitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64 }

@argv = common dso_local global i64* null, align 8
@op = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"%sundefined option.\0A\00", align 1
@emsg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"%soption requires an argument.\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"%sillegal character in floating-point argument.\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"%sillegal character in integer argument.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @handleswitch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handleswitch(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store double 0.000000e+00, double* %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %11, align 4
  %12 = load i64*, i64** @argv, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = call i8* @strchr(i64 %16, i8 signext 61)
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i8*, i8** %9, align 8
  store i8 0, i8* %22, align 1
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %47, %2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @op, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %23
  %32 = load i64*, i64** @argv, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @op, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @strcmp(i64 %36, i64 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  br label %50

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %23

50:                                               ; preds = %45, %23
  %51 = load i8*, i8** %9, align 8
  store i8 61, i8* %51, align 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @op, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %50
  %60 = load i32*, i32** %4, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i32*, i32** %4, align 8
  %64 = load i8*, i8** @emsg, align 8
  %65 = call i32 @fprintf(i32* %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %64)
  %66 = load i32, i32* %3, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @errline(i32 %66, i32 0, i32* %67)
  br label %69

69:                                               ; preds = %62, %59
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %221

72:                                               ; preds = %50
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %9, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @op, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  switch i32 %80, label %158 [
    i32 131, label %81
    i32 133, label %81
    i32 135, label %94
    i32 134, label %94
    i32 129, label %125
    i32 132, label %125
    i32 128, label %156
    i32 130, label %156
  ]

81:                                               ; preds = %72, %72
  %82 = load i32*, i32** %4, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i32*, i32** %4, align 8
  %86 = load i8*, i8** @emsg, align 8
  %87 = call i32 @fprintf(i32* %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %86)
  %88 = load i32, i32* %3, align 4
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @errline(i32 %88, i32 0, i32* %89)
  br label %91

91:                                               ; preds = %84, %81
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %158

94:                                               ; preds = %72, %72
  %95 = load i8*, i8** %9, align 8
  %96 = call double @strtod(i8* %95, i8** %8)
  store double %96, double* %6, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = load i8, i8* %97, align 1
  %99 = icmp ne i8 %98, 0
  br i1 %99, label %100, label %124

100:                                              ; preds = %94
  %101 = load i32*, i32** %4, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %121

103:                                              ; preds = %100
  %104 = load i32*, i32** %4, align 8
  %105 = load i8*, i8** @emsg, align 8
  %106 = call i32 @fprintf(i32* %104, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %105)
  %107 = load i32, i32* %3, align 4
  %108 = load i8*, i8** %8, align 8
  %109 = load i64*, i64** @argv, align 8
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i8*
  %115 = ptrtoint i8* %108 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = trunc i64 %117 to i32
  %119 = load i32*, i32** %4, align 8
  %120 = call i32 @errline(i32 %107, i32 %118, i32* %119)
  br label %121

121:                                              ; preds = %103, %100
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %121, %94
  br label %158

125:                                              ; preds = %72, %72
  %126 = load i8*, i8** %9, align 8
  %127 = call i32 @strtol(i8* %126, i8** %8, i32 0)
  store i32 %127, i32* %5, align 4
  %128 = load i8*, i8** %8, align 8
  %129 = load i8, i8* %128, align 1
  %130 = icmp ne i8 %129, 0
  br i1 %130, label %131, label %155

131:                                              ; preds = %125
  %132 = load i32*, i32** %4, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %152

134:                                              ; preds = %131
  %135 = load i32*, i32** %4, align 8
  %136 = load i8*, i8** @emsg, align 8
  %137 = call i32 @fprintf(i32* %135, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %136)
  %138 = load i32, i32* %3, align 4
  %139 = load i8*, i8** %8, align 8
  %140 = load i64*, i64** @argv, align 8
  %141 = load i32, i32* %3, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %140, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = inttoptr i64 %144 to i8*
  %146 = ptrtoint i8* %139 to i64
  %147 = ptrtoint i8* %145 to i64
  %148 = sub i64 %146, %147
  %149 = trunc i64 %148 to i32
  %150 = load i32*, i32** %4, align 8
  %151 = call i32 @errline(i32 %138, i32 %149, i32* %150)
  br label %152

152:                                              ; preds = %134, %131
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %11, align 4
  br label %155

155:                                              ; preds = %152, %125
  br label %158

156:                                              ; preds = %72, %72
  %157 = load i8*, i8** %9, align 8
  store i8* %157, i8** %7, align 8
  br label %158

158:                                              ; preds = %72, %156, %155, %124, %91
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** @op, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  switch i32 %164, label %220 [
    i32 131, label %165
    i32 133, label %165
    i32 135, label %166
    i32 134, label %175
    i32 129, label %184
    i32 132, label %193
    i32 128, label %202
    i32 130, label %211
  ]

165:                                              ; preds = %158, %158
  br label %220

166:                                              ; preds = %158
  %167 = load double, double* %6, align 8
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** @op, align 8
  %169 = load i32, i32* %10, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = inttoptr i64 %173 to double*
  store double %167, double* %174, align 8
  br label %220

175:                                              ; preds = %158
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** @op, align 8
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = inttoptr i64 %181 to void (double)*
  %183 = load double, double* %6, align 8
  call void %182(double %183)
  br label %220

184:                                              ; preds = %158
  %185 = load i32, i32* %5, align 4
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** @op, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = inttoptr i64 %191 to i32*
  store i32 %185, i32* %192, align 4
  br label %220

193:                                              ; preds = %158
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** @op, align 8
  %195 = load i32, i32* %10, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = inttoptr i64 %199 to void (i32)*
  %201 = load i32, i32* %5, align 4
  call void %200(i32 %201)
  br label %220

202:                                              ; preds = %158
  %203 = load i8*, i8** %7, align 8
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** @op, align 8
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = inttoptr i64 %209 to i8**
  store i8* %203, i8** %210, align 8
  br label %220

211:                                              ; preds = %158
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** @op, align 8
  %213 = load i32, i32* %10, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = inttoptr i64 %217 to void (i8*)*
  %219 = load i8*, i8** %7, align 8
  call void %218(i8* %219)
  br label %220

220:                                              ; preds = %158, %211, %202, %193, %184, %175, %166, %165
  br label %221

221:                                              ; preds = %220, %69
  %222 = load i32, i32* %11, align 4
  ret i32 %222
}

declare dso_local i8* @strchr(i64, i8 signext) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcmp(i64, i64) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @errline(i32, i32, i32*) #1

declare dso_local double @strtod(i8*, i8**) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
