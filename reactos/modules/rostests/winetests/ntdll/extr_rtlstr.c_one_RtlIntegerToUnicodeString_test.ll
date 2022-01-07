; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_one_RtlIntegerToUnicodeString_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_one_RtlIntegerToUnicodeString_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32, i32, i64, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i8* }
%struct.TYPE_11__ = type { i64 }

@STRI_BUFFER_LENGTH = common dso_local global i32 0, align 4
@STATUS_BUFFER_OVERFLOW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [81 x i8] c"(test %d): RtlIntegerToUnicodeString(%u, %d, [out]) has result %x, expected: %x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [88 x i8] c"(test %d): RtlIntegerToUnicodeString(%u, %d, [out]) string \22%s\22 is not NULL terminated\0A\00", align 1
@.str.2 = private unnamed_addr constant [89 x i8] c"(test %d): RtlIntegerToUnicodeString(%u, %d, [out]) assigns string \22%s\22, expected: \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [88 x i8] c"(test %d): RtlIntegerToUnicodeString(%u, %d, [out]) string has Length %d, expected: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [95 x i8] c"(test %d): RtlIntegerToUnicodeString(%u, %d, [out]) string has MaximumLength %d, expected: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_9__*)* @one_RtlIntegerToUnicodeString_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @one_RtlIntegerToUnicodeString_test(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca %struct.TYPE_11__, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca %struct.TYPE_11__, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %14 = load i32, i32* @STRI_BUFFER_LENGTH, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load i32, i32* @STRI_BUFFER_LENGTH, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %38, %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @STRI_BUFFER_LENGTH, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %18, i64 %36
  store i8 %34, i8* %37, align 1
  br label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %23

41:                                               ; preds = %23
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 1
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 1
  %54 = trunc i64 %53 to i32
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  store i8* %18, i8** %56, align 8
  %57 = call i32 @pRtlUnicodeStringToAnsiString(%struct.TYPE_11__* %9, %struct.TYPE_10__* %8, i32 1)
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %66, %41
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @STRI_BUFFER_LENGTH, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %22, i64 %64
  store i8 45, i8* %65, align 1
  br label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %58

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 1
  %76 = trunc i64 %75 to i32
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  store i8* %22, i8** %78, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @pRtlIntegerToUnicodeString(i32 %81, i32 %84, %struct.TYPE_10__* %11)
  store i64 %85, i64* %13, align 8
  %86 = call i32 @pRtlUnicodeStringToAnsiString(%struct.TYPE_11__* %12, %struct.TYPE_10__* %11, i32 1)
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* @STATUS_BUFFER_OVERFLOW, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %113

90:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %99, %90
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @STRI_BUFFER_LENGTH, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %18, i64 %97
  store i8 45, i8* %98, align 1
  br label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %5, align 4
  br label %91

102:                                              ; preds = %91
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp sgt i32 %104, 32
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32 0, i32* %111, align 8
  br label %112

112:                                              ; preds = %110, %106, %102
  br label %158

113:                                              ; preds = %69
  %114 = load i64, i64* %13, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %114, %117
  %119 = zext i1 %118 to i32
  %120 = load i32, i32* %3, align 4
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load i64, i64* %13, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = call i32 (i32, i8*, i32, i32, i32, i64, ...) @ok(i32 %119, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %120, i32 %123, i32 %126, i64 %127, i64 %130)
  %132 = load i64, i64* %13, align 8
  %133 = load i64, i64* @STATUS_SUCCESS, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %157

135:                                              ; preds = %113
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = udiv i64 %140, 1
  %142 = getelementptr inbounds i8, i8* %137, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 0
  %146 = zext i1 %145 to i32
  %147 = load i32, i32* %3, align 4
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i32 (i32, i8*, i32, i32, i32, i64, ...) @ok(i32 %146, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 %147, i32 %150, i32 %153, i64 %155)
  br label %157

157:                                              ; preds = %135, %113
  br label %158

158:                                              ; preds = %157, %112
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %160 = load i8*, i8** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  %162 = load i8*, i8** %161, align 8
  %163 = load i32, i32* @STRI_BUFFER_LENGTH, align 4
  %164 = sext i32 %163 to i64
  %165 = mul i64 %164, 1
  %166 = trunc i64 %165 to i32
  %167 = call i64 @memcmp(i8* %160, i8* %162, i32 %166)
  %168 = icmp eq i64 %167, 0
  %169 = zext i1 %168 to i32
  %170 = load i32, i32* %3, align 4
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = call i32 (i32, i8*, i32, i32, i32, i64, ...) @ok(i32 %169, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0), i32 %170, i32 %173, i32 %176, i64 %178, i64 %180)
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp eq i32 %183, %185
  %187 = zext i1 %186 to i32
  %188 = load i32, i32* %3, align 4
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 (i32, i8*, i32, i32, i32, i64, ...) @ok(i32 %187, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.3, i64 0, i64 0), i32 %188, i32 %191, i32 %194, i64 %197, i32 %199)
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp eq i32 %202, %204
  %206 = zext i1 %205 to i32
  %207 = load i32, i32* %3, align 4
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i32 (i32, i8*, i32, i32, i32, i64, ...) @ok(i32 %206, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.4, i64 0, i64 0), i32 %207, i32 %210, i32 %213, i64 %216, i32 %218)
  %220 = call i32 @pRtlFreeAnsiString(%struct.TYPE_11__* %9)
  %221 = call i32 @pRtlFreeAnsiString(%struct.TYPE_11__* %12)
  %222 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %222)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pRtlUnicodeStringToAnsiString(%struct.TYPE_11__*, %struct.TYPE_10__*, i32) #2

declare dso_local i64 @pRtlIntegerToUnicodeString(i32, i32, %struct.TYPE_10__*) #2

declare dso_local i32 @ok(i32, i8*, i32, i32, i32, i64, ...) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @pRtlFreeAnsiString(%struct.TYPE_11__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
