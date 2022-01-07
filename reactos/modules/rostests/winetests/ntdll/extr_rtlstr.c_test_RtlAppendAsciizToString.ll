; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlAppendAsciizToString.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlAppendAsciizToString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64, i64, i32, i32, i32* }
%struct.TYPE_4__ = type { i64, i64, i8* }

@NB_APP_ASC2STR = common dso_local global i32 0, align 4
@app_asc2str = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [74 x i8] c"(test %d): RtlAppendAsciizToString(dest, src) has result %x, expected %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"(test %d): RtlAppendAsciizToString(dest, src) dest has Length %d, expected %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [86 x i8] c"(test %d): RtlAppendAsciizToString(dest, src) dest has MaximumLength %d, expected %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"(test %d): RtlAppendAsciizToString(dest, src) has dest \22%s\22 expected \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [78 x i8] c"(test %d): RtlAppendAsciizToString(dest, src) dest has Buffer %p expected %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlAppendAsciizToString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlAppendAsciizToString() #0 {
  %1 = alloca [257 x i8], align 16
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %179, %0
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @NB_APP_ASC2STR, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %182

9:                                                ; preds = %5
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_asc2str, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_asc2str, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i64 %22, i64* %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_asc2str, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 9
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %55

31:                                               ; preds = %9
  %32 = getelementptr inbounds [257 x i8], [257 x i8]* %1, i64 0, i64 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_asc2str, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 9
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_asc2str, align 8
  %40 = load i32, i32* %4, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @memcpy(i8* %32, i32* %38, i64 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_asc2str, align 8
  %47 = load i32, i32* %4, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds [257 x i8], [257 x i8]* %1, i64 0, i64 %51
  store i8 0, i8* %52, align 1
  %53 = getelementptr inbounds [257 x i8], [257 x i8]* %1, i64 0, i64 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i8* %53, i8** %54, align 8
  br label %57

55:                                               ; preds = %9
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i8* null, i8** %56, align 8
  br label %57

57:                                               ; preds = %55, %31
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_asc2str, align 8
  %59 = load i32, i32* %4, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @pRtlAppendAsciizToString(%struct.TYPE_4__* %2, i32 %63)
  store i64 %64, i64* %3, align 8
  %65 = load i64, i64* %3, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_asc2str, align 8
  %67 = load i32, i32* %4, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %65, %71
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %4, align 4
  %75 = load i64, i64* %3, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_asc2str, align 8
  %78 = load i32, i32* %4, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %74, i8* %76, i64 %82)
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_asc2str, align 8
  %87 = load i32, i32* %4, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %85, %91
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %4, align 4
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_asc2str, align 8
  %99 = load i32, i32* %4, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @ok(i32 %93, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %94, i8* %97, i64 %103)
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_asc2str, align 8
  %108 = load i32, i32* %4, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %106, %112
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %4, align 4
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to i8*
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_asc2str, align 8
  %120 = load i32, i32* %4, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @ok(i32 %114, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0), i32 %115, i8* %118, i64 %124)
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds [257 x i8], [257 x i8]* %1, i64 0, i64 0
  %129 = icmp eq i8* %127, %128
  br i1 %129, label %130, label %156

130:                                              ; preds = %57
  %131 = getelementptr inbounds [257 x i8], [257 x i8]* %1, i64 0, i64 0
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_asc2str, align 8
  %133 = load i32, i32* %4, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 6
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_asc2str, align 8
  %139 = load i32, i32* %4, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 7
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @memcmp(i8* %131, i64 %137, i32 %143)
  %145 = icmp eq i64 %144, 0
  %146 = zext i1 %145 to i32
  %147 = load i32, i32* %4, align 4
  %148 = getelementptr inbounds [257 x i8], [257 x i8]* %1, i64 0, i64 0
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_asc2str, align 8
  %150 = load i32, i32* %4, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 6
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @ok(i32 %146, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32 %147, i8* %148, i64 %154)
  br label %178

156:                                              ; preds = %57
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_asc2str, align 8
  %160 = load i32, i32* %4, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 6
  %164 = load i64, i64* %163, align 8
  %165 = inttoptr i64 %164 to i8*
  %166 = icmp eq i8* %158, %165
  %167 = zext i1 %166 to i32
  %168 = load i32, i32* %4, align 4
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** @app_asc2str, align 8
  %172 = load i32, i32* %4, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 6
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @ok(i32 %167, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0), i32 %168, i8* %170, i64 %176)
  br label %178

178:                                              ; preds = %156, %130
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %4, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %4, align 4
  br label %5

182:                                              ; preds = %5
  ret void
}

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i64 @pRtlAppendAsciizToString(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i8*, i64) #1

declare dso_local i64 @memcmp(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
