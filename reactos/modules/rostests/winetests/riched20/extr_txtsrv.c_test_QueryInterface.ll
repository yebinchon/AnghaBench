; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_txtsrv.c_test_QueryInterface.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_txtsrv.c_test_QueryInterface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"got wrong ref count: %d\0A\00", align 1
@IID_IRichEditOle = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"ITextServices_QueryInterface: 0x%08x\0A\00", align 1
@IID_ITextDocument = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"IRichEditOle_QueryInterface: 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"ITextDocument_QueryInterface: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_QueryInterface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_QueryInterface() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = call i32 @init_texthost(i32** %1, i32** %2)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  br label %152

12:                                               ; preds = %0
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @get_refcount(i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = bitcast i32** %5 to i8**
  %22 = call i32 @ITextServices_QueryInterface(i32* %20, i32* @IID_IRichEditOle, i8** %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @S_OK, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @get_refcount(i32* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @get_refcount(i32* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = bitcast i32** %6 to i8**
  %45 = call i32 @IRichEditOle_QueryInterface(i32* %43, i32* @IID_ITextDocument, i8** %44)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @S_OK, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %1, align 8
  %53 = call i32 @get_refcount(i32* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, 3
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @get_refcount(i32* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 3
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @ITextDocument_Release(i32* %66)
  %68 = load i32*, i32** %1, align 8
  %69 = call i32 @get_refcount(i32* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, 2
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @IRichEditOle_Release(i32* %75)
  %77 = load i32*, i32** %1, align 8
  %78 = call i32 @get_refcount(i32* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp eq i32 %79, 1
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @ok(i32 %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load i32*, i32** %1, align 8
  %85 = bitcast i32** %7 to i8**
  %86 = call i32 @ITextServices_QueryInterface(i32* %84, i32* @IID_ITextDocument, i8** %85)
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @S_OK, align 4
  %89 = icmp eq i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @ok(i32 %90, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load i32*, i32** %1, align 8
  %94 = call i32 @get_refcount(i32* %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp eq i32 %95, 2
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @ok(i32 %97, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 @get_refcount(i32* %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp eq i32 %102, 2
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @ok(i32 %104, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %105)
  %107 = load i32*, i32** %7, align 8
  %108 = bitcast i32** %4 to i8**
  %109 = call i32 @ITextDocument_QueryInterface(i32* %107, i32* @IID_IRichEditOle, i8** %108)
  store i32 %109, i32* %3, align 4
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* @S_OK, align 4
  %112 = icmp eq i32 %110, %111
  %113 = zext i1 %112 to i32
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @ok(i32 %113, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  %116 = load i32*, i32** %1, align 8
  %117 = call i32 @get_refcount(i32* %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp eq i32 %118, 3
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @ok(i32 %120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %121)
  %123 = load i32*, i32** %7, align 8
  %124 = call i32 @get_refcount(i32* %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp eq i32 %125, 3
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @ok(i32 %127, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %128)
  %130 = load i32*, i32** %4, align 8
  %131 = call i32 @IRichEditOle_Release(i32* %130)
  %132 = load i32*, i32** %1, align 8
  %133 = call i32 @get_refcount(i32* %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp eq i32 %134, 2
  %136 = zext i1 %135 to i32
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @ok(i32 %136, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %137)
  %139 = load i32*, i32** %7, align 8
  %140 = call i32 @ITextDocument_Release(i32* %139)
  %141 = load i32*, i32** %1, align 8
  %142 = call i32 @get_refcount(i32* %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp eq i32 %143, 1
  %145 = zext i1 %144 to i32
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @ok(i32 %145, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %146)
  %148 = load i32*, i32** %1, align 8
  %149 = call i32 @ITextServices_Release(i32* %148)
  %150 = load i32*, i32** %2, align 8
  %151 = call i32 @ITextHost_Release(i32* %150)
  br label %152

152:                                              ; preds = %12, %11
  ret void
}

declare dso_local i32 @init_texthost(i32**, i32**) #1

declare dso_local i32 @get_refcount(i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @ITextServices_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IRichEditOle_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ITextDocument_Release(i32*) #1

declare dso_local i32 @IRichEditOle_Release(i32*) #1

declare dso_local i32 @ITextDocument_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ITextServices_Release(i32*) #1

declare dso_local i32 @ITextHost_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
