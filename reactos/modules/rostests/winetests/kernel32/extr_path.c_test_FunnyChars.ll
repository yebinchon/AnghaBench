; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_FunnyChars.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_FunnyChars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i64, i8* }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s\\%s\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i8* null, align 8
@ERROR_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"%s: GetShortPathNameA error: len=%d error=%d tmpstr=[%s]\0A\00", align 1
@ERROR_INVALID_NAME = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [55 x i8] c"%s: GetShortPathA should have failed len=%d, error=%d\0A\00", align 1
@pGetLongPathNameA = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [48 x i8] c"GetLongPathNameA passed when it shouldn't have\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"%s: GetLongPathA returned %d and not %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"%s: GetLongPathA returned %d and not %d or %d'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i64, i8*)* @test_FunnyChars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_FunnyChars(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_3__, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 @test_ValidPathA(i8* %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %18, %struct.TYPE_3__* %14, i8* %24)
  %26 = load i64, i64* %9, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %69

28:                                               ; preds = %5
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %29, i8* %30)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** @ERROR_FILE_NOT_FOUND, align 8
  %39 = icmp eq i8* %37, %38
  br i1 %39, label %60, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load i64, i64* @ERROR_PATH_NOT_FOUND, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = icmp eq i8* %42, %44
  br i1 %45, label %60, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %46, %28
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @strlen(i8* %21)
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = call i64 @lstrcmpiA(i8* %18, i8* %21)
  %57 = icmp eq i64 %56, 0
  br label %58

58:                                               ; preds = %55, %50
  %59 = phi i1 [ false, %50 ], [ %57, %55 ]
  br label %60

60:                                               ; preds = %58, %46, %40, %35
  %61 = phi i1 [ true, %46 ], [ true, %40 ], [ true, %35 ], [ %59, %58 ]
  %62 = zext i1 %61 to i32
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8* %63, i64 %65, i8* %67, i8* %18)
  br label %99

69:                                               ; preds = %5
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** @ERROR_INVALID_NAME, align 8
  %77 = icmp eq i8* %75, %76
  br i1 %77, label %88, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load i8*, i8** @ERROR_FILE_NOT_FOUND, align 8
  %82 = icmp eq i8* %80, %81
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  %87 = xor i1 %86, true
  br label %88

88:                                               ; preds = %83, %78, %73
  %89 = phi i1 [ true, %78 ], [ true, %73 ], [ %87, %83 ]
  br label %90

90:                                               ; preds = %88, %69
  %91 = phi i1 [ false, %69 ], [ %89, %88 ]
  %92 = zext i1 %91 to i32
  %93 = load i8*, i8** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* %93, i64 %95, i8* %97)
  br label %99

99:                                               ; preds = %90, %60
  %100 = load i64, i64* @pGetLongPathNameA, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %141

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %108 = load i64, i64* %9, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %102
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  %113 = load i8*, i8** @ERROR_FILE_NOT_FOUND, align 8
  %114 = icmp eq i8* %112, %113
  %115 = zext i1 %114 to i32
  %116 = load i8*, i8** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %118 = load i8*, i8** %117, align 8
  %119 = load i8*, i8** @ERROR_FILE_NOT_FOUND, align 8
  %120 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %116, i8* %118, i8* %119)
  br label %140

121:                                              ; preds = %102
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %123 = load i8*, i8** %122, align 8
  %124 = load i8*, i8** @ERROR_INVALID_NAME, align 8
  %125 = icmp eq i8* %123, %124
  br i1 %125, label %131, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %128 = load i8*, i8** %127, align 8
  %129 = load i8*, i8** @ERROR_FILE_NOT_FOUND, align 8
  %130 = icmp eq i8* %128, %129
  br label %131

131:                                              ; preds = %126, %121
  %132 = phi i1 [ true, %121 ], [ %130, %126 ]
  %133 = zext i1 %132 to i32
  %134 = load i8*, i8** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %136 = load i8*, i8** %135, align 8
  %137 = load i8*, i8** @ERROR_INVALID_NAME, align 8
  %138 = load i8*, i8** @ERROR_FILE_NOT_FOUND, align 8
  %139 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i8* %134, i8* %136, i8* %137, i8* %138)
  br label %140

140:                                              ; preds = %131, %110
  br label %141

141:                                              ; preds = %140, %99
  %142 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %142)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @test_ValidPathA(i8*, i8*, i8*, i8*, %struct.TYPE_3__*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @lstrcmpiA(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
