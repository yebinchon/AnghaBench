; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_Advise.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_Advise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IOleObject = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"QueryInterface(IID_IOleObject) failed: %08x\0A\00", align 1
@OLE_E_NOCONNECTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unadvise returned: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"EnumAdvise returned: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"enum_advise != NULL\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Advise returned: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"conn = %d\0A\00", align 1
@AdviseSink = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_Advise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Advise(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* inttoptr (i64 3735928559 to i32*), i32** %4, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = bitcast i32** %3 to i8**
  %9 = call i32 @IHTMLDocument2_QueryInterface(i32* %7, i32* @IID_IOleObject, i8** %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @S_OK, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %6, align 4
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @FAILED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %125

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @IOleObject_Unadvise(i32* %21, i32 0)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @OLE_E_NOCONNECTION, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %6, align 4
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @IOleObject_EnumAdvise(i32* %29, i32** %4)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @S_OK, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = icmp eq i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @IOleObject_Advise(i32* %41, i32* null, i32* %5)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @E_INVALIDARG, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %20
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @S_OK, align 4
  %49 = icmp eq i32 %47, %48
  br label %50

50:                                               ; preds = %46, %20
  %51 = phi i1 [ true, %20 ], [ %49, %46 ]
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %6, align 4
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 1
  br label %60

60:                                               ; preds = %57, %50
  %61 = phi i1 [ true, %50 ], [ %59, %57 ]
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %5, align 4
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %63)
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @IOleObject_Advise(i32* %65, i32* @AdviseSink, i32* null)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @E_INVALIDARG, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %6, align 4
  %72 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @IOleObject_Advise(i32* %73, i32* @AdviseSink, i32* %5)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @S_OK, align 4
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %6, align 4
  %80 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %5, align 4
  %82 = icmp eq i32 %81, 1
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %5, align 4
  %85 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %84)
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @IOleObject_Advise(i32* %86, i32* @AdviseSink, i32* %5)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @S_OK, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %6, align 4
  %93 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %5, align 4
  %95 = icmp eq i32 %94, 2
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* %5, align 4
  %98 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %97)
  %99 = load i32*, i32** %3, align 8
  %100 = call i32 @IOleObject_Unadvise(i32* %99, i32 1)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @S_OK, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %6, align 4
  %106 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = load i32*, i32** %3, align 8
  %108 = call i32 @IOleObject_Unadvise(i32* %107, i32 1)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @OLE_E_NOCONNECTION, align 4
  %111 = icmp eq i32 %109, %110
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* %6, align 4
  %114 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  %115 = load i32*, i32** %3, align 8
  %116 = call i32 @IOleObject_Unadvise(i32* %115, i32 2)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @S_OK, align 4
  %119 = icmp eq i32 %117, %118
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* %6, align 4
  %122 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  %123 = load i32*, i32** %3, align 8
  %124 = call i32 @IOleObject_Release(i32* %123)
  br label %125

125:                                              ; preds = %60, %19
  ret void
}

declare dso_local i32 @IHTMLDocument2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IOleObject_Unadvise(i32*, i32) #1

declare dso_local i32 @IOleObject_EnumAdvise(i32*, i32**) #1

declare dso_local i32 @IOleObject_Advise(i32*, i32*, i32*) #1

declare dso_local i32 @IOleObject_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
