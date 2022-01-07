; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlAppendUnicodeStringToString.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlAppendUnicodeStringToString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i64, i64, i32, i64, i64, i64, i64, i32, i32*, i32* }
%struct.TYPE_5__ = type { i64, i64, i8* }

@NB_APP_USTR2STR = common dso_local global i32 0, align 4
@app_ustr2str = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [74 x i8] c"(test %d): RtlAppendStringToString(dest, src) has result %x, expected %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"(test %d): RtlAppendStringToString(dest, src) dest has Length %d, expected %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [86 x i8] c"(test %d): RtlAppendStringToString(dest, src) dest has MaximumLength %d, expected %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"(test %d): RtlAppendStringToString(dest, src) has dest \22%s\22 expected \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [78 x i8] c"(test %d): RtlAppendStringToString(dest, src) dest has Buffer %p expected %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlAppendUnicodeStringToString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlAppendUnicodeStringToString() #0 {
  %1 = alloca [257 x i8], align 16
  %2 = alloca [257 x i8], align 16
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %227, %0
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @NB_APP_USTR2STR, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %230

11:                                               ; preds = %7
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_ustr2str, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_ustr2str, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i64 %24, i64* %25, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_ustr2str, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 12
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %59

33:                                               ; preds = %11
  %34 = getelementptr inbounds [257 x i8], [257 x i8]* %1, i64 0, i64 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_ustr2str, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 12
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_ustr2str, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @memcpy(i8* %34, i32* %40, i32 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_ustr2str, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = udiv i64 %54, 1
  %56 = getelementptr inbounds [257 x i8], [257 x i8]* %1, i64 0, i64 %55
  store i8 0, i8* %56, align 1
  %57 = getelementptr inbounds [257 x i8], [257 x i8]* %1, i64 0, i64 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  store i8* %57, i8** %58, align 8
  br label %61

59:                                               ; preds = %11
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  store i8* null, i8** %60, align 8
  br label %61

61:                                               ; preds = %59, %33
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_ustr2str, align 8
  %63 = load i32, i32* %6, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i64 %67, i64* %68, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_ustr2str, align 8
  %70 = load i32, i32* %6, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i64 %74, i64* %75, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_ustr2str, align 8
  %77 = load i32, i32* %6, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 11
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %109

83:                                               ; preds = %61
  %84 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_ustr2str, align 8
  %86 = load i32, i32* %6, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 11
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_ustr2str, align 8
  %92 = load i32, i32* %6, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @memcpy(i8* %84, i32* %90, i32 %96)
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_ustr2str, align 8
  %99 = load i32, i32* %6, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = udiv i64 %104, 1
  %106 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 %105
  store i8 0, i8* %106, align 1
  %107 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  store i8* %107, i8** %108, align 8
  br label %111

109:                                              ; preds = %61
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  store i8* null, i8** %110, align 8
  br label %111

111:                                              ; preds = %109, %83
  %112 = call i64 @pRtlAppendUnicodeStringToString(%struct.TYPE_5__* %3, %struct.TYPE_5__* %4)
  store i64 %112, i64* %5, align 8
  %113 = load i64, i64* %5, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_ustr2str, align 8
  %115 = load i32, i32* %6, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %113, %119
  %121 = zext i1 %120 to i32
  %122 = load i32, i32* %6, align 4
  %123 = load i64, i64* %5, align 8
  %124 = inttoptr i64 %123 to i8*
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_ustr2str, align 8
  %126 = load i32, i32* %6, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 6
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @ok(i32 %121, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %122, i8* %124, i64 %130)
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_ustr2str, align 8
  %135 = load i32, i32* %6, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 7
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %133, %139
  %141 = zext i1 %140 to i32
  %142 = load i32, i32* %6, align 4
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = inttoptr i64 %144 to i8*
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_ustr2str, align 8
  %147 = load i32, i32* %6, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 7
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @ok(i32 %141, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %142, i8* %145, i64 %151)
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_ustr2str, align 8
  %156 = load i32, i32* %6, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 8
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %154, %160
  %162 = zext i1 %161 to i32
  %163 = load i32, i32* %6, align 4
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = inttoptr i64 %165 to i8*
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_ustr2str, align 8
  %168 = load i32, i32* %6, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 8
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @ok(i32 %162, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0), i32 %163, i8* %166, i64 %172)
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  %175 = load i8*, i8** %174, align 8
  %176 = getelementptr inbounds [257 x i8], [257 x i8]* %1, i64 0, i64 0
  %177 = icmp eq i8* %175, %176
  br i1 %177, label %178, label %204

178:                                              ; preds = %111
  %179 = getelementptr inbounds [257 x i8], [257 x i8]* %1, i64 0, i64 0
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_ustr2str, align 8
  %181 = load i32, i32* %6, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 9
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_ustr2str, align 8
  %187 = load i32, i32* %6, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 10
  %191 = load i32, i32* %190, align 8
  %192 = call i64 @memcmp(i8* %179, i64 %185, i32 %191)
  %193 = icmp eq i64 %192, 0
  %194 = zext i1 %193 to i32
  %195 = load i32, i32* %6, align 4
  %196 = getelementptr inbounds [257 x i8], [257 x i8]* %1, i64 0, i64 0
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_ustr2str, align 8
  %198 = load i32, i32* %6, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 9
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @ok(i32 %194, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32 %195, i8* %196, i64 %202)
  br label %226

204:                                              ; preds = %111
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  %206 = load i8*, i8** %205, align 8
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_ustr2str, align 8
  %208 = load i32, i32* %6, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 9
  %212 = load i64, i64* %211, align 8
  %213 = inttoptr i64 %212 to i8*
  %214 = icmp eq i8* %206, %213
  %215 = zext i1 %214 to i32
  %216 = load i32, i32* %6, align 4
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  %218 = load i8*, i8** %217, align 8
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** @app_ustr2str, align 8
  %220 = load i32, i32* %6, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 9
  %224 = load i64, i64* %223, align 8
  %225 = call i32 @ok(i32 %215, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0), i32 %216, i8* %218, i64 %224)
  br label %226

226:                                              ; preds = %204, %178
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %6, align 4
  %229 = add i32 %228, 1
  store i32 %229, i32* %6, align 4
  br label %7

230:                                              ; preds = %7
  ret void
}

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i64 @pRtlAppendUnicodeStringToString(%struct.TYPE_5__*, %struct.TYPE_5__*) #1

declare dso_local i32 @ok(i32, i8*, i32, i8*, i64) #1

declare dso_local i64 @memcmp(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
