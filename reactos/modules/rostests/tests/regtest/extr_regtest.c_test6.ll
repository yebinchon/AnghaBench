; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/regtest/extr_regtest.c_test6.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/regtest/extr_regtest.c_test6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Create target key\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"  Key: \\Registry\\Machine\\SOFTWARE\\Reactos\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 77, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 92, i32 83, i32 79, i32 70, i32 84, i32 87, i32 65, i32 82, i32 69, i32 92, i32 82, i32 101, i32 97, i32 99, i32 116, i32 111, i32 115, i32 0], align 4
@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@REG_OPTION_VOLATILE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"  NtCreateKey() called (Status %lx)\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Create target value\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"  Value: TestValue = 'Test String'\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i32] [i32 84, i32 101, i32 115, i32 116, i32 86, i32 97, i32 108, i32 117, i32 101, i32 0], align 4
@REG_SZ = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [11 x i32] [i32 84, i32 101, i32 115, i32 116, i32 83, i32 116, i32 114, i32 105, i32 110, i32 103, i32 0], align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"  NtSetValueKey() called (Status %lx)\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Close target key\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Create link key\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"  Key: \\Registry\\Machine\\SOFTWARE\\Test\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 77, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 92, i32 83, i32 79, i32 70, i32 84, i32 87, i32 65, i32 82, i32 69, i32 92, i32 84, i32 101, i32 115, i32 116, i32 0], align 4
@OBJ_OPENLINK = common dso_local global i32 0, align 4
@KEY_CREATE_LINK = common dso_local global i32 0, align 4
@REG_OPTION_CREATE_LINK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [19 x i8] c"Create link value\0A\00", align 1
@.str.14 = private unnamed_addr constant [67 x i8] c"  Value: SymbolicLinkValue = '\\Registry\\Machine\\SOFTWARE\\Reactos'\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i32] [i32 83, i32 121, i32 109, i32 98, i32 111, i32 108, i32 105, i32 99, i32 76, i32 105, i32 110, i32 107, i32 86, i32 97, i32 108, i32 117, i32 101, i32 0], align 4
@REG_LINK = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [42 x i8] c"Creating link value failed! Test failed!\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Close link key\0A\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"Open link key\0A\00", align 1
@OBJ_OPENIF = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [13 x i8] c"Query value\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"  Value: TestValue\0A\00", align 1
@KeyValueFullInformation = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [41 x i8] c"  NtQueryValueKey() called (Status %lx)\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [54 x i8] c"  Value: Type %d  DataLength %d NameLength %d  Name '\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%C\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"  Value '%S'\0A\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"Test successful!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test6() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [5 x %struct.TYPE_3__], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %3, i8* bitcast ([35 x i32]* @.str.2 to i8*))
  %12 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %13 = call i32 @InitializeObjectAttributes(i32* %2, i32* %3, i32 %12, i32* null, i32* null)
  %14 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %15 = load i32, i32* @REG_OPTION_VOLATILE, align 4
  %16 = call i64 @NtCreateKey(i32* %1, i32 %14, i32* %2, i32 0, i32* null, i32 %15, i32* null)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %17)
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @NT_SUCCESS(i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %0
  br label %166

23:                                               ; preds = %0
  %24 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %26 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %4, i8* bitcast ([10 x i32]* @.str.6 to i8*))
  %27 = load i32, i32* %1, align 4
  %28 = load i64, i64* @REG_SZ, align 8
  %29 = call i64 @NtSetValueKey(i32 %27, i32* %4, i32 0, i64 %28, i32 ptrtoint ([11 x i32]* @.str.7 to i32), i32 22)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i64 %30)
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @NT_SUCCESS(i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %23
  br label %166

36:                                               ; preds = %23
  %37 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %38 = load i32, i32* %1, align 4
  %39 = call i32 @NtClose(i32 %38)
  %40 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %41 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %42 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %3, i8* bitcast ([32 x i32]* @.str.12 to i8*))
  %43 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %44 = load i32, i32* @OBJ_OPENLINK, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @InitializeObjectAttributes(i32* %2, i32* %3, i32 %45, i32* null, i32* null)
  %47 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %48 = load i32, i32* @KEY_CREATE_LINK, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @REG_OPTION_VOLATILE, align 4
  %51 = load i32, i32* @REG_OPTION_CREATE_LINK, align 4
  %52 = or i32 %50, %51
  %53 = call i64 @NtCreateKey(i32* %1, i32 %49, i32* %2, i32 0, i32* null, i32 %52, i32* null)
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %54)
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @NT_SUCCESS(i64 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %36
  br label %166

60:                                               ; preds = %36
  %61 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %62 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.14, i64 0, i64 0))
  %63 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %4, i8* bitcast ([18 x i32]* @.str.15 to i8*))
  %64 = load i32, i32* %1, align 4
  %65 = load i64, i64* @REG_LINK, align 8
  %66 = call i64 @NtSetValueKey(i32 %64, i32* %4, i32 0, i64 %65, i32 ptrtoint ([35 x i32]* @.str.2 to i32), i32 68)
  store i64 %66, i64* %5, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i64 %67)
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @NT_SUCCESS(i64 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %60
  %73 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0))
  %74 = load i32, i32* %1, align 4
  %75 = call i32 @NtClose(i32 %74)
  br label %166

76:                                               ; preds = %60
  %77 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  %78 = load i32, i32* %1, align 4
  %79 = call i32 @NtClose(i32 %78)
  %80 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %81 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %82 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %3, i8* bitcast ([32 x i32]* @.str.12 to i8*))
  %83 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %84 = load i32, i32* @OBJ_OPENIF, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @InitializeObjectAttributes(i32* %2, i32* %3, i32 %85, i32* null, i32* null)
  %87 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %88 = load i32, i32* @REG_OPTION_VOLATILE, align 4
  %89 = call i64 @NtCreateKey(i32* %1, i32 %87, i32* %2, i32 0, i32* null, i32 %88, i32* null)
  store i64 %89, i64* %5, align 8
  %90 = load i64, i64* %5, align 8
  %91 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %90)
  %92 = load i64, i64* %5, align 8
  %93 = call i32 @NT_SUCCESS(i64 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %76
  br label %166

96:                                               ; preds = %76
  %97 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  %98 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  %99 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %4, i8* bitcast ([10 x i32]* @.str.6 to i8*))
  %100 = load i32, i32* %1, align 4
  %101 = load i32, i32* @KeyValueFullInformation, align 4
  %102 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %103 = call i64 @NtQueryValueKey(i32 %100, i32* %4, i32 %101, %struct.TYPE_3__* %102, i32 160, i32* %7)
  store i64 %103, i64* %5, align 8
  %104 = load i64, i64* %5, align 8
  %105 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i64 0, i64 0), i64 %104)
  %106 = load i64, i64* %5, align 8
  %107 = load i64, i64* @STATUS_SUCCESS, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %161

109:                                              ; preds = %96
  %110 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 16
  %113 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i64 0, i64 0), i64 %112, i32 %115, i32 %118)
  store i32 0, i32* %8, align 4
  br label %120

120:                                              ; preds = %138, %109
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = udiv i64 %126, 4
  %128 = icmp ult i64 %122, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %120
  %130 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 16
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %129
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %120

141:                                              ; preds = %120
  %142 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0))
  %143 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 16
  %146 = load i64, i64* @REG_SZ, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %160

148:                                              ; preds = %141
  %149 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 16
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = sdiv i32 %155, 2
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %152, i64 %157
  %159 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i32* %158)
  br label %160

160:                                              ; preds = %148, %141
  br label %161

161:                                              ; preds = %160, %96
  %162 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  %163 = load i32, i32* %1, align 4
  %164 = call i32 @NtClose(i32 %163)
  %165 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0))
  br label %166

166:                                              ; preds = %161, %95, %72, %59, %35, %22
  ret void
}

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i32 @RtlRosInitUnicodeStringFromLiteral(i32*, i8*) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i64 @NtCreateKey(i32*, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i64 @NtSetValueKey(i32, i32*, i32, i64, i32, i32) #1

declare dso_local i32 @NtClose(i32) #1

declare dso_local i64 @NtQueryValueKey(i32, i32*, i32, %struct.TYPE_3__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
