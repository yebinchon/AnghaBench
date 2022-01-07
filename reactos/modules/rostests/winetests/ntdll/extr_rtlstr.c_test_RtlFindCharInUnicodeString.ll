; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlFindCharInUnicodeString.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlFindCharInUnicodeString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32*, i32*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32* }

@NB_FIND_CH_IN_USTR = common dso_local global i32 0, align 4
@find_ch_in_ustr = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [85 x i8] c"(test %d): RtlFindCharInUnicodeString(%d, %s, %s, [out]) has result %x, expected %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"(test %d): RtlFindCharInUnicodeString(%d, %s, %s, [out]) assigns %d to pos, expected %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlFindCharInUnicodeString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlFindCharInUnicodeString() #0 {
  %1 = alloca [257 x i32], align 16
  %2 = alloca [257 x i32], align 16
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %209, %0
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @NB_FIND_CH_IN_USTR, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %212

13:                                               ; preds = %9
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @find_ch_in_ustr, align 8
  %15 = load i32, i32* %8, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %67

21:                                               ; preds = %13
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @find_ch_in_ustr, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @strlen(i32* %27)
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = add i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %61, %21
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = udiv i64 %44, 4
  %46 = icmp ult i64 %41, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %39
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @find_ch_in_ustr, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [257 x i32], [257 x i32]* %1, i64 0, i64 %59
  store i32 %57, i32* %60, align 4
  br label %61

61:                                               ; preds = %47
  %62 = load i32, i32* %7, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %39

64:                                               ; preds = %39
  %65 = getelementptr inbounds [257 x i32], [257 x i32]* %1, i64 0, i64 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  store i32* %65, i32** %66, align 8
  br label %71

67:                                               ; preds = %13
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 0, i32* %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i32 0, i32* %69, align 4
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %67, %64
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @find_ch_in_ustr, align 8
  %73 = load i32, i32* %8, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %125

79:                                               ; preds = %71
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** @find_ch_in_ustr, align 8
  %81 = load i32, i32* %8, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @strlen(i32* %85)
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 4
  %89 = trunc i64 %88 to i32
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i32 %89, i32* %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = add i64 %93, 4
  %95 = trunc i64 %94 to i32
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i32 %95, i32* %96, align 4
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %119, %79
  %98 = load i32, i32* %7, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = udiv i64 %102, 4
  %104 = icmp ult i64 %99, %103
  br i1 %104, label %105, label %122

105:                                              ; preds = %97
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** @find_ch_in_ustr, align 8
  %107 = load i32, i32* %8, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %7, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds [257 x i32], [257 x i32]* %2, i64 0, i64 %117
  store i32 %115, i32* %118, align 4
  br label %119

119:                                              ; preds = %105
  %120 = load i32, i32* %7, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %97

122:                                              ; preds = %97
  %123 = getelementptr inbounds [257 x i32], [257 x i32]* %2, i64 0, i64 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  store i32* %123, i32** %124, align 8
  br label %129

125:                                              ; preds = %71
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i32 0, i32* %126, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i32 0, i32* %127, align 4
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  store i32* null, i32** %128, align 8
  br label %129

129:                                              ; preds = %125, %122
  store i64 12345, i64* %5, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** @find_ch_in_ustr, align 8
  %131 = load i32, i32* %8, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = call i64 @pRtlFindCharInUnicodeString(i32 %135, %struct.TYPE_5__* %3, %struct.TYPE_5__* %4, i64* %5)
  store i64 %136, i64* %6, align 8
  %137 = load i64, i64* %6, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** @find_ch_in_ustr, align 8
  %139 = load i32, i32* %8, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %137, %143
  %145 = zext i1 %144 to i32
  %146 = load i32, i32* %8, align 4
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** @find_ch_in_ustr, align 8
  %148 = load i32, i32* %8, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** @find_ch_in_ustr, align 8
  %154 = load i32, i32* %8, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** @find_ch_in_ustr, align 8
  %160 = load i32, i32* %8, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* %6, align 8
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** @find_ch_in_ustr, align 8
  %167 = load i32, i32* %8, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @ok(i32 %145, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %146, i32 %152, i32* %158, i32* %164, i64 %165, i64 %171)
  %173 = load i64, i64* %5, align 8
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** @find_ch_in_ustr, align 8
  %175 = load i32, i32* %8, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %173, %179
  %181 = zext i1 %180 to i32
  %182 = load i32, i32* %8, align 4
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** @find_ch_in_ustr, align 8
  %184 = load i32, i32* %8, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** @find_ch_in_ustr, align 8
  %190 = load i32, i32* %8, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 3
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** @find_ch_in_ustr, align 8
  %196 = load i32, i32* %8, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = load i64, i64* %5, align 8
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** @find_ch_in_ustr, align 8
  %203 = load i32, i32* %8, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @ok(i32 %181, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32 %182, i32 %188, i32* %194, i32* %200, i64 %201, i64 %207)
  br label %209

209:                                              ; preds = %129
  %210 = load i32, i32* %8, align 4
  %211 = add i32 %210, 1
  store i32 %211, i32* %8, align 4
  br label %9

212:                                              ; preds = %9
  ret void
}

declare dso_local i32 @strlen(i32*) #1

declare dso_local i64 @pRtlFindCharInUnicodeString(i32, %struct.TYPE_5__*, %struct.TYPE_5__*, i64*) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, i32*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
