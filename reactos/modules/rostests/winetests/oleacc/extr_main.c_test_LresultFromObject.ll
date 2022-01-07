; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleacc/extr_main.c_test_LresultFromObject.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleacc/extr_main.c_test_LresultFromObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"got %lx\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"got %x\0A\00", align 1
@Object_ref = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Object_ref = %d\0A\00", align 1
@Object = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"hres = %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"unk != &Object\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"\22%s\22 main ObjectFromLresult %lx\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_LresultFromObject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_LresultFromObject(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = call i32 @LresultFromObject(i32* null, i32 0, i32* null)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @E_INVALIDARG, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %9, align 4
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = bitcast i32** %7 to i8**
  %22 = call i32 @ObjectFromLresult(i32 0, i32* @IID_IUnknown, i32 0, i8** %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @E_FAIL, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %8, align 4
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = bitcast i32** %7 to i8**
  %30 = call i32 @ObjectFromLresult(i32 65536, i32* @IID_IUnknown, i32 0, i8** %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @E_FAIL, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @Object_ref, align 4
  %38 = icmp eq i32 %37, 1
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* @Object_ref, align 4
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = call i32 @LresultFromObject(i32* @IID_IUnknown, i32 0, i32* @Object)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @SUCCEEDED(i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @Object_ref, align 4
  %48 = icmp sgt i32 %47, 1
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* @Object_ref, align 4
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = bitcast i32** %7 to i8**
  %54 = call i32 @ObjectFromLresult(i32 %52, i32* @IID_IUnknown, i32 0, i8** %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @S_OK, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load i32*, i32** %7, align 8
  %62 = icmp eq i32* %61, @Object
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @IUnknown_Release(i32* %65)
  %67 = load i32, i32* @Object_ref, align 4
  %68 = icmp eq i32 %67, 1
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* @Object_ref, align 4
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = call i32 @LresultFromObject(i32* @IID_IUnknown, i32 0, i32* @Object)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @SUCCEEDED(i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @Object_ref, align 4
  %78 = icmp sgt i32 %77, 1
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* @Object_ref, align 4
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i8*, i8** %2, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %82, i32 %83)
  %85 = call i32 @memset(%struct.TYPE_6__* %4, i32 0, i32 4)
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32 4, i32* %86, align 4
  %87 = load i32, i32* @FALSE, align 4
  %88 = call i32 @CreateProcessA(i32* null, i8* %13, i32* null, i32* null, i32 %87, i32 0, i32* null, i32* null, %struct.TYPE_6__* %4, %struct.TYPE_7__* %3)
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @winetest_wait_child_process(i32 %90)
  %92 = load i32, i32* @Object_ref, align 4
  %93 = icmp eq i32 %92, 1
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* @Object_ref, align 4
  %96 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %97)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LresultFromObject(i32*, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @ObjectFromLresult(i32, i32*, i32, i8**) #2

declare dso_local i32 @SUCCEEDED(i32) #2

declare dso_local i32 @IUnknown_Release(i32*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #2

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @CreateProcessA(i32*, i8*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_7__*) #2

declare dso_local i32 @winetest_wait_child_process(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
