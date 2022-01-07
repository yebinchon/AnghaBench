; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_clsid.c_test_ClassIDs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_clsid.c_test_ClassIDs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEST_guids = common dso_local global i32** null, align 8
@FALSE = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"wrong size %u for id %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"created invalid string '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"GUID created wrong %d\0A\00", align 1
@IID_Endianness = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"wrong size %u for IID_Endianness\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"{01020304-0506-0708-090A-0B0C0D0E0F0A}\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Endianness Broken, got '%s'\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"accepted bad length\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"wrote to buffer with no length\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"rejected ok length\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Didn't write to buffer with ok length\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"{xxx-\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"accepted invalid string\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ClassIDs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ClassIDs() #0 {
  %1 = alloca i32**, align 8
  %2 = alloca [256 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = load i32**, i32*** @TEST_guids, align 8
  store i32** %8, i32*** %1, align 8
  store i32 0, i32* %6, align 4
  %9 = load i64, i64* @FALSE, align 8
  store i64 %9, i64* %7, align 8
  br label %10

10:                                               ; preds = %57, %0
  %11 = load i32**, i32*** %1, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %62

14:                                               ; preds = %10
  %15 = load i32**, i32*** %1, align 8
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %18 = call i32 @pSHLWAPI_23(i32* %16, i8* %17, i32 256)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @S_OK, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i64, i64* @TRUE, align 8
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %25, %21, %14
  %28 = load i32, i32* %4, align 4
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @S_OK, align 4
  br label %34

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 39, %33 ]
  %36 = icmp eq i32 %28, %35
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %42 = call i64 @pSHLWAPI_269(i8* %41, i32* %3)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @FALSE, align 8
  %45 = icmp ne i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = load i64, i64* %5, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %34
  %52 = load i32**, i32*** %1, align 8
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @IsEqualGUID(i32* %53, i32* %3)
  %55 = load i32, i32* %6, align 4
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %51, %34
  %58 = load i32**, i32*** %1, align 8
  %59 = getelementptr inbounds i32*, i32** %58, i32 1
  store i32** %59, i32*** %1, align 8
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %10

62:                                               ; preds = %10
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %64 = call i32 @pSHLWAPI_23(i32* @IID_Endianness, i8* %63, i32 256)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i64, i64* %7, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @S_OK, align 4
  br label %71

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i32 [ %69, %68 ], [ 39, %70 ]
  %73 = icmp eq i32 %65, %72
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %4, align 4
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %83 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %82)
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  store i8 58, i8* %84, align 16
  %85 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %86 = call i32 @pSHLWAPI_23(i32* @IID_Endianness, i8* %85, i32 0)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load i64, i64* %7, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %71
  %91 = load i32, i32* @E_FAIL, align 4
  br label %93

92:                                               ; preds = %71
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i32 [ %91, %90 ], [ 0, %92 ]
  %95 = icmp eq i32 %87, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %98 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %99 = load i8, i8* %98, align 16
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 58
  %102 = zext i1 %101 to i32
  %103 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %104 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  store i8 58, i8* %104, align 16
  %105 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %106 = call i32 @pSHLWAPI_23(i32* @IID_Endianness, i8* %105, i32 38)
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = load i64, i64* %7, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %93
  %111 = load i32, i32* @E_FAIL, align 4
  br label %113

112:                                              ; preds = %93
  br label %113

113:                                              ; preds = %112, %110
  %114 = phi i32 [ %111, %110 ], [ 0, %112 ]
  %115 = icmp eq i32 %107, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %118 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %119 = load i8, i8* %118, align 16
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 58
  %122 = zext i1 %121 to i32
  %123 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %124 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  store i8 58, i8* %124, align 16
  %125 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %126 = call i32 @pSHLWAPI_23(i32* @IID_Endianness, i8* %125, i32 39)
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %4, align 4
  %128 = load i64, i64* %7, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %113
  %131 = load i32, i32* @S_OK, align 4
  br label %133

132:                                              ; preds = %113
  br label %133

133:                                              ; preds = %132, %130
  %134 = phi i32 [ %131, %130 ], [ 39, %132 ]
  %135 = icmp eq i32 %127, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %138 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %139 = load i8, i8* %138, align 16
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 123
  %142 = zext i1 %141 to i32
  %143 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %144 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %145 = call i32 @strcpy(i8* %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %146 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %147 = call i64 @pSHLWAPI_269(i8* %146, i32* %3)
  store i64 %147, i64* %5, align 8
  %148 = load i64, i64* %5, align 8
  %149 = load i64, i64* @FALSE, align 8
  %150 = icmp eq i64 %148, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %153 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %154 = call i32 @pSHLWAPI_23(i32* @IID_Endianness, i8* %153, i32 39)
  store i32 %154, i32* %4, align 4
  %155 = load i32, i32* %4, align 4
  %156 = load i64, i64* %7, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %133
  %159 = load i32, i32* @S_OK, align 4
  br label %161

160:                                              ; preds = %133
  br label %161

161:                                              ; preds = %160, %158
  %162 = phi i32 [ %159, %158 ], [ 39, %160 ]
  %163 = icmp eq i32 %155, %162
  %164 = zext i1 %163 to i32
  %165 = call i32 (i32, i8*, ...) @ok(i32 %164, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %166 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %167 = load i8, i8* %166, align 16
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 123
  %170 = zext i1 %169 to i32
  %171 = call i32 (i32, i8*, ...) @ok(i32 %170, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pSHLWAPI_23(i32*, i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @pSHLWAPI_269(i8*, i32*) #1

declare dso_local i32 @IsEqualGUID(i32*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
