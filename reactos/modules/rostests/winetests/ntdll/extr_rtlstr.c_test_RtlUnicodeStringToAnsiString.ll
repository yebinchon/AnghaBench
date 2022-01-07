; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlUnicodeStringToAnsiString.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlUnicodeStringToAnsiString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i32, i64, i64, i64, i64, i64, i32, i32*, i32, i32, i32* }
%struct.TYPE_8__ = type { i64, i64, i8* }
%struct.TYPE_7__ = type { i32*, i32, i32 }

@NB_USTR2ASTR = common dso_local global i32 0, align 4
@ustr2astr = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [83 x i8] c"(test %d): RtlUnicodeStringToAnsiString(ansi, uni, %d) has result %x, expected %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"(test %d): RtlUnicodeStringToAnsiString(ansi, uni, %d) ansi has Length %d, expected %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [95 x i8] c"(test %d): RtlUnicodeStringToAnsiString(ansi, uni, %d) ansi has MaximumLength %d, expected %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [84 x i8] c"(test %d): RtlUnicodeStringToAnsiString(ansi, uni, %d) has ansi \22%s\22 expected \22%s\22\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlUnicodeStringToAnsiString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlUnicodeStringToAnsiString() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [257 x i8], align 16
  %3 = alloca [257 x i32], align 16
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %246, %0
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @NB_USTR2ASTR, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %249

12:                                               ; preds = %8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ustr2astr, align 8
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ustr2astr, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  store i64 %25, i64* %26, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ustr2astr, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 13
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %58

34:                                               ; preds = %12
  %35 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ustr2astr, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 13
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ustr2astr, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @memcpy(i8* %35, i32* %41, i64 %47)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ustr2astr, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 %54
  store i8 0, i8* %55, align 1
  %56 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  store i8* %56, i8** %57, align 8
  br label %60

58:                                               ; preds = %12
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  store i8* null, i8** %59, align 8
  br label %60

60:                                               ; preds = %58, %34
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ustr2astr, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 12
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  store i32 %66, i32* %67, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ustr2astr, align 8
  %69 = load i32, i32* %7, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 11
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store i32 %73, i32* %74, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ustr2astr, align 8
  %76 = load i32, i32* %7, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 10
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %112

82:                                               ; preds = %60
  store i64 0, i64* %1, align 8
  br label %83

83:                                               ; preds = %106, %82
  %84 = load i64, i64* %1, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ustr2astr, align 8
  %86 = load i32, i32* %7, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = udiv i64 %91, 4
  %93 = icmp ult i64 %84, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %83
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ustr2astr, align 8
  %96 = load i32, i32* %7, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 10
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %1, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i64, i64* %1, align 8
  %105 = getelementptr inbounds [257 x i32], [257 x i32]* %3, i64 0, i64 %104
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %94
  %107 = load i64, i64* %1, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %1, align 8
  br label %83

109:                                              ; preds = %83
  %110 = getelementptr inbounds [257 x i32], [257 x i32]* %3, i64 0, i64 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32* %110, i32** %111, align 8
  br label %114

112:                                              ; preds = %60
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32* null, i32** %113, align 8
  br label %114

114:                                              ; preds = %112, %109
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ustr2astr, align 8
  %116 = load i32, i32* %7, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 8
  %120 = load i64, i64* %119, align 8
  %121 = call i64 @pRtlUnicodeStringToAnsiString(%struct.TYPE_8__* %4, %struct.TYPE_7__* %5, i64 %120)
  store i64 %121, i64* %6, align 8
  %122 = load i64, i64* %6, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ustr2astr, align 8
  %124 = load i32, i32* %7, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %122, %128
  %130 = zext i1 %129 to i32
  %131 = load i32, i32* %7, align 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ustr2astr, align 8
  %133 = load i32, i32* %7, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 8
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %6, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ustr2astr, align 8
  %140 = load i32, i32* %7, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @ok(i32 %130, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %131, i64 %137, i64 %138, i64 %144)
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ustr2astr, align 8
  %149 = load i32, i32* %7, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = icmp eq i64 %147, %153
  %155 = zext i1 %154 to i32
  %156 = load i32, i32* %7, align 4
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ustr2astr, align 8
  %158 = load i32, i32* %7, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 8
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ustr2astr, align 8
  %166 = load i32, i32* %7, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 5
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @ok(i32 %155, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 %156, i64 %162, i64 %164, i64 %170)
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ustr2astr, align 8
  %175 = load i32, i32* %7, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 6
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %173, %179
  %181 = zext i1 %180 to i32
  %182 = load i32, i32* %7, align 4
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ustr2astr, align 8
  %184 = load i32, i32* %7, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 8
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ustr2astr, align 8
  %192 = load i32, i32* %7, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 6
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @ok(i32 %181, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.2, i64 0, i64 0), i32 %182, i64 %188, i64 %190, i64 %196)
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  %199 = load i8*, i8** %198, align 8
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ustr2astr, align 8
  %201 = load i32, i32* %7, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 7
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ustr2astr, align 8
  %207 = load i32, i32* %7, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 9
  %211 = load i32, i32* %210, align 8
  %212 = call i64 @memcmp(i8* %199, i64 %205, i32 %211)
  %213 = icmp eq i64 %212, 0
  %214 = zext i1 %213 to i32
  %215 = load i32, i32* %7, align 4
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ustr2astr, align 8
  %217 = load i32, i32* %7, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 8
  %221 = load i64, i64* %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  %223 = load i8*, i8** %222, align 8
  %224 = ptrtoint i8* %223 to i64
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ustr2astr, align 8
  %226 = load i32, i32* %7, align 4
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 7
  %230 = load i64, i64* %229, align 8
  %231 = call i32 @ok(i32 %214, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), i32 %215, i64 %221, i64 %224, i64 %230)
  %232 = load i64, i64* %6, align 8
  %233 = load i64, i64* @STATUS_SUCCESS, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %245

235:                                              ; preds = %114
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ustr2astr, align 8
  %237 = load i32, i32* %7, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 8
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %235
  %244 = call i32 @pRtlFreeAnsiString(%struct.TYPE_8__* %4)
  br label %245

245:                                              ; preds = %243, %235, %114
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %7, align 4
  %248 = add i32 %247, 1
  store i32 %248, i32* %7, align 4
  br label %8

249:                                              ; preds = %8
  ret void
}

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i64 @pRtlUnicodeStringToAnsiString(%struct.TYPE_8__*, %struct.TYPE_7__*, i64) #1

declare dso_local i32 @ok(i32, i8*, i32, i64, i64, i64) #1

declare dso_local i64 @memcmp(i8*, i64, i32) #1

declare dso_local i32 @pRtlFreeAnsiString(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
