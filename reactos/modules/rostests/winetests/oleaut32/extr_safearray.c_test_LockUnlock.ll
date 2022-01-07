; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_safearray.c_test_LockUnlock.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_safearray.c_test_LockUnlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@FALSE = common dso_local global i64 0, align 8
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Lock NULL array hres 0x%x\0A\00", align 1
@VT_UI1 = common dso_local global i32 0, align 4
@E_UNEXPECTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Bad %sUnlock gave hres 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"vector \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"Lock %sfailed at %d; hres 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Unlock %sfailed at %d; hres 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_LockUnlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_LockUnlock() #0 {
  %1 = alloca [4 x %struct.TYPE_4__], align 16
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i64, i64* @FALSE, align 8
  store i64 %7, i64* %4, align 8
  %8 = call i64 @SafeArrayLock(i32* null)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @E_INVALIDARG, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %3, align 8
  %14 = call i32 (i32, i8*, i64, ...) @ok(i32 %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = call i64 @SafeArrayUnlock(i32* null)
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @E_INVALIDARG, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %3, align 8
  %21 = call i32 (i32, i8*, i64, ...) @ok(i32 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %20)
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %36, %0
  %23 = load i32, i32* %5, align 4
  %24 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %1, i64 0, i64 0
  %25 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %1, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %1, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 8, i32* %35, align 16
  br label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %22

39:                                               ; preds = %22
  %40 = load i32, i32* @VT_UI1, align 4
  %41 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %1, i64 0, i64 0
  %42 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %41)
  %43 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %1, i64 0, i64 0
  %44 = call i32* @SafeArrayCreate(i32 %40, i32 %42, %struct.TYPE_4__* %43)
  store i32* %44, i32** %2, align 8
  br label %45

45:                                               ; preds = %135, %39
  %46 = load i32*, i32** %2, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %130

48:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  %49 = load i32*, i32** %2, align 8
  %50 = call i64 @SafeArrayUnlock(i32* %49)
  store i64 %50, i64* %3, align 8
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* @E_UNEXPECTED, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %4, align 8
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %59 = ptrtoint i8* %58 to i64
  %60 = load i64, i64* %3, align 8
  %61 = call i32 (i32, i8*, i64, ...) @ok(i32 %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %59, i64 %60)
  br label %62

62:                                               ; preds = %67, %48
  %63 = load i32*, i32** %2, align 8
  %64 = call i64 @SafeArrayLock(i32* %63)
  store i64 %64, i64* %3, align 8
  %65 = load i64, i64* @S_OK, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %62

70:                                               ; preds = %62
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, 65535
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i64, i64* %3, align 8
  %75 = load i64, i64* @E_UNEXPECTED, align 8
  %76 = icmp eq i64 %74, %75
  br label %77

77:                                               ; preds = %73, %70
  %78 = phi i1 [ false, %70 ], [ %76, %73 ]
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %4, align 8
  %81 = icmp ne i64 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %84 = ptrtoint i8* %83 to i64
  %85 = load i32, i32* %6, align 4
  %86 = load i64, i64* %3, align 8
  %87 = call i32 (i32, i8*, i64, ...) @ok(i32 %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %84, i32 %85, i64 %86)
  %88 = load i32, i32* %6, align 4
  %89 = icmp eq i32 %88, 65535
  br i1 %89, label %90, label %121

90:                                               ; preds = %77
  %91 = load i64, i64* %3, align 8
  %92 = load i64, i64* @E_UNEXPECTED, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %121

94:                                               ; preds = %90
  br label %95

95:                                               ; preds = %100, %94
  %96 = load i32*, i32** %2, align 8
  %97 = call i64 @SafeArrayUnlock(i32* %96)
  store i64 %97, i64* %3, align 8
  %98 = load i64, i64* @S_OK, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %6, align 4
  br label %95

103:                                              ; preds = %95
  %104 = load i32, i32* %6, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i64, i64* %3, align 8
  %108 = load i64, i64* @E_UNEXPECTED, align 8
  %109 = icmp eq i64 %107, %108
  br label %110

110:                                              ; preds = %106, %103
  %111 = phi i1 [ false, %103 ], [ %109, %106 ]
  %112 = zext i1 %111 to i32
  %113 = load i64, i64* %4, align 8
  %114 = icmp ne i64 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %117 = ptrtoint i8* %116 to i64
  %118 = load i32, i32* %6, align 4
  %119 = load i64, i64* %3, align 8
  %120 = call i32 (i32, i8*, i64, ...) @ok(i32 %112, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i64 %117, i32 %118, i64 %119)
  br label %121

121:                                              ; preds = %110, %90, %77
  %122 = load i32*, i32** %2, align 8
  %123 = call i64 @SafeArrayDestroy(i32* %122)
  store i64 %123, i64* %3, align 8
  %124 = load i64, i64* %3, align 8
  %125 = load i64, i64* @S_OK, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = load i64, i64* %3, align 8
  %129 = call i32 (i32, i8*, i64, ...) @ok(i32 %127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64 %128)
  br label %130

130:                                              ; preds = %121, %45
  %131 = load i64, i64* %4, align 8
  %132 = load i64, i64* @FALSE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %130
  br i1 true, label %135, label %139

135:                                              ; preds = %134
  %136 = load i32, i32* @VT_UI1, align 4
  %137 = call i32* @pSafeArrayCreateVector(i32 %136, i32 0, i32 100)
  store i32* %137, i32** %2, align 8
  %138 = load i64, i64* @TRUE, align 8
  store i64 %138, i64* %4, align 8
  br label %45

139:                                              ; preds = %134, %130
  ret void
}

declare dso_local i64 @SafeArrayLock(i32*) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @SafeArrayUnlock(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32* @SafeArrayCreate(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i64 @SafeArrayDestroy(i32*) #1

declare dso_local i32* @pSafeArrayCreateVector(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
