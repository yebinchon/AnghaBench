; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_class.c_test_GetClassInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_class.c_test_GetClassInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@test_GetClassInfo.staticW = internal constant [7 x i8] c"static\00", align 1
@.str = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"GetClassInfoA() error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"GetClassInfoExA() error %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"GetClassInfoExA() should fail\0A\00", align 1
@ERROR_NOACCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"expected ERROR_NOACCESS, got %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"GetClassInfoExW() should fail\0A\00", align 1
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"expected 0, got %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"got null proc\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"expected sizeof(wcx)-1, got %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"expected sizeof(wcx)+1, got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetClassInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetClassInfo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = alloca i32, align 4
  %4 = call i32 @SetLastError(i32 -559038737)
  %5 = call i32 @GetClassInfoA(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %1)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 (...) @GetLastError()
  %8 = call i32 (i32, i8*, ...) @ok(i32 %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 16, i32* %9, align 8
  %10 = call i32 @SetLastError(i32 -559038737)
  %11 = call i32 @GetClassInfoExA(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %2)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 (...) @GetLastError()
  %14 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  %15 = call i32 @SetLastError(i32 -559038737)
  %16 = call i32 @GetClassInfoExA(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* null)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %22 = call i32 (...) @GetLastError()
  %23 = load i32, i32* @ERROR_NOACCESS, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %0
  %26 = call i32 (...) @GetLastError()
  %27 = icmp eq i32 %26, -559038737
  %28 = zext i1 %27 to i32
  %29 = call i64 @broken(i32 %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %25, %0
  %32 = phi i1 [ true, %0 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 (...) @GetLastError()
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  %36 = call i32 @SetLastError(i32 -559038737)
  %37 = call i32 @GetClassInfoExW(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @test_GetClassInfo.staticW, i64 0, i64 0), i32* null)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %43 = call i32 (...) @GetLastError()
  %44 = load i32, i32* @ERROR_NOACCESS, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %59, label %46

46:                                               ; preds = %31
  %47 = call i32 (...) @GetLastError()
  %48 = icmp eq i32 %47, -559038737
  %49 = zext i1 %48 to i32
  %50 = call i64 @broken(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %46
  %53 = call i32 (...) @GetLastError()
  %54 = load i32, i32* @ERROR_CALL_NOT_IMPLEMENTED, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @broken(i32 %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %52, %46, %31
  %60 = phi i1 [ true, %46 ], [ true, %31 ], [ %58, %52 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 (...) @GetLastError()
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32* null, i32** %65, align 8
  %66 = call i32 @SetLastError(i32 -559038737)
  %67 = call i32 @GetClassInfoExA(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %2)
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i32 (...) @GetLastError()
  %70 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  %81 = zext i1 %80 to i32
  %82 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 15, i32* %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32* null, i32** %84, align 8
  %85 = call i32 @SetLastError(i32 -559038737)
  %86 = call i32 @GetClassInfoExA(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %2)
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* %3, align 4
  %88 = call i32 (...) @GetLastError()
  %89 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = icmp eq i64 %92, 15
  %94 = zext i1 %93 to i32
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %96)
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  %101 = zext i1 %100 to i32
  %102 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 17, i32* %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32* null, i32** %104, align 8
  %105 = call i32 @SetLastError(i32 -559038737)
  %106 = call i32 @GetClassInfoExA(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %2)
  store i32 %106, i32* %3, align 4
  %107 = load i32, i32* %3, align 4
  %108 = call i32 (...) @GetLastError()
  %109 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = icmp eq i64 %112, 17
  %114 = zext i1 %113 to i32
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %116)
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  %121 = zext i1 %120 to i32
  %122 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @GetClassInfoA(i32, i8*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @GetClassInfoExA(i32, i8*, %struct.TYPE_3__*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @GetClassInfoExW(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
