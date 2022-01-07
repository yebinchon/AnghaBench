; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlAppendUnicodeToString.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlAppendUnicodeToString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i64, i64, i64, i64, i32, i64, i32* }
%struct.TYPE_4__ = type { i64, i64, i8* }

@NB_APP_UNI2STR = common dso_local global i32 0, align 4
@app_uni2str = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [75 x i8] c"(test %d): RtlAppendUnicodeToString(dest, src) has result %x, expected %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"(test %d): RtlAppendUnicodeToString(dest, src) dest has Length %d, expected %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [87 x i8] c"(test %d): RtlAppendUnicodeToString(dest, src) dest has MaximumLength %d, expected %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"(test %d): RtlAppendUnicodeToString(dest, src) has dest \22%s\22 expected \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [79 x i8] c"(test %d): RtlAppendUnicodeToString(dest, src) dest has Buffer %p expected %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlAppendUnicodeToString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlAppendUnicodeToString() #0 {
  %1 = alloca [257 x i8], align 16
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %182, %0
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @NB_APP_UNI2STR, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %185

9:                                                ; preds = %5
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_uni2str, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_uni2str, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i64 %22, i64* %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_uni2str, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 9
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %57

31:                                               ; preds = %9
  %32 = getelementptr inbounds [257 x i8], [257 x i8]* %1, i64 0, i64 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_uni2str, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 9
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_uni2str, align 8
  %40 = load i32, i32* %4, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @memcpy(i8* %32, i32* %38, i32 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_uni2str, align 8
  %47 = load i32, i32* %4, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = udiv i64 %52, 1
  %54 = getelementptr inbounds [257 x i8], [257 x i8]* %1, i64 0, i64 %53
  store i8 0, i8* %54, align 1
  %55 = getelementptr inbounds [257 x i8], [257 x i8]* %1, i64 0, i64 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i8* %55, i8** %56, align 8
  br label %59

57:                                               ; preds = %9
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i8* null, i8** %58, align 8
  br label %59

59:                                               ; preds = %57, %31
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_uni2str, align 8
  %61 = load i32, i32* %4, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 8
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i64 @pRtlAppendUnicodeToString(%struct.TYPE_4__* %2, i32 %66)
  store i64 %67, i64* %3, align 8
  %68 = load i64, i64* %3, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_uni2str, align 8
  %70 = load i32, i32* %4, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %68, %74
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %4, align 4
  %78 = load i64, i64* %3, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_uni2str, align 8
  %81 = load i32, i32* %4, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %77, i8* %79, i64 %85)
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_uni2str, align 8
  %90 = load i32, i32* %4, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %88, %94
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* %4, align 4
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i8*
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_uni2str, align 8
  %102 = load i32, i32* %4, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @ok(i32 %96, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %97, i8* %100, i64 %106)
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_uni2str, align 8
  %111 = load i32, i32* %4, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %109, %115
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %4, align 4
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = inttoptr i64 %120 to i8*
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_uni2str, align 8
  %123 = load i32, i32* %4, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 5
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @ok(i32 %117, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0), i32 %118, i8* %121, i64 %127)
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds [257 x i8], [257 x i8]* %1, i64 0, i64 0
  %132 = icmp eq i8* %130, %131
  br i1 %132, label %133, label %159

133:                                              ; preds = %59
  %134 = getelementptr inbounds [257 x i8], [257 x i8]* %1, i64 0, i64 0
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_uni2str, align 8
  %136 = load i32, i32* %4, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 6
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_uni2str, align 8
  %142 = load i32, i32* %4, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 8
  %147 = call i64 @memcmp(i8* %134, i64 %140, i32 %146)
  %148 = icmp eq i64 %147, 0
  %149 = zext i1 %148 to i32
  %150 = load i32, i32* %4, align 4
  %151 = getelementptr inbounds [257 x i8], [257 x i8]* %1, i64 0, i64 0
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_uni2str, align 8
  %153 = load i32, i32* %4, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 6
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @ok(i32 %149, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i32 %150, i8* %151, i64 %157)
  br label %181

159:                                              ; preds = %59
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_uni2str, align 8
  %163 = load i32, i32* %4, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 6
  %167 = load i64, i64* %166, align 8
  %168 = inttoptr i64 %167 to i8*
  %169 = icmp eq i8* %161, %168
  %170 = zext i1 %169 to i32
  %171 = load i32, i32* %4, align 4
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %173 = load i8*, i8** %172, align 8
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_uni2str, align 8
  %175 = load i32, i32* %4, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 6
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @ok(i32 %170, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i32 %171, i8* %173, i64 %179)
  br label %181

181:                                              ; preds = %159, %133
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %4, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %4, align 4
  br label %5

185:                                              ; preds = %5
  ret void
}

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i64 @pRtlAppendUnicodeToString(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i8*, i64) #1

declare dso_local i64 @memcmp(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
