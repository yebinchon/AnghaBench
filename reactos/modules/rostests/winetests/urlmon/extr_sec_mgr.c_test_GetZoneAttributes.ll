; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_test_GetZoneAttributes.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_test_GetZoneAttributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"testing GetZoneAttributes...\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"CoInternetCreateZoneManager result: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"#%d: got 0x%x (expected S_OK)\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"got 0x%x (expected S_OK)\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"got cbSize = %d (expected 0)\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"got cbSize = %d (expected 64)\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"got cbSize = 0x%x (expected 0xffffffff)\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@E_POINTER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"got 0x%x (expected S_OK or E_FAIL)\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"got 0x%x (expected E_INVALIDARG)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetZoneAttributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetZoneAttributes() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [36 x i32], align 16
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  %6 = getelementptr inbounds [36 x i32], [36 x i32]* %2, i64 0, i64 0
  %7 = bitcast i32* %6 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %3, align 8
  %8 = call i32 @trace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @pCoInternetCreateZoneManager(i32* null, i32** %1, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @S_OK, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %4, align 4
  %15 = call i32 (i32, i8*, i32, ...) @ok(i32 %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @FAILED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %0
  br label %167

20:                                               ; preds = %0
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %38, %20
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 5
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = getelementptr inbounds [36 x i32], [36 x i32]* %2, i64 0, i64 0
  %26 = call i32 @memset(i32* %25, i32 -1, i32 144)
  %27 = load i32*, i32** %1, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = call i32 @IInternetZoneManager_GetZoneAttributes(i32* %27, i32 %28, %struct.TYPE_3__* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @S_OK, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 (i32, i8*, i32, ...) @ok(i32 %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %24
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %21

41:                                               ; preds = %21
  %42 = getelementptr inbounds [36 x i32], [36 x i32]* %2, i64 0, i64 0
  %43 = call i32 @memset(i32* %42, i32 -1, i32 144)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  %46 = load i32*, i32** %1, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = call i32 @IInternetZoneManager_GetZoneAttributes(i32* %46, i32 0, %struct.TYPE_3__* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @S_OK, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (i32, i8*, i32, ...) @ok(i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %41
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp eq i64 %63, 4
  br label %65

65:                                               ; preds = %59, %41
  %66 = phi i1 [ true, %41 ], [ %64, %59 ]
  %67 = zext i1 %66 to i32
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, i8*, i32, ...) @ok(i32 %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  %72 = getelementptr inbounds [36 x i32], [36 x i32]* %2, i64 0, i64 0
  %73 = call i32 @memset(i32* %72, i32 -1, i32 144)
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 64, i32* %75, align 4
  %76 = load i32*, i32** %1, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = call i32 @IInternetZoneManager_GetZoneAttributes(i32* %76, i32 0, %struct.TYPE_3__* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @S_OK, align 4
  %81 = icmp eq i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* %4, align 4
  %84 = call i32 (i32, i8*, i32, ...) @ok(i32 %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 64
  br i1 %88, label %95, label %89

89:                                               ; preds = %65
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = icmp eq i64 %93, 4
  br label %95

95:                                               ; preds = %89, %65
  %96 = phi i1 [ true, %65 ], [ %94, %89 ]
  %97 = zext i1 %96 to i32
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i8*, i32, ...) @ok(i32 %97, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %100)
  %102 = getelementptr inbounds [36 x i32], [36 x i32]* %2, i64 0, i64 0
  %103 = call i32 @memset(i32* %102, i32 -1, i32 144)
  %104 = load i32*, i32** %1, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %106 = call i32 @IInternetZoneManager_GetZoneAttributes(i32* %104, i32 0, %struct.TYPE_3__* %105)
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @S_OK, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %4, align 4
  %112 = call i32 (i32, i8*, i32, ...) @ok(i32 %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %123, label %117

117:                                              ; preds = %95
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = icmp eq i64 %121, 4
  br label %123

123:                                              ; preds = %117, %95
  %124 = phi i1 [ true, %95 ], [ %122, %117 ]
  %125 = zext i1 %124 to i32
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i32, i8*, i32, ...) @ok(i32 %125, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %128)
  %130 = getelementptr inbounds [36 x i32], [36 x i32]* %2, i64 0, i64 0
  %131 = call i32 @memset(i32* %130, i32 -1, i32 144)
  %132 = load i32*, i32** %1, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %134 = call i32 @IInternetZoneManager_GetZoneAttributes(i32* %132, i32 -559038737, %struct.TYPE_3__* %133)
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @S_OK, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %146, label %138

138:                                              ; preds = %123
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @E_FAIL, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* @E_POINTER, align 4
  %145 = icmp eq i32 %143, %144
  br label %146

146:                                              ; preds = %142, %138, %123
  %147 = phi i1 [ true, %138 ], [ true, %123 ], [ %145, %142 ]
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* %4, align 4
  %150 = call i32 (i32, i8*, i32, ...) @ok(i32 %148, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %149)
  %151 = load i32*, i32** %1, align 8
  %152 = call i32 @IInternetZoneManager_GetZoneAttributes(i32* %151, i32 0, %struct.TYPE_3__* null)
  store i32 %152, i32* %4, align 4
  %153 = load i32, i32* %4, align 4
  %154 = load i32, i32* @E_INVALIDARG, align 4
  %155 = icmp eq i32 %153, %154
  %156 = zext i1 %155 to i32
  %157 = load i32, i32* %4, align 4
  %158 = call i32 (i32, i8*, i32, ...) @ok(i32 %156, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %157)
  %159 = load i32*, i32** %1, align 8
  %160 = call i32 @IInternetZoneManager_Release(i32* %159)
  store i32 %160, i32* %4, align 4
  %161 = load i32, i32* %4, align 4
  %162 = load i32, i32* @S_OK, align 4
  %163 = icmp eq i32 %161, %162
  %164 = zext i1 %163 to i32
  %165 = load i32, i32* %4, align 4
  %166 = call i32 (i32, i8*, i32, ...) @ok(i32 %164, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %165)
  br label %167

167:                                              ; preds = %146, %19
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @pCoInternetCreateZoneManager(i32*, i32**, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @IInternetZoneManager_GetZoneAttributes(i32*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @IInternetZoneManager_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
