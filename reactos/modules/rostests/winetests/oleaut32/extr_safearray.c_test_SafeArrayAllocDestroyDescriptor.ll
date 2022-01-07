; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_safearray.c_test_SafeArrayAllocDestroyDescriptor.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_safearray.c_test_SafeArrayAllocDestroyDescriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64 }

@E_INVALIDARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"0 dimensions gave hres 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"65536 dimensions gave hres 0x%x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"%d dimensions failed; hres 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Dimension is %d; should be %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"destroy failed; hres 0x%x\0A\00", align 1
@VT_UI1 = common dso_local global i32 0, align 4
@E_POINTER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"NULL parm gave hres 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"VT = -1 gave hres 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"SafeArrayAllocData gave hres 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"SafeArrayDestroy failed with hres %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SafeArrayAllocDestroyDescriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SafeArrayAllocDestroyDescriptor() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @SafeArrayAllocDescriptor(i32 0, %struct.TYPE_10__** %1)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @E_INVALIDARG, align 4
  %7 = icmp eq i32 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i32, i32* %2, align 4
  %10 = call i32 (i32, i8*, i32, ...) @ok(i32 %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = call i32 @SafeArrayAllocDescriptor(i32 65536, %struct.TYPE_10__** %1)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @E_INVALIDARG, align 4
  %14 = icmp eq i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %2, align 4
  %17 = call i32 (i32, i8*, i32, ...) @ok(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  store i32 5, i32* %3, align 4
  br label %18

18:                                               ; preds = %53, %0
  %19 = load i32, i32* %3, align 4
  %20 = icmp sle i32 %19, 65535
  br i1 %20, label %21, label %56

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @SafeArrayAllocDescriptor(i32 %22, %struct.TYPE_10__** %1)
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @S_OK, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %2, align 4
  %30 = call i32 (i32, i8*, i32, ...) @ok(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @S_OK, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %21
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %36 = call i32 @SafeArrayGetDim(%struct.TYPE_10__* %35)
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %41 = call i32 @SafeArrayGetDim(%struct.TYPE_10__* %40)
  %42 = load i32, i32* %3, align 4
  %43 = call i32 (i32, i8*, i32, ...) @ok(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %45 = call i32 @SafeArrayDestroyDescriptor(%struct.TYPE_10__* %44)
  store i32 %45, i32* %2, align 4
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @S_OK, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %2, align 4
  %51 = call i32 (i32, i8*, i32, ...) @ok(i32 %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %34, %21
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 30
  store i32 %55, i32* %3, align 4
  br label %18

56:                                               ; preds = %18
  %57 = load i32, i32* @VT_UI1, align 4
  %58 = call i32 @pSafeArrayAllocDescriptorEx(i32 %57, i32 0, %struct.TYPE_10__** %1)
  store i32 %58, i32* %2, align 4
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @E_INVALIDARG, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %2, align 4
  %64 = call i32 (i32, i8*, i32, ...) @ok(i32 %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @VT_UI1, align 4
  %66 = call i32 @pSafeArrayAllocDescriptorEx(i32 %65, i32 65536, %struct.TYPE_10__** %1)
  store i32 %66, i32* %2, align 4
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @E_INVALIDARG, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %2, align 4
  %72 = call i32 (i32, i8*, i32, ...) @ok(i32 %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @VT_UI1, align 4
  %74 = call i32 @pSafeArrayAllocDescriptorEx(i32 %73, i32 1, %struct.TYPE_10__** null)
  store i32 %74, i32* %2, align 4
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* @E_POINTER, align 4
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %2, align 4
  %80 = call i32 (i32, i8*, i32, ...) @ok(i32 %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  %81 = call i32 @pSafeArrayAllocDescriptorEx(i32 -1, i32 1, %struct.TYPE_10__** %1)
  store i32 %81, i32* %2, align 4
  %82 = load i32, i32* %2, align 4
  %83 = load i32, i32* @S_OK, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %2, align 4
  %87 = call i32 (i32, i8*, i32, ...) @ok(i32 %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %86)
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %99 = call i32 @SafeArrayAllocData(%struct.TYPE_10__* %98)
  store i32 %99, i32* %2, align 4
  %100 = load i32, i32* %2, align 4
  %101 = load i32, i32* @S_OK, align 4
  %102 = icmp eq i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* %2, align 4
  %105 = call i32 (i32, i8*, i32, ...) @ok(i32 %103, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %104)
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %107 = call i32 @SafeArrayDestroy(%struct.TYPE_10__* %106)
  store i32 %107, i32* %2, align 4
  %108 = load i32, i32* %2, align 4
  %109 = load i32, i32* @S_OK, align 4
  %110 = icmp eq i32 %108, %109
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %2, align 4
  %113 = call i32 (i32, i8*, i32, ...) @ok(i32 %111, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %112)
  ret void
}

declare dso_local i32 @SafeArrayAllocDescriptor(i32, %struct.TYPE_10__**) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @SafeArrayGetDim(%struct.TYPE_10__*) #1

declare dso_local i32 @SafeArrayDestroyDescriptor(%struct.TYPE_10__*) #1

declare dso_local i32 @pSafeArrayAllocDescriptorEx(i32, i32, %struct.TYPE_10__**) #1

declare dso_local i32 @SafeArrayAllocData(%struct.TYPE_10__*) #1

declare dso_local i32 @SafeArrayDestroy(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
