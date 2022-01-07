; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_large_int.c_one_RtlInt64ToUnicodeString_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_large_int.c_one_RtlInt64ToUnicodeString_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i32, i32, i8* }
%struct.TYPE_11__ = type { i32 }

@LARGE_STRI_BUFFER_LENGTH = common dso_local global i32 0, align 4
@STATUS_BUFFER_OVERFLOW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [81 x i8] c"(test %d): RtlInt64ToUnicodeString(0x%s, %d, [out]) has result %x, expected: %x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [88 x i8] c"(test %d): RtlInt64ToUnicodeString(0x%s, %d, [out]) string \22%s\22 is not NULL terminated\0A\00", align 1
@.str.2 = private unnamed_addr constant [93 x i8] c"(test %d): RtlInt64ToUnicodeString(0x%x%08x, %d, [out]) assigns string \22%s\22, expected: \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [88 x i8] c"(test %d): RtlInt64ToUnicodeString(0x%s, %d, [out]) string has Length %d, expected: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [95 x i8] c"(test %d): RtlInt64ToUnicodeString(0x%s, %d, [out]) string has MaximumLength %d, expected: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_9__*)* @one_RtlInt64ToUnicodeString_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @one_RtlInt64ToUnicodeString_test(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca %struct.TYPE_11__, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca %struct.TYPE_11__, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %14 = load i32, i32* @LARGE_STRI_BUFFER_LENGTH, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load i32, i32* @LARGE_STRI_BUFFER_LENGTH, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %38, %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @LARGE_STRI_BUFFER_LENGTH, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
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
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 1
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 3
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
  %60 = load i32, i32* @LARGE_STRI_BUFFER_LENGTH, align 4
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
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 1
  %76 = trunc i64 %75 to i32
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  store i8* %22, i8** %78, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %69
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @pRtlInt64ToUnicodeString(i32 %86, i32 10, %struct.TYPE_10__* %11)
  store i64 %87, i64* %13, align 8
  br label %96

88:                                               ; preds = %69
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @pRtlInt64ToUnicodeString(i32 %91, i32 %94, %struct.TYPE_10__* %11)
  store i64 %95, i64* %13, align 8
  br label %96

96:                                               ; preds = %88, %83
  %97 = call i32 @pRtlUnicodeStringToAnsiString(%struct.TYPE_11__* %12, %struct.TYPE_10__* %11, i32 1)
  %98 = load i64, i64* %13, align 8
  %99 = load i64, i64* @STATUS_BUFFER_OVERFLOW, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %96
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %110, %101
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @LARGE_STRI_BUFFER_LENGTH, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %102
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %18, i64 %108
  store i8 45, i8* %109, align 1
  br label %110

110:                                              ; preds = %106
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %102

113:                                              ; preds = %102
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp sge i32 %115, 64
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32 %119, i32* %120, align 8
  br label %121

121:                                              ; preds = %117, %113
  br label %170

122:                                              ; preds = %96
  %123 = load i64, i64* %13, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %123, %126
  %128 = zext i1 %127 to i32
  %129 = load i32, i32* %3, align 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @wine_dbgstr_longlong(i32 %132)
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load i64, i64* %13, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  %141 = call i32 (i32, i8*, i32, i32, i32, i64, ...) @ok(i32 %128, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %129, i32 %133, i32 %136, i64 %137, i64 %140)
  %142 = load i64, i64* %13, align 8
  %143 = load i64, i64* @STATUS_SUCCESS, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %169

145:                                              ; preds = %122
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = udiv i64 %150, 1
  %152 = getelementptr inbounds i8, i8* %147, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 0
  %156 = zext i1 %155 to i32
  %157 = load i32, i32* %3, align 4
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @wine_dbgstr_longlong(i32 %160)
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = call i32 (i32, i8*, i32, i32, i32, i64, ...) @ok(i32 %156, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 %157, i32 %161, i32 %164, i64 %167)
  br label %169

169:                                              ; preds = %145, %122
  br label %170

170:                                              ; preds = %169, %121
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %172 = load i8*, i8** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  %174 = load i8*, i8** %173, align 8
  %175 = load i32, i32* @LARGE_STRI_BUFFER_LENGTH, align 4
  %176 = sext i32 %175 to i64
  %177 = mul i64 %176, 1
  %178 = trunc i64 %177 to i32
  %179 = call i64 @memcmp(i8* %172, i8* %174, i32 %178)
  %180 = icmp eq i64 %179, 0
  %181 = zext i1 %180 to i32
  %182 = load i32, i32* %3, align 4
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = ashr i32 %185, 32
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 (i32, i8*, i32, i32, i32, i64, ...) @ok(i32 %181, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.2, i64 0, i64 0), i32 %182, i32 %186, i32 %189, i64 %193, i32 %195, i32 %197)
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp eq i32 %200, %202
  %204 = zext i1 %203 to i32
  %205 = load i32, i32* %3, align 4
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @wine_dbgstr_longlong(i32 %208)
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 (i32, i8*, i32, i32, i32, i64, ...) @ok(i32 %204, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.3, i64 0, i64 0), i32 %205, i32 %209, i32 %212, i64 %215, i32 %217)
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = icmp eq i32 %220, %222
  %224 = zext i1 %223 to i32
  %225 = load i32, i32* %3, align 4
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @wine_dbgstr_longlong(i32 %228)
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = call i32 (i32, i8*, i32, i32, i32, i64, ...) @ok(i32 %224, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.4, i64 0, i64 0), i32 %225, i32 %229, i32 %232, i64 %235, i32 %237)
  %239 = call i32 @pRtlFreeAnsiString(%struct.TYPE_11__* %9)
  %240 = call i32 @pRtlFreeAnsiString(%struct.TYPE_11__* %12)
  %241 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %241)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pRtlUnicodeStringToAnsiString(%struct.TYPE_11__*, %struct.TYPE_10__*, i32) #2

declare dso_local i64 @pRtlInt64ToUnicodeString(i32, i32, %struct.TYPE_10__*) #2

declare dso_local i32 @ok(i32, i8*, i32, i32, i32, i64, ...) #2

declare dso_local i32 @wine_dbgstr_longlong(i32) #2

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
