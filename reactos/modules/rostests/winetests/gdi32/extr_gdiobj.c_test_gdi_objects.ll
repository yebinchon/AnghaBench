; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_gdiobj.c_test_gdi_objects.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_gdiobj.c_test_gdi_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLACK_PEN = common dso_local global i32 0, align 4
@ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [68 x i8] c"SelectObject(NULL DC) expected 0, ERROR_INVALID_HANDLE, got %p, %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"SelectObject(NULL obj) expected 0, NO_ERROR, got %p, %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"SelectObject(post NULL) expected non-null, NO_ERROR, got %p, %u\0A\00", align 1
@OBJ_PEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"GetCurrentObject(NULL DC) expected 0, NO_ERROR, got %p, %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"DeleteObject(NULL obj), expected 0, NO_ERROR, got %d, %u\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [55 x i8] c"GetObject(NULL obj), expected 0, NO_ERROR, got %d, %u\0A\00", align 1
@ERROR_NOACCESS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [65 x i8] c"GetObject(invalid buff), expected 0, ERROR_NOACCESS, got %d, %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"GetObjectType(NULL obj), expected 0, ERROR_INVALID_HANDLE, got %d, %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"UnrealizeObject(NULL obj), expected 0, NO_ERROR, got %d, %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_gdi_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_gdi_objects() #0 {
  %1 = alloca [256 x i32], align 16
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32* @GetDC(i32* null)
  store i32* %6, i32** %2, align 8
  %7 = call i32 @SetLastError(i32 0)
  %8 = load i32, i32* @BLACK_PEN, align 4
  %9 = call i32* @GetStockObject(i32 %8)
  %10 = call i32* @SelectObject(i32* null, i32* %9)
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %0
  %14 = call i64 (...) @GetLastError()
  %15 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = call i64 (...) @GetLastError()
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @broken(i32 %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %17, %13
  %25 = phi i1 [ true, %13 ], [ %23, %17 ]
  br label %26

26:                                               ; preds = %24, %0
  %27 = phi i1 [ false, %0 ], [ %25, %24 ]
  %28 = zext i1 %27 to i32
  %29 = load i32*, i32** %3, align 8
  %30 = ptrtoint i32* %29 to i32
  %31 = call i64 (...) @GetLastError()
  %32 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %31)
  %33 = call i32 @SetLastError(i32 0)
  %34 = load i32*, i32** %2, align 8
  %35 = call i32* @SelectObject(i32* %34, i32* null)
  store i32* %35, i32** %3, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %26
  %39 = call i64 (...) @GetLastError()
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %38, %26
  %43 = phi i1 [ false, %26 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = load i32*, i32** %3, align 8
  %46 = ptrtoint i32* %45 to i32
  %47 = call i64 (...) @GetLastError()
  %48 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %46, i64 %47)
  %49 = call i32 @SetLastError(i32 0)
  %50 = load i32*, i32** %2, align 8
  %51 = load i32, i32* @BLACK_PEN, align 4
  %52 = call i32* @GetStockObject(i32 %51)
  %53 = call i32* @SelectObject(i32* %50, i32* %52)
  store i32* %53, i32** %3, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %42
  %57 = call i64 (...) @GetLastError()
  %58 = icmp ne i64 %57, 0
  %59 = xor i1 %58, true
  br label %60

60:                                               ; preds = %56, %42
  %61 = phi i1 [ false, %42 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  %63 = load i32*, i32** %3, align 8
  %64 = ptrtoint i32* %63 to i32
  %65 = call i64 (...) @GetLastError()
  %66 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %64, i64 %65)
  %67 = call i32 @SetLastError(i32 0)
  %68 = load i32, i32* @OBJ_PEN, align 4
  %69 = call i32* @GetCurrentObject(i32* null, i32 %68)
  store i32* %69, i32** %3, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %60
  %73 = call i64 (...) @GetLastError()
  %74 = icmp ne i64 %73, 0
  %75 = xor i1 %74, true
  br label %76

76:                                               ; preds = %72, %60
  %77 = phi i1 [ false, %60 ], [ %75, %72 ]
  %78 = zext i1 %77 to i32
  %79 = load i32*, i32** %3, align 8
  %80 = ptrtoint i32* %79 to i32
  %81 = call i64 (...) @GetLastError()
  %82 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %80, i64 %81)
  %83 = call i32 @DeleteObject(i32* null)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %76
  %87 = call i64 (...) @GetLastError()
  %88 = icmp ne i64 %87, 0
  %89 = xor i1 %88, true
  br label %90

90:                                               ; preds = %86, %76
  %91 = phi i1 [ false, %76 ], [ %89, %86 ]
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %5, align 4
  %94 = call i64 (...) @GetLastError()
  %95 = call i32 @ok(i32 %92, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %93, i64 %94)
  %96 = call i32 @SetLastError(i32 0)
  %97 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 0
  %98 = call i32 @GetObjectA(i32* null, i32 1024, i32* %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %90
  %102 = call i64 (...) @GetLastError()
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  %105 = call i64 (...) @GetLastError()
  %106 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %107 = icmp eq i64 %105, %106
  br label %108

108:                                              ; preds = %104, %101
  %109 = phi i1 [ true, %101 ], [ %107, %104 ]
  br label %110

110:                                              ; preds = %108, %90
  %111 = phi i1 [ false, %90 ], [ %109, %108 ]
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* %4, align 4
  %114 = call i64 (...) @GetLastError()
  %115 = call i32 @ok(i32 %112, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %113, i64 %114)
  %116 = load i32*, i32** %2, align 8
  %117 = load i32, i32* @BLACK_PEN, align 4
  %118 = call i32* @GetStockObject(i32 %117)
  %119 = call i32* @SelectObject(i32* %116, i32* %118)
  store i32* %119, i32** %3, align 8
  %120 = call i32 @SetLastError(i32 0)
  %121 = load i32*, i32** %3, align 8
  %122 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 0
  %123 = ptrtoint i32* %122 to i32
  %124 = call i32 @GetObjectA(i32* %121, i32 %123, i32* inttoptr (i64 1024 to i32*))
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %4, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %110
  %128 = call i64 (...) @GetLastError()
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %127
  %131 = call i64 (...) @GetLastError()
  %132 = load i64, i64* @ERROR_NOACCESS, align 8
  %133 = icmp eq i64 %131, %132
  br label %134

134:                                              ; preds = %130, %127
  %135 = phi i1 [ true, %127 ], [ %133, %130 ]
  br label %136

136:                                              ; preds = %134, %110
  %137 = phi i1 [ false, %110 ], [ %135, %134 ]
  %138 = zext i1 %137 to i32
  %139 = load i32, i32* %4, align 4
  %140 = call i64 (...) @GetLastError()
  %141 = call i32 @ok(i32 %138, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i32 %139, i64 %140)
  %142 = call i32 @SetLastError(i32 0)
  %143 = call i32 @GetObjectType(i32* null)
  store i32 %143, i32* %4, align 4
  %144 = load i32, i32* %4, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %136
  %147 = call i64 (...) @GetLastError()
  %148 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %149 = icmp eq i64 %147, %148
  br label %150

150:                                              ; preds = %146, %136
  %151 = phi i1 [ false, %136 ], [ %149, %146 ]
  %152 = zext i1 %151 to i32
  %153 = load i32, i32* %4, align 4
  %154 = call i64 (...) @GetLastError()
  %155 = call i32 @ok(i32 %152, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.7, i64 0, i64 0), i32 %153, i64 %154)
  %156 = call i32 @SetLastError(i32 0)
  %157 = call i32 @UnrealizeObject(i32* null)
  store i32 %157, i32* %4, align 4
  %158 = load i32, i32* %4, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %150
  %161 = call i64 (...) @GetLastError()
  %162 = icmp ne i64 %161, 0
  %163 = xor i1 %162, true
  br label %164

164:                                              ; preds = %160, %150
  %165 = phi i1 [ false, %150 ], [ %163, %160 ]
  %166 = zext i1 %165 to i32
  %167 = load i32, i32* %4, align 4
  %168 = call i64 (...) @GetLastError()
  %169 = call i32 @ok(i32 %166, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0), i32 %167, i64 %168)
  %170 = load i32*, i32** %2, align 8
  %171 = call i32 @ReleaseDC(i32* null, i32* %170)
  ret void
}

declare dso_local i32* @GetDC(i32*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32* @SelectObject(i32*, i32*) #1

declare dso_local i32* @GetStockObject(i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32* @GetCurrentObject(i32*, i32) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i32 @GetObjectA(i32*, i32, i32*) #1

declare dso_local i32 @GetObjectType(i32*) #1

declare dso_local i32 @UnrealizeObject(i32*) #1

declare dso_local i32 @ReleaseDC(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
