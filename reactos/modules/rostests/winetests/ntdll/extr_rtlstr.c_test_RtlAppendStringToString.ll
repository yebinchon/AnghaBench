; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlAppendStringToString.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlAppendStringToString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32*, i32* }
%struct.TYPE_5__ = type { i64, i64, i8* }

@NB_APP_STR2STR = common dso_local global i32 0, align 4
@app_str2str = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [74 x i8] c"(test %d): RtlAppendStringToString(dest, src) has result %x, expected %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"(test %d): RtlAppendStringToString(dest, src) dest has Length %d, expected %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [86 x i8] c"(test %d): RtlAppendStringToString(dest, src) dest has MaximumLength %d, expected %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"(test %d): RtlAppendStringToString(dest, src) has dest \22%s\22 expected \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [78 x i8] c"(test %d): RtlAppendStringToString(dest, src) dest has Buffer %p expected %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlAppendStringToString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlAppendStringToString() #0 {
  %1 = alloca [257 x i8], align 16
  %2 = alloca [257 x i8], align 16
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %223, %0
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @NB_APP_STR2STR, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %226

11:                                               ; preds = %7
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_str2str, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_str2str, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i64 %24, i64* %25, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_str2str, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 12
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %57

33:                                               ; preds = %11
  %34 = getelementptr inbounds [257 x i8], [257 x i8]* %1, i64 0, i64 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_str2str, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 12
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_str2str, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @memcpy(i8* %34, i32* %40, i64 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_str2str, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds [257 x i8], [257 x i8]* %1, i64 0, i64 %53
  store i8 0, i8* %54, align 1
  %55 = getelementptr inbounds [257 x i8], [257 x i8]* %1, i64 0, i64 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  store i8* %55, i8** %56, align 8
  br label %59

57:                                               ; preds = %11
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  store i8* null, i8** %58, align 8
  br label %59

59:                                               ; preds = %57, %33
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_str2str, align 8
  %61 = load i32, i32* %6, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i64 %65, i64* %66, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_str2str, align 8
  %68 = load i32, i32* %6, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i64 %72, i64* %73, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_str2str, align 8
  %75 = load i32, i32* %6, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 11
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %105

81:                                               ; preds = %59
  %82 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_str2str, align 8
  %84 = load i32, i32* %6, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 11
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_str2str, align 8
  %90 = load i32, i32* %6, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @memcpy(i8* %82, i32* %88, i64 %94)
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_str2str, align 8
  %97 = load i32, i32* %6, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 %101
  store i8 0, i8* %102, align 1
  %103 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  store i8* %103, i8** %104, align 8
  br label %107

105:                                              ; preds = %59
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  store i8* null, i8** %106, align 8
  br label %107

107:                                              ; preds = %105, %81
  %108 = call i64 @pRtlAppendStringToString(%struct.TYPE_5__* %3, %struct.TYPE_5__* %4)
  store i64 %108, i64* %5, align 8
  %109 = load i64, i64* %5, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_str2str, align 8
  %111 = load i32, i32* %6, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 6
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %109, %115
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %6, align 4
  %119 = load i64, i64* %5, align 8
  %120 = inttoptr i64 %119 to i8*
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_str2str, align 8
  %122 = load i32, i32* %6, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 6
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @ok(i32 %117, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %118, i8* %120, i64 %126)
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_str2str, align 8
  %131 = load i32, i32* %6, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 7
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %129, %135
  %137 = zext i1 %136 to i32
  %138 = load i32, i32* %6, align 4
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = inttoptr i64 %140 to i8*
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_str2str, align 8
  %143 = load i32, i32* %6, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 7
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @ok(i32 %137, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %138, i8* %141, i64 %147)
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_str2str, align 8
  %152 = load i32, i32* %6, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 8
  %156 = load i64, i64* %155, align 8
  %157 = icmp eq i64 %150, %156
  %158 = zext i1 %157 to i32
  %159 = load i32, i32* %6, align 4
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = inttoptr i64 %161 to i8*
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_str2str, align 8
  %164 = load i32, i32* %6, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 8
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @ok(i32 %158, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0), i32 %159, i8* %162, i64 %168)
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  %171 = load i8*, i8** %170, align 8
  %172 = getelementptr inbounds [257 x i8], [257 x i8]* %1, i64 0, i64 0
  %173 = icmp eq i8* %171, %172
  br i1 %173, label %174, label %200

174:                                              ; preds = %107
  %175 = getelementptr inbounds [257 x i8], [257 x i8]* %1, i64 0, i64 0
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_str2str, align 8
  %177 = load i32, i32* %6, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 9
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_str2str, align 8
  %183 = load i32, i32* %6, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 10
  %187 = load i32, i32* %186, align 8
  %188 = call i64 @memcmp(i8* %175, i64 %181, i32 %187)
  %189 = icmp eq i64 %188, 0
  %190 = zext i1 %189 to i32
  %191 = load i32, i32* %6, align 4
  %192 = getelementptr inbounds [257 x i8], [257 x i8]* %1, i64 0, i64 0
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_str2str, align 8
  %194 = load i32, i32* %6, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 9
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @ok(i32 %190, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32 %191, i8* %192, i64 %198)
  br label %222

200:                                              ; preds = %107
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  %202 = load i8*, i8** %201, align 8
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_str2str, align 8
  %204 = load i32, i32* %6, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 9
  %208 = load i64, i64* %207, align 8
  %209 = inttoptr i64 %208 to i8*
  %210 = icmp eq i8* %202, %209
  %211 = zext i1 %210 to i32
  %212 = load i32, i32* %6, align 4
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  %214 = load i8*, i8** %213, align 8
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_str2str, align 8
  %216 = load i32, i32* %6, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 9
  %220 = load i64, i64* %219, align 8
  %221 = call i32 @ok(i32 %211, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0), i32 %212, i8* %214, i64 %220)
  br label %222

222:                                              ; preds = %200, %174
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %6, align 4
  %225 = add i32 %224, 1
  store i32 %225, i32* %6, align 4
  br label %7

226:                                              ; preds = %7
  ret void
}

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i64 @pRtlAppendStringToString(%struct.TYPE_5__*, %struct.TYPE_5__*) #1

declare dso_local i32 @ok(i32, i8*, i32, i8*, i64) #1

declare dso_local i64 @memcmp(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
